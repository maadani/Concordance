<?php

// Loading user settings
require_once('user/extension_init.php');

// myDBR extensions. Created: 2009-02-10 15:17:04

/*
Plugins are defined in an array containing following items;

Each extension is an array element with key defining the directory where the extension files are

'enabled'          = enable / disable extensions. When disabled the commands are unavailable and the javascript will not be included in <HEAD>
'autoload'         = 1 = availability is based on 'enabled'-flag, 0 = load the extension and js & css for a report only when defined in report metadata and 'enabled' is true
'javascript'       = if the extension needs to load javascript in <HEAD> section of the report, array() if not
'css'              = if the extension needs to load css in <HEAD> section of the report, array() if not
'php'              = php-file to define the extension behavior
'single_pass_call' = Function to be called when the data is available (will be called with id, options and data)
'cmds'             = myDBR commands defined for the extension, must have at least one which's 'cmd' parameter defines the actual command
	                 other cmds array elements define the parameters and if the parameter is obligatory (1) or not (0)
'mydbrextension'   = the extension is an myDBR extension defined in this file. User defined extensions should be declared in user/extensions/extensions.php
'passthrough'      = the extension passes the handled data back to myDBR
*/

// Google Maps extension
if (isset($mydbr_defaults['google_maps_api_key']) && $mydbr_defaults['google_maps_api_key']) {
	$google_maps_key = 'key='.$mydbr_defaults['google_maps_api_key'].'&';
} else {
	$google_maps_key = '';
}

