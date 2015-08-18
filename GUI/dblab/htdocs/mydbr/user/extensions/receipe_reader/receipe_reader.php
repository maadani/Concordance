<?php

function read_recipe($id, $options, $colInfo){

	echo '<p><div style="text-align:center;">Calling extension function Ext_DummyPre<br>Result Set ID: '.$id .'<br>' ;
	
	echo '$options =<br>';
	var_dump($options);
	echo '<br/>';
	echo 'options: ' . ($options["dbr.read_recipe"]["file_name"]);
	echo '<br/>';
	echo '$colInfo =<br>';
	var_dump($colInfo);
	
	echo '</div></p>';
}

?>