<?php
require_once('TextParserClass.php');

function read_text_file($fullPath){
	
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

echo '<pre>';
// //if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
// //   echo "File is valid, and was successfully uploaded.\n";
// //} else {
// //    echo "Possible file upload attack!\n";
// //}

// //echo basename($_FILES['userfile']['name']);


echo '<br/>';

$text = getTextFileContents('G:\\OpenU\\Projects\\sonets\\txt_files\\ShakespeareSonnet1.txt');

$matches2 = preg_split('/$\R?^/m', $text['content']);

//print_r($matches2);

$keys = array_keys($matches2);

$format = 'insert into(%1$s, %2$s, %3$s, %4$s);';

foreach($keys as $key){
	echo 'key: ' . $key . '<br/>';
	$words = (preg_split('/\W/', $matches2[$key], -1, PREG_SPLIT_NO_EMPTY));
	foreach($words as $word){
		echo sprintf($format, $word, $key, $text['rhyme_scheme'], $text['auther']);
		echo '<br/>';
	}	
}
			


print "</pre>";


?>
