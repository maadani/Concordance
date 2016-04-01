<?php



function onIndexDisplayerStart($id, $options, $colInfo){
	
}

function onIndexDisplayerFinish(){
	echo '</table></div>';
}

function onIndexDisplayerReadRow($dataRow){	

	$sonnet_name = null;
$section_id = 0;

	if($sonnet_name != $dataRow[0]){
	
		if($sonnet_name != null) {
			echo '</table></div>';
		}
		echo '<h1> Sonnet ' . $dataRow[0] . '</h1><br/>';		
		echo '<div align="center"><table style="width:80%">';
		$sonnet_name = $dataRow[0];
	}
	
	if($section_id != $dataRow[1]) {
	
		if($section_id == 0) {
			echo '</table></div>';
		}		
	}
	
	
	//echo '<tr><td valign="center" style="border: 1px solid black">';
	//echo var_dump($dataRow);
	//echo '</td></tr>';//<td valign="center" style="border: 1px solid black; padding: 15px">';

	//read_text_file($dataRow[0]);
}

/*
	This is the function described in extensions.php
	$id: object id in the report
	$options: command options described in extensions.php cmds, contains the parsed values from the report
	$dataIn: the 2-dim data array in
	$colInfo: column info - not needed in Google Maps
*/
function displayIndeces ($id, $options,  $dataIn, $colInfo){
	
	$last_word_id = 0;
	
	$is_word_changed = TRUE;
	$is_first_run = TRUE;	
	
	for ($i=0; $i<sizeof($dataIn) ; $i++) {		
			
		$is_word_changed = $last_word_id != $dataIn[$i][0];
			
		
		 if($is_word_changed) {
			if(!$is_first_run){
				echo '</table></div>';
				echo '<br/>';
			}
			echo '<h2 align="center">' . $dataIn[$i][1] . '</h2><br/>';					
			echo '<div align="center"><table style="width:80%">';
			echo '<tr><td style="font-weight:bold; border: 1px solid black; text-align:center">';
			echo 'line number';
			echo '</td><td style="font-weight:bold; border: 1px solid black; text-align:center">';
			echo 'word pos in line';
			echo '</td><td style="font-weight:bold; border: 1px solid black; text-align:center">';
			echo 'word pos in sonnet';
			echo '</td><td style="font-weight:bold; border: 1px solid black; text-align:center">';
			echo 'section index';
			echo '</td><td style="font-weight:bold; border: 1px solid black; text-align:center">';
			echo 'Sonnet';
			echo '</td></tr>';			
		}
	
		echo '<tr><td style="border: 1px solid black; text-align:center">';	
		echo $dataIn[$i][2];
		echo '</td><td style="border: 1px solid black; text-align:center">';
		echo $dataIn[$i][3];
		echo '</td><td style="border: 1px solid black; text-align:center">';
		echo $dataIn[$i][4];
		echo '</td><td style="border: 1px solid black; text-align:center">';
		echo $dataIn[$i][5];
		echo '</td><td style="border: 1px solid black; text-align:center">';
		echo $dataIn[$i][7];
		echo '</td></tr>';		
		$is_first_run = FALSE;
		$last_word_id = $dataIn[$i][0];
	}
		
	echo '</table></div>';			
}

// function handle_item($dataRow, $key, $section)
// {
	// if($section == 0){
		// echo '<div align="center"><table style="width:80%">' ;
	// }
	// if($section != 
    // $item1 = "$prefix: $item1";
// }

?>
