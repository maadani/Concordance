<?php

$lines = array();

function read_recipe($id, $options, $colInfo){

	global $lines;
	echo '<p><div align="center">Calling extension function Ext_DummyPre<br>Result Set ID: '.$id .'<br>' ;
	
	//echo '$options =<br>';
	//var_dump($options);
	echo '<br/>';
	echo 'file name: ' . ($options["dbr.read_recipe"]["file_name"]);
	$lines = file('G:\\OpenU\\Projects\\Concordance\\XML_Loader\\txt_files\\' . $options["dbr.read_recipe"]["file_name"] . '.txt');
	echo '<br/>';
	echo 'Num of lines: ' . count($lines);
	echo '<br/>';
}

function read_recipe_row($dataRow)
{	
	global $lines;
	
	if($dataRow[3] - 1 !=  -1){
		echo $lines[$dataRow[3] - 1];
		echo '<br/>';	
	}
	echo '<mark>' . $lines[$dataRow[3]] . '</mark>'; 
	echo '<br/>';	
	
	if($dataRow[3] + 1 != count($lines)){
		echo $lines[$dataRow[3] + 1];
		echo '<br/>';
	}
	echo '<br/>';	
	echo '<br/>';
	echo '<br/>';
	echo '<br/>';
}

function row_by_row_finish()
{	
	echo '</div></p>';
}

?>