<?php
require_once('TextParserClass.php');
require_once('ignoreme_db_connection.php');

function onStart($id, $options, $colInfo){
	echo '<pre>';
}

function onFinish(){
	print "</pre>";
}

function onReadRow($dataRow){	
	read_text_file($dataRow[0]);
}

function read_text_file($fullPath){
	
	$con = mysqli_connect(DB_HOST,DB_USER,DB_PWD,DB_NAME,DB_PORT);
	// Check connection
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}		
		
	$text = getTextFileContents($fullPath);	
	
	$sonnetId = addSonnetToDB($con, $text, $fullPath);
		
	//test($con);
	
	if ($stmt = mysqli_prepare($con, "call concordancedb.sp_add_word(?, ?, ?, ?, ?, ?);")){	
				
		$matches2 = preg_split('/$\R?^/m', $text['content']);	
		$indices = array_keys($matches2);
				
		$outSonnetId = $sonnetId;
		$outWord = '';
		$outLine_index = 0;		
		$numOfWords = 0;
		$numOfWordsInLine = 0;
		$outIsReal = 1;
		mysqli_stmt_bind_param($stmt, "siiiii",$outWord, $outSonnetId, $numOfWords, $outLine_index, $numOfWordsInLine, $outIsReal);

				
		foreach($indices as $index){
			$numOfWordsInLine = 0;
			$outLine_index++;
			echo 'Processing Line #' . ($index+1) . '<br/>';
			$words = preg_split("/(?<=\w|\W)\b\s*/", $matches2[$index], -1, PREG_SPLIT_NO_EMPTY);
			
			// TODO:
			// 1. Remove empty words - Done
			// 2. Use trim on words. - Done
			// 3. Add isRealWord flag for each word. - Done
			// 4. Update word counts.
			// 5. Update Sonnet id. - Done
			foreach($words as $word){
				if(trim($word) != "") {
					$outWord = mysqli_real_escape_string($con, trim($word));
					$numOfWordsInLine++;
					$numOfWords++;
					$outIsReal = ctype_alnum($outWord) === false ? 0 : 1;
					//echo sprintf($format, '"'. $word . '"', $index, $numOfWords,$numOfWordsInLine, ctype_alnum($word) === false ? 'fake' : 'real') . '<br/>';
					// file_put_contents($generatedScriptName, sprintf($format, '"'. $word . '"', $index, $numOfWords,$numOfWordsInLine, ctype_alnum($word) === false ? 'fake' : 'real'), FILE_APPEND);					
					/* execute query */					
					mysqli_stmt_execute($stmt);					
				}
			}	
		}
		
		echo 'Done Processing ' . $numOfWords . ' words<br/>';
	

		/* close statement */
		mysqli_stmt_close($stmt);		
		mysqli_close($con);
	}
	else {
		mysqli_close($con);
		throw new Exception("Problem with prepare stat (1)");
	}
	echo basename($fullPath);
	echo '<br/>';
	
	
	
}

function getTextFileContents($fullPath) {
		
	$result = array();
	try{
		$parser = new TextParser('templates');	
		$text = file_get_contents($fullPath);
		$result = $parser->parseText($text);	
	}catch (Exception $e) {
		echo '<h1>Caught exception:</h1>' . $e->getMessage();
	}	
	return $result;
}

function test($con) {
	$sqlText = "call get_words_for_group(1);";
	if ($stmt = mysqli_prepare($con, "call concordancedb.get_words_for_group(1);")){
		$g = 1;
		//mysqli_stmt_bind_param($stmt, "i",$g);	
		mysqli_stmt_execute($stmt);
		mysqli_stmt_bind_result($stmt, $col1, $col2);
		mysqli_stmt_fetch($stmt);
		echo sprintf("%s\t%s\n", $col1, $col2);
		//mysqli_stmt_fetch($stmt);
		//echo sprintf("%s\t%s\n", $col1, $col2);
		//$result = mysqli_stmt_get_result($stmt);
		//var_dump($result);
		mysqli_stmt_close($stmt);
	}
}


function addSonnetToDB($con, $text, $fullPath) {

	$sqlText = "call concordancedb.sp_add_file(?, ?, ?, ?, ?, ?, ?);";
		
	$result = NULL;
	if ($stmt = mysqli_prepare($con, $sqlText)){
		$name = mysqli_real_escape_string($con, $text['name']);
		$rhyme_scheme = mysqli_real_escape_string($con, $text['rhyme_scheme']);
		$auther = mysqli_real_escape_string($con, $text['auther']);
		$file_name = mysqli_real_escape_string($con, basename($fullPath));
		$full_path = mysqli_real_escape_string($con, $fullPath);
		$seq_name = mysqli_real_escape_string($con, $text['sequenceName']);
		$year = mysqli_real_escape_string($con, $text['year']);
				
		mysqli_stmt_bind_param($stmt, "ssssssi",$name, $rhyme_scheme, $auther, $file_name,
								$full_path, $seq_name, $year);
								
		mysqli_stmt_execute($stmt);	
		mysqli_stmt_bind_result($stmt, $result);		
		mysqli_stmt_fetch($stmt);
		//$result = $col;
		
		mysqli_stmt_close($stmt);
		
	}
	else {
		mysqli_close($con);
		throw new Exception("Problem with prepare stat (2)");
	}
	
	return $result;
}

?>
