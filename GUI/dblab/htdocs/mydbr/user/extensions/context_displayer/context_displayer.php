<?php



function onContextDisplayerStart($id, $options, $colInfo){	
}

function onContextDisplayerFinish(){
	echo '</table></div>';
}

function onContextDisplayerReadRow($dataRow){	

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
	
}

/*
	This is the function described in extensions.php
	$id: object id in the report
	$options: command options described in extensions.php cmds, contains the parsed values from the report
	$dataIn: the 2-dim data array in
	$colInfo: column info - not needed in Google Maps
*/
function foo ($id, $options,  $dataIn, $colInfo){
		
	$org_word_id = intval($options["dbr.context_displayer"]["org_word_id"]);	
	$sonnet_name = null;
	$section_id = 0;	
	$line_index = 0;	
	$current_word_id = 0;
	
	$is_sonnet_changed = TRUE;
	$is_section_changed = TRUE;
	$is_word_changed = TRUE;
	$is_first_run = TRUE;	
	
	for ($i=0; $i<sizeof($dataIn) ; $i++) {		
			
		$is_sonnet_changed = $sonnet_name != $dataIn[$i][0];
		$is_section_changed = $section_id != $dataIn[$i][1] || $is_sonnet_changed;
		$is_line_changed = $line_index != $dataIn[$i][2] || $is_section_changed;		
		
		if(($is_sonnet_changed || $is_section_changed) && !$is_first_run){		
			echo '</td></tr>';
			echo '</table></div>';			
		}
		
		if($is_sonnet_changed) {
			if(!$is_first_run){
				echo '<br/>';
			}
			echo '<h1 align="center"> Sonnet ' . $dataIn[$i][0] . '</h1><br/>';		
			$sonnet_name = $dataIn[$i][0];
		}
			
		if($is_section_changed){		
			if(!$is_sonnet_changed) {	
				echo '</td></tr>';
				echo '</table></div>';
			}
			$section_id = $dataIn[$i][1];			
			$line_index = 0;
			echo '<div align="center"><table style="width:80%">';
			echo '<tr><td valign="center" style="border: 1px solid black">';			
			echo $section_id;
			echo '</td><td style="border: 1px solid black">';			
		}
		
		
		if($is_line_changed){
			if(!$is_section_changed) {
				echo '<br/>';
			}
			$line_index = $dataIn[$i][2];
		}
		if($org_word_id == $dataIn[$i][4]) {
			echo '<mark>' . $dataIn[$i][5] . '</mark> ';
		}
		else {
			echo $dataIn[$i][5] . ' ';
		}
				
		$is_first_run = FALSE;
	}
	
	echo '</td></tr>';
	echo '</table></div>';
}

?>
