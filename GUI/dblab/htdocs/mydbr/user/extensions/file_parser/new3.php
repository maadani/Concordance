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
	

	echo $fullPath;
	echo '<br/>';

	$dir = 'generated_scripts';
	
	if(!is_dir($dir)){
		mkdir($dir);
	}
	$text = getTextFileContents('G:\\OpenU\\Projects\\sonets\\txt_files\\ShakespeareSonnet1.txt');

	$matches2 = preg_split('/$\R?^/m', $text['content']);

	//print_r($matches2);

	$keys = array_keys($matches2);

	$format = 'insert into(%1$s, %2$s, %3$s, %4$s);' . PHP_EOL;

	foreach($keys as $key){
		echo 'key: ' . $key . '<br/>';
		$words = (preg_split('/\W/', $matches2[$key], -1, PREG_SPLIT_NO_EMPTY));
		foreach($words as $word){
			file_put_contents($dir . '/' . $fullPath . '.sql', sprintf($format, $word, $key, $text['rhyme_scheme'], $text['auther']), FILE_APPEND);
			//echo sprintf($format, $word, $key, $text['rhyme_scheme'], $text['auther']);
			//echo '<br/>';
		}	
	}
				


	
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
