<?php
require_once('TextParserClass.php');

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
	

	echo basename($fullPath);
	echo '<br/>';

	$dir = 'generated_scripts';
	
	if(!is_dir($dir)){
		mkdir($dir);
	}
	$generatedScriptName = $dir . '/' . basename($fullPath) . '.sql';
	
	$text = getTextFileContents($fullPath);

	$matches2 = preg_split('/$\R?^/m', $text['content']);	

	$indices = array_keys($matches2);

	$format = 'insert into(%1$s, %2$s, %3$s, %4$s, %5$s);' . PHP_EOL;
	
	$numOfWords = 0;
	$numOfWordsInLine = 0;
	
	foreach($indices as $index){
		$numOfWordsInLine = 0;
		echo 'Processing Line #' . ($index+1) . '<br/>';
		$words = preg_split("/(?<=\w|\W)\b\s*/", $matches2[$index], -1, PREG_SPLIT_NO_EMPTY);
		
		print_r($words);
		// foreach($words as $word){
			// file_put_contents($generatedScriptName, sprintf($format, '"'. $word . '"', $index, $numOfWords,$numOfWordsInLine, ctype_alnum($word)), FILE_APPEND);	
			// $numOfWords++;
			// $numOfWordsInLine++;		
		// }	
	}
	
	echo 'Done Processing ' . $numOfWords . ' words<br/>';
	
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
