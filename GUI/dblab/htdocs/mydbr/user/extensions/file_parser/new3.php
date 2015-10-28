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
	
	//"call sp_DBR_get_locations_for_group(0)"	
	if ($stmt = mysqli_prepare($con, "call concordancedb.test1(?);")){
		/* bind parameters for markers */		

		$text = getTextFileContents($fullPath);	

		$matches2 = preg_split('/$\R?^/m', $text['content']);	

		$indices = array_keys($matches2);
		
		// file_put_contents($generatedScriptName, sprintf('call sp_add_sonnet_to_db(%1$s, %2$s, %3$s, %4$s, %5$s);', $text['name'], $text['auther'], $text['year'], $text['sequenceName'], $text['rhyme_scheme']) . PHP_EOL, FILE_APPEND);		
		
		$format = 'call sp_add_word_to_db(%1$s, %2$s, %3$s, %4$s, %5$s);' . PHP_EOL;
		$outGroup = 0;
		$outWord = '';
		$outRecipe_name = '';
		$outLine_index = 0;
		$outSection = '';
		$numOfWords = 0;
		$numOfWordsInLine = 0;
		mysqli_stmt_bind_param($stmt, "i", $numOfWords);

		

		
		foreach($indices as $index){
			$numOfWordsInLine = 0;
			echo 'Processing Line #' . ($index+1) . '<br/>';
			$words = preg_split("/(?<=\w|\W)\b\s*/", $matches2[$index], -1, PREG_SPLIT_NO_EMPTY);
			
			// print_r($words);
			foreach($words as $word){
				echo sprintf($format, '"'. $word . '"', $index, $numOfWords,$numOfWordsInLine, ctype_alnum($word) === false ? 'fake' : 'real') . '<br/>';
				// file_put_contents($generatedScriptName, sprintf($format, '"'. $word . '"', $index, $numOfWords,$numOfWordsInLine, ctype_alnum($word) === false ? 'fake' : 'real'), FILE_APPEND);					
				/* execute query */
				mysqli_stmt_execute($stmt);						
				$numOfWords++;
				$numOfWordsInLine++;		
			}	
		}
		
		echo 'Done Processing ' . $numOfWords . ' words<br/>';
	


		// /* bind result variables */
		// mysqli_stmt_bind_result($stmt, $outGroup, $outWord, $outRecipe_name, $outLine_index, $outSection);

		// echo '$outGroup, $outWord, $outRecipe_name, $outLine_index, $outSection<br/>';
		// /* fetch values */
		// while (mysqli_stmt_fetch($stmt)) {
			// printf ("%s\t%s\t%s\t%s\t%s\n", $outGroup, $outWord, $outRecipe_name, $outLine_index, $outSection);
		// }		

		/* close statement */
		mysqli_stmt_close($stmt);		
	}
	else {
		echo 'else<br/>';
	}
	echo basename($fullPath);
	echo '<br/>';

	// $dir = 'generated_scripts';
	
	// if(!is_dir($dir)){
		// mkdir($dir);
	// }
	// $generatedScriptName = $dir . '/' . basename($fullPath) . '.sql';
	

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