$dbr_extensions = array (
	/*
	Template for new extensions:

	'MY_EXTENSION_NAME' => array(
		'enabled' => true,
		'autoload' => 1,
		'php' => 'MY_EXTENSION_FILE.php', 
		// Define these if you want to do row by row handling
		'row_by_row_initialization' => '',
		'row_by_row_data_row' => '', 
		'row_by_row_finish' => '',
		// Define this if you want to do row by row handling
		'single_pass_call' => 'MY_EXTENSION_FUNCTION_CALL', 
		'javascript' => array('MY_JAVASCRIPT.js'), 
		'css' => array('MY_CSSFILE.css'), 
		'cmds' => array(
			array (
				'cmd' => 'dbr.MY_COMMAND',
				'MY_PARAMETER' => 1,
			),
		),
	),
	*/	
	
  // Enable this to see how extension functions are called
  // This will implement 2 commands (dbr.dummy and dbr.dummy_2nd_cmd) into the mydbr language
  // see implementation files for more info
  // Example report below
/*
	create procedure sp_DBR_Ext_dummy()
	begin
	select 'dbr.dummy', 'first_param';
	select 'dbr.dummy_2nd_cmd', 'whatever';
	select 1 as 'First column', 'First' as 'Second column'
	union
	select 2, 'Second';
	end
*/
  'dummy' => array(
		'enabled' => false,
		'autoload' => 1,
		'php' => 'dummy.php', 
		// Define these if you want to do row by row handling (and set single_pass_call =>'')
		'row_by_row_initialization' => 'Ext_DummyPre',
		'row_by_row_data_row' => 'Ext_DummyRow', 
		'row_by_row_finish' => 'Ext_DummyAfter',
		// Define this if you want to handle data in one pass (Ext_DummyAll) (and set previous three =>'')
		'single_pass_call' => '', 
		'javascript' => array(), 
		'css' => array(),
		'mydbrextension' => 1,
		'cmds' => array(
			array(
				'cmd' => 'dbr.dummy',
				'dummyparam' => 1,
				'2nddummyparam' => 0,
			),
			array(
				'cmd' => 'dbr.dummy_2nd_cmd',
				'dummyparam2' => 1,
			),
		),
	),
  'passthrough' => array(
		'enabled' => true,
		'autoload' => 1,
		'php' => 'passthrough.php', 
		// Passthrough extension only handles the single_pass_call
		'single_pass_call' => 'Ext_Passthrough', 
		'javascript' => array(), 
		'css' => array(),
		'mydbrextension' => 1,
		'cmds' => array(
			array(
				'cmd' => 'dbr.passthrough'
			),
		),
		'passthrough' => true
	),
  'googlemaps' => array(
	'name' => 'Google Maps',
	'enabled' => true,
	'autoload' => 0,
	'php' => 'googlemaps.php', 
	'row_by_row_initialization' => '',
	'row_by_row_data_row' => '', 
	'row_by_row_finish' => '',
	'single_pass_call' => 'Ext_GoogleMaps', 
	'javascript' => array('http[s]://maps.google.com/maps/api/js?'.$google_maps_key.'libraries=visualization&amp;sensor=true','extensions/googlemaps/map.js'), 
	'css' => array(),
	'mydbrextension' => 1,
	'cmds' => array(
			array(
				'cmd' => 'dbr.googlemaps',
				'mode' => 1,	// 'coordinates' | 'address' (options for placing the marker)
				'title' => 0,	// Maps title
				'width' => 0,	// Width
				'height' => 0,	// Height
				'x' => 0,		// X latitude
				'y' => 0,		// Y longitude
				'zoom' => 0,	// Map zoom level
				'map_type' => 0,	// Map mode
			),
			array(
				'cmd' => 'dbr.googlemaps.heatmap',
				'enabled' => 1,
				'options' => 0
			),
		),
	),
	
	'heremaps' => array(
	'name' => 'HERE Maps',
	'enabled' => true,
	'autoload' => 0,
	'php' => 'heremaps.php', 
	'row_by_row_initialization' => '',
	'row_by_row_data_row' => '', 
	'row_by_row_finish' => '',
	'single_pass_call' => 'Ext_HereMaps', 
	'javascript' => array('http://api.maps.nokia.com/2.2.4/jsl.js','extensions/heremaps/heremaps.js'), 
	'css' => array(),
	'mydbrextension' => 1,
	'cmds' => array(
			array(
				'cmd' => 'dbr.heremaps',
				'mode' => 1,	// 'coordinates' | 'address' (options for placing the marker)
				'title' => 0,	// Maps title
				'width' => 0,	// Width
				'height' => 0,	// Height
				'x' => 0,		// X latitude
				'y' => 0,		// Y longitude
				'zoom' => 0,	// Map zoom level
			),
			array(
				'cmd' => 'dbr.heremaps.showtext',
				'enabled' => 1,
				'options' => 0
			),
			// array(
			// 	'cmd' => 'dbr.googlemaps.heatmap',
			// 	'enabled' => 1,
			// 	'options' => 0
			// ),
		),
	),
  
	// Mail extension
	'mail' => array(
		'name' => 'Send report in mail',
		'enabled' => true,
		'autoload' => 1,
		'php' => 'mail.php', 
		'row_by_row_initialization' => '',
		'row_by_row_data_row' => '', 
		'row_by_row_finish' => '',
		'single_pass_call' => 'Ext_Mail', 
		'javascript' => array(), 
		'css' => array(),
		'mydbrextension' => 1,
		'cmds' => array(
			array(
				'cmd' => 'dbr.mail',
				'HTML' => 0,            // 0=plain text, 1=HTML mail
			),
			array(
				'cmd' => 'dbr.mail.sender', // Set senders information, override settings
				'email' => 1,
				'name' => 0,
				'replyto_email' => 0,
				'replyto_name' => 0
			),
			array(
				'cmd' => 'dbr.mail.attach', // Set senders information, override settings
				'name' => 1,
				'report' => 1,
                'ignore_ssl' => 0
			),
			array(
				'cmd' => 'dbr.mail.debug',
				'debug' => 0,            // 0, no debug, 1=debug
			),
			array(
				'cmd' => 'dbr.mail.recipient', // Set senders information, override settings
				'email' => 1,
				'name' => 0,
				'cc_bcc' => 0 // 'cc' if CC, 'bcc' if BCC
			),
			array(
				'cmd' => 'dbr.mail.notify_successful_mail', // Determine if to notify when mail sending was successful
				'noyes' => 1
			),
		),
	),
    'd3' => array(
		'name' => 'd3',
  		'enabled' => true,
  		'autoload' => 0,
  		'php' => 'd3.php', 
  		// Define these if you want to do row by row handling (and set single_pass_call =>'')
  		'row_by_row_initialization' => '',
  		'row_by_row_data_row' => '', 
  		'row_by_row_finish' => '',
  		// Define this if you want to handle data in one pass (Ext_DummyAll) (and set previous three =>'')
  		'single_pass_call' => 'Ext_d3', 
  		'javascript' => array(
            Extension::getBaseURL().'extensions/d3/d3.min.js', 
            Extension::getBaseURL().'extensions/d3/charts/sankey.js'
        ), 
  		'css' => array(Extension::getBaseURL().'extensions/d3/d3.css'),
  		'mydbrextension' => 1,
  		'cmds' => array(
  			array(
  				'cmd' => 'dbr.d3',
  				'chart' => 1,
  				'title' => 0,
  				'x' => 0,
  				'y' => 0,
  			),
  			array(
  				'cmd' => 'dbr.d3.sankey_format',
  				'number' => 1,
  				'suffix' => 1,
  			),            
  		),
  	),

	// Syntaxhighlighter extension
	'syntaxhighlighter' => array(
		'name' => 'Syntax Highlighter',
		'enabled' => true,
		'autoload' => 0,
		'php' => 'syntaxhighlighter.php', 
		'row_by_row_initialization' => '',
		'row_by_row_data_row' => '', 
		'row_by_row_finish' => '',
		'single_pass_call' => 'Ext_SyntaxHighlighter_All', 
		'javascript' => array(Extension::getBaseURL().'extensions/syntaxhighlighter/scripts/sh_core.js?ver=1.0.1', 
							  Extension::getBaseURL().'extensions/syntaxhighlighter/scripts/sh_brush_sql.js?ver=1.0.1', 
							  Extension::getBaseURL().'extensions/syntaxhighlighter/scripts/sh_init.js'), 
		'css' => array(Extension::getBaseURL().'extensions/syntaxhighlighter/styles/sh_core.css',
					   Extension::getBaseURL().'extensions/syntaxhighlighter/styles/sh_theme_default.css'),
		'mydbrextension' => 1,
		'cmds' => array(
			array( 
				'cmd' => 'dbr.showsource'
			)
		),
	),
	'geo' => array(
		'name' => 'MaxMind Geo Server',
		'enabled' => true,
		'autoload' => 1,
		'php' => 'geolocation.php',
		'row_by_row_initialization' => '',
		'row_by_row_data_row' => '',
		'row_by_row_finish' => '',
		'single_pass_call' => 'Geo_GetLocations',
		'javascript' => array(),
		'css' => array(),
		'mydbrextension' => 1,
		'cmds' => array(
			array(
				'cmd' => 'dbr.geoupdate',
			),
		),
	),
	
	
	// SMS extension
	'sms' => array(
		'name' => 'Send results as SMS',
		'enabled' => true,
		'autoload' => 1,
		'php' => 'sms_sender.php', 
		'row_by_row_initialization' => '',
		'row_by_row_data_row' => '', 
		'row_by_row_finish' => '',
		'single_pass_call' => 'Ext_SMS', 
		'javascript' => array(), 
		'css' => array(),
		'mydbrextension' => 1,
		'cmds' => array(
			array(
				'cmd' => 'dbr.sms',
				'simulate' => 0,
			),
			array(
				'cmd' => 'dbr.sms.sender', // Set senders information, override settings
				'from' => 1,
			),
		),
	),
	
	'organization_chart' => array(
		'name' => 'Organization chart',
		'enabled' => true, // Set to false in mdbr
		'autoload' => 0,
		'php' => 'organization_chart.php',
		'row_by_row_initialization' => '',
		'row_by_row_data_row' => '',
		'row_by_row_finish' => '',
		'single_pass_call' => 'Ext_OrgChart',
		'javascript' => array(
			Extension::getBaseURL().'extensions/organization_chart/orgchart.js', 
			Extension::getBaseURL().'extensions/organization_chart/organization_chart.js'
		),
		'css' => array(
			Extension::getBaseURL().'extensions/organization_chart/organization_chart.css'
		),
		'mydbrextension' => 1,
		'cmds' => array(
			array(
				'cmd' => 'dbr.org.chart',
				'options' => 0,
			),
			array(
				'cmd' => 'dbr.org.target',
				'node_id' => 1,
				'weight' => 1,
				'score' => 1,
				'color' => 1,
				'name' => 1,
				'url' => 0,
			),
			array(
				'cmd' => 'dbr.org.chart.export',
				'export' => 0
			),
		)
	),

);

require_once( dirname(__FILE__).'/../user/extensions/extensions.php' );

?>
