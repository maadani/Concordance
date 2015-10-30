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
		
	if ($stmt = mysqli_prepare($con, "call concordancedb.sp_add_word(?, ?, ?, ?, ?);")){	
		$text = getTextFileContents($fullPath);	
		$matches2 = preg_split('/$\R?^/m', $text['content']);	
		$indices = array_keys($matches2);
				
		$outSonnetId = 2;//TODO: update me!!!!!!!
		$outWord = '';
		$outLine_index = 0;		
		$numOfWords = 0;
		$numOfWordsInLine = 0;
		mysqli_stmt_bind_param($stmt, "siiii",$outWord, $outSonnetId, $numOfWords, $outLine_index, $numOfWordsInLine);

		

		
		foreach($indices as $index){
			$numOfWordsInLine = 0;
			$outLine_index++;
			echo 'Processing Line #' . ($index+1) . '<br/>';
			$words = preg_split("/(?<=\w|\W)\b\s*/", $matches2[$index], -1, PREG_SPLIT_NO_EMPTY);
			
			// TODO:
			// 1. Remove empty words
			// 2. Use trim on words.
			// 3. Add isRealWord flag for each word.
			// 4. Update word counts.
			// 5. Update Sonnet id.
			foreach($words as $word){
				$outWord = mysqli_real_escape_string($con, $word);
				$numOfWordsInLine++;
				$numOfWords++;
				//echo sprintf($format, '"'. $word . '"', $index, $numOfWords,$numOfWordsInLine, ctype_alnum($word) === false ? 'fake' : 'real') . '<br/>';
				// file_put_contents($generatedScriptName, sprintf($format, '"'. $word . '"', $index, $numOfWords,$numOfWordsInLine, ctype_alnum($word) === false ? 'fake' : 'real'), FILE_APPEND);					
				/* execute query */
				mysqli_stmt_execute($stmt);									
			}	
		}
		
		echo 'Done Processing ' . $numOfWords . ' words<br/>';
	

		/* close statement */
		mysqli_stmt_close($stmt);		
	}
	else {
		echo 'else<br/>';
	}
	echo basename($fullPath);
	echo '<br/>';
	

	mysqli_close($con);
	
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




?>
