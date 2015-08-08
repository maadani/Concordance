<?php
/*
	Copyright mydbr.com 2007-2015 http://www.mydbr.com
	You are free to modify this file
*/



function Ext_Passthrough($id, $options,  $dataIn, $colInfo )
{
	/*
		Do your stuff with the $dataIn which contains the data from the database.
	*/

	// This is the data we'll send back to myDBR
	$data = array(
		0 => array('First', 10),
		1 => array('Second', 20),
		2 => array('Third', 40)
	);

	// Define the columns: name & datatype
	// Datatype needs to be one of following generic datatypes: char, float, int, datetime, date, time
	$columns = array(
		0 => array('name' => 'Sector', 'datatype' => 'char'),
		1 => array('name' => 'Value[v]', 'datatype' => 'int')
	);

	$data = array(
		0 => array('ABC', 'Q1', 10),
		1 => array('ABC', 'Q2', 20),
		2 => array('Third', 'Q1', 40)
	);

	$columns = array(
		0 => array('name' => 'Sector', 'datatype' => 'char'),
		1 => array('name' => 'Quarter', 'datatype' => 'char'),
		2 => array('name' => 'Value[v]', 'datatype' => 'int')
	);


	
	// Pass it back to myDBR
	Extension::result_set($data, $columns);	
}

?>