<?php
require_once('TextParserClass.php');

function read_text_file($fullPath){
	
}

function getTextFileContents($fullPath) {
		
	$result = array();
	try{
		$parser = new TextParser('templates');
		//$parser->setLogFile('Logs/parser.log');
		$text = file_get_contents($fullPath);
		echo 'File Contents: <br/>'; 
		print_r($text);
		echo '<br/>';
		
		echo 'File Contents after parsing:<br/>'; 
		$result = $parser->parseText($text);
		print_r($result);
		echo '<br/>';
		
	}catch (Exception $e) {
		echo '<h1>Caught exception:</h1>' . $e->getMessage();
	}
	
	return $result;
}

// In PHP versions earlier than 4.1.0, $HTTP_POST_FILES should be used instead
// of $_FILES.

//$uploaddir = '/var/www/uploads/';
//$uploadfile = $uploaddir . basename($_FILES['userfile']['name']);

echo '<pre>';
// //if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
// //   echo "File is valid, and was successfully uploaded.\n";
// //} else {
// //    echo "Possible file upload attack!\n";
// //}

// //echo basename($_FILES['userfile']['name']);

// $string = '2 lbs (.9 g). fresh salmon #3 filet ';

// $words = preg_split("/\b\s*[!.?()]*/", $string, -1, PREG_SPLIT_NO_EMPTY);

// print_r($words);

// echo '<br/>';

// $words2 = preg_split("/\s+/", $string, -1, PREG_SPLIT_NO_EMPTY);

// print_r($words2);

// echo '<br/>';

// print_r(str_word_count($string, 2, 0123456789));

// $delim = '[.()?!,-]';
// $count = 0;
// $words3 = preg_replace("/($delim)/", ' $1 ', $string, -1 , $count);

// echo 'test3: count = ' . $count . '\t' . $words3 . '<br/>';

// $words4 = preg_replace('/\s\s+/', ' ', $words3);

// $words5 = preg_split("/\s+/", $words4, -1, PREG_SPLIT_NO_EMPTY);

// print_r($words5);

echo '<br/>';

$text = "Lo! in the orient when the gracious light
Lifts up his burning head, each under eye
Doth homage to his new-appearing sight,
Serving with looks his sacred majesty;
And having climb'd the steep-up heavenly hill,
Resembling strong youth in his middle age,
yet mortal looks adore his beauty still,
Attending on his golden pilgrimage;
But when from highmost pitch, with weary car,
Like feeble age, he reeleth from the day,
The eyes, 'fore duteous, now converted are
From his low tract and look another way:
So thou, thyself out-going in thy noon,
Unlook'd on diest, unless thou get a son.";
//$matches = preg_split("/\s+/", $text, -1, PREG_SPLIT_NO_EMPTY);
//print_r($matches);

//echo '<br/>';

//$matches2 = preg_split('/$\R?^/m', $text);

//print_r($matches2);
//echo '<br/>';

//echo 'Here is some more debugging info:';
//print_r($_FILES);

$text = getTextFileContents('G:\\OpenU\\Projects\\sonets\\txt_files\\ShakespeareSonnet1.txt');

$matches2 = preg_split('/$\R?^/m', $text['content']);

print_r($matches2);
echo '<br/>';

print "</pre>";



?>
