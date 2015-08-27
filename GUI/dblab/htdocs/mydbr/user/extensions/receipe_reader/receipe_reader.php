<?php

function read_recipe($id, $options, $colInfo){

	echo '<div align="center"><table style="width:80%">' ;
	
	//echo '$options =<br>';
	//var_dump($options);	
	//echo 'file name: ' . ($options["dbr.read_recipe"]["file_name"]) ;
	//$lines = file('G:\\OpenU\\Projects\\Concordance\\XML_Loader\\txt_files\\' . $options["dbr.read_recipe"]["file_name"] . '.txt');
	//echo '<br/>';
	//$word = stripslashes($options["dbr.read_recipe"]["word"]);
	//echo 'word to look: ' . ($word) ;
	//echo '<br/>';
}

function read_recipe_row($dataRow)
{	
	echo '<tr><td valign="center" style="border: 1px solid black">' . $dataRow[1] . '</td><td valign="center" style="border: 1px solid black; padding: 15px">';
	$word = stripslashes($dataRow[0]);
	
	$lines = file('G:\\OpenU\\Projects\\Concordance\\XML_Loader\\txt_files\\' . $dataRow[1]. '.txt');
	
	if($dataRow[2] - 1 !=  -1){		
		$lines[$dataRow[2] - 1] = stripslashes($lines[$dataRow[2] - 1]);
		echo 'Line ' . ($dataRow[2] - 1) . ': ' . str_ireplace($word,'<mark>' . $word . '</mark>',$lines[$dataRow[2] - 1]);
		echo '<br/>';	
	}
	$lines[$dataRow[2]] = stripslashes($lines[$dataRow[2]]);
	echo 'Line ' . $dataRow[2] . ': ' . str_ireplace($word,'<mark>' . $word . '</mark>',$lines[$dataRow[2]]);
	echo '<br/>';	
	
	if($dataRow[2] + 1 != count($lines)){	
		$lines[$dataRow[2] + 1] = stripslashes($lines[$dataRow[2] + 1]);
		echo 'Line ' . ($dataRow[2] + 1) . ': ' . str_ireplace($word,'<mark>' . $word . '</mark>',$lines[$dataRow[2] + 1]);		
		echo '<br/>';
	}
	
	echo '<br/><b>Link to full text <a href="../recipes/' . $dataRow[1]. '.txt">here</a></b><br/>';
	echo '</td></tr>';
}

function row_by_row_finish()
{	
	echo '</table></div>';
}

?>