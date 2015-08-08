<?php
// SMS Extension - specify which SMS gateway you want to use. 
// 
// 
// Clickatell (www.clickatell.com)
// -------------------------------
// 
// required parameters: user, pass, api_id
// 
// In order to use SMS in myDBR you have to register with clickatell and
// create a HTTP interface.
$mydbr_sms = array( 
	'sender'  => "clickatell",
	'user' 	  => "USER",
	'pass' 	  => "PASS", 
	'api_id'  => "API_ID",
);

?>