<?php
// myDBR defaults
// 
// If you want to change the default values, do it in /user/defaults.php as this file will be overridden in updates
//

$mydbr_defaults = array (
    'chart' => array (
        'sizeX' => 600,
        'sizeY' => 350,
        'title_color' => 0x00000000, // ImageChart only, ARGB Color 
        'title_font' => 'arialbd.ttf', // ImageChart 
        'title_font_size' => 10, // ImageChart 
        'base_font_size' => 10, // Flash Chart 
        'axis_color' => 0x00000000, // ImageChart only, ARGB Color 
        'axis_font' => 'arial.ttf', // ImageChart 
        'axis_font_size' => 8, // ImageChart 
        'label_color' => 0x00000000, // ImageChart only, ARGB Color 
        'label_font' => 'arial.ttf', // ImageChart 
        'label_font_size' => 8, // ImageChart 
        'legend_default_position' => 'right',
        'legend_default_style' => array(
            'background_color' => 0xFFFFFFFF, 
            'edge_color' => NULL, 
            'rounded_border' => array(
                'TL' => 5, 
                'TR' => 5, 
                'BL' => 5, 
                'BR' => 5
            )
        ),
        'chart_extra_width_with_legend_on_side' => 100,
        'legend_color' => 0x00000000, // ImageChart only, ARGB Color 
        'legend_font' => 'arial.ttf', // ImageChart 
        'legend_font_size' => 8, // ImageChart 
        'legend_font_color' => 8, // ImageChart 
        'background_color' => 0xFFFFFFFF, // 0x00FFFFFF,
        'edge_color' => 0xFF000000,
        'plot_edge_color' => 0xFFFF0001,
        'raised_effect' => 0,
        'padding_top' => 0,
        'grid_color_horizontal' => 0xC0C0C0,
        'grid_color_vertical' => 0xFF000000,
        'colors' => array(
            0x0099CC, 
            0xF6BD0F,
            0x8BBA00,
            0xA66EDD,
            0xF984A1,
            0xCCCC00, 
            0x999999, 
            0xAFD8F8,
            0xFF0000, 
            0x006F00,
            0x0099FF, 
            0xFF66CC, 
            0x669966, 
            0x7C7CB4, 
            0xFF9933, 
            0x9900FF, 
            0x99FFCC, 
            0xCCCCFF, 
            0x669900, 
            0x1941A5, 
        ),
        'alternate_color' => array('0xFFFFFF', '0xECECEC', '0xc0c0c0', '0xc0c0c0'),
        'meter' => array(
            'inner' => 0xF4F4F4,
            'outer' => 0x736F6E,
            'outer2' => 0xD5D5D5,
            'pointer' => 0xB82313,
            'green' => 0x6666ff66,
            'yellow' => 0x66ffff33,
            'red' => 0x66ff6666
        ),
        'softlightning' => true, // For column and bar charts toggles the softlightning effect  
        'always_use_link_menu' => false, // Whether single linked report shows menu or follows link 
        'default_marker' => 16, // GlassSphere2Shape
        'marker_size' => 10, // Marker size for scatter chart
        'autoscale' => array('top'=>0.1, 'bottom'=>0.1, 'zeroaffinity'=>0.5),
        'embed_image' => false,
        'pie_label_format' => '$c->setLabelLayout("SideLayout",-1, 10);$c->setLabelStyle()->setBackground(Transparent, -1, 0);',
        'line_width' => 3,
        'width_per_item' => 110,
        'width_extra' => 80,
        'height_per_item' => 60,
        'height_extra' => 80,
        'gantt' => array(
            'baseline_pattern' => array('color' => 0xe0e0e0, 'border' => 0x808080, 'height' => 8),
            'baseline_text' => 'Baseline',
            'start_of_month_format' => '<*font=arialbd.ttf*>{value|mmm d}',
            'start_of_day_format' => '-{value|d}',
            'start_of_hour_format' => '-{value|hh}',
            'scale' => 7,
            'single_label' => 0
        ),
        'linearmeter' => array(
            'size' => array(300, 110),
            'lower_limit' => 0,
            'upper_limit' => 100,
            'major_tick' => 10,
            'height' => 20,
            'text' => array( 'font' => 'arialbd.ttf', 'size'=>8, 'color'=> 0x00000000),
            'pointer' => array( 'color'=> 0xCCCCCC),
            'zones' => array(
        		array('from' => 0, 'to' => 33, 'color' => 0x4000FF00),
        		array('from' => 33, 'to' => 66, 'color' => 0x40FFFF00),
        		array('from' => 66, 'to' => 100, 'color' => 0x40FF0000),
            )
        ),
        'skip_null_values' => true,
        'radar_transparency' => 30,
        'bubble_transparency' => 30,
    ),
    'pager' => 20, // Default pager page size in rows 
    'automatic_parameters' => array(
        'username' => 'inLogin', // Automatic report parameter containing the username 
        'ip_address' => 'inIPAddress', // Users IP address
        'locale' => 'inLocale', // locale used in reports
        'user_agent' => 'inUseragent', // locale used in reports
        'autoexecute' => 'inAutoexecute', // Automatically executes the report if parameters are ok
        'accept_language' => 'inHTTP_ACCEPT_LANGUAGE', // HTTP_ACCEPT_LANGUAGE
        'referer' => 'inHTTP_REFERER', // HTTP_REFERER
        'export_format' => 'inExportFormat', // export=sql
        'report_url' => 'inAutoReportURL', // Report URL
        // 'sso_extra1' => 'in_SSO_OrganizationID', // optional extra SSO parameters
    ),
    'automatic_parameter_defaults' => array(), // Define extra-parameter values for local users, allows simulating sso_exrta
    'parameters' => array(
        'name_suffix' => ':',
        'empty_numeric_results_null' => false,
        'empty_string_results_null' => false,
        'max_sso_extra_parameters' => 5,
        'allow_post_parameters' => false,
        'daterange_optional' => false,
    ),
    'missing_parameter_style' => 'color: red;',
    'password' => array( 'expiration' => 30, 'length' => 8),
    'autocomplete_max_rows' => 20,
    'header_logo_cell' => 'width: 120px; padding: 1px;',
    'category_colors' => array('00C322','FF7A00','D2006B','0066CC','CC6600', 'A300C3', 'C30061', 'C38500'), // Report category default colors
    'search' => false, // Display search + export by default
    'user_prefs_formatting' => true, // Allow user to have own preferences
    'prefs' => array(
        'allow_user_info_change' => true
    ),
    'proxy' => array(), // for optional proxy parameters
    'baselanguage' =>  'en_US',
    'translate_window' =>  array('width' => 500, 'heigth' => 600),
    'db_connection' => array(
        'translate_db_locale' =>  true, // Determines if locale is used in database operations
        'sql_server_init' => 'SET ANSI_WARNINGS ON;SET ANSI_NULLS ON;',
        'sybase_init' => '',
        'sqlanywhere_init' => '',
        'show_verbose_error_messages_to_all_users' => false,
        'databases' => array(), /* If SQL Editor opens up too slowly due to slow "show databases"-command in MySQL, define the databases here */
        'pooled_connections' => false, /* Connections are pooled, might improve with servers that have slow connections */
        'fix_sqlsrv_field_metadata' => false,
    ),
    'linked_report' => array(
        'autoexecute_when_only_optional' => false,
        'strip_dbr_html_tags_from_links' => true,
    ),
    'active_directory_mydbr_groups' => 'myDBR Groups',
    'active_directory_mydbr_admin_group' => 'myDBR Admins',
    'active_directory_sync_users' => array(),
    'active_directory_synconly_users' => array(),
    'active_directory_recursive_user_groups' => true,
    'updater_users' => array('mydbr_updater'), // Usernames which can use HTTP basic access authentication to call myDBR update URL
    'query_builder_widths' => array('db' => 194, 'table' => 194, 'column' => 373, 'selected' => 454),
    'graphviz_dpi' => 96,
    'export' => array(
        'cache_storage' => 'Memory',
        'export_choises' => array('Excel', 'PDF', 'CSV'),
        'colwidth' => 1,
        'excel' => array(
            'type' => 'xlsx', // xls or xlsx as a default output format
            'line_height' => 12.75,
            'font_width' => 8.3,
            'include_image' => true,
            'utf8_replace' => array(),
            'evaluate_formulas' => false,
            'style' => array(
                'header' => array(
                    'border'=> array(
                        'style' => 'thin',
                        'color' => array( 'rgb' => 'ff6600' )
                    ),
                ),
                'header_top' => array(
                    'borders'=> array(
                        'top' => array(
                            'style' => 'medium',
                            'color' => array( 'rgb' => 'ff6600' )
                        )
                    ),
                ),
                'header_basic' => array(
                    'borders'=> array(
                        'top' => array(
                            'style' => 'medium',
                            'color' => array( 'rgb' => 'ff6600' )
                        ),
                        'bottom' => array(
                            'style' => 'thin',
                            'color' => array( 'rgb' => 'ff6600' )
                        ),
                    ),
                ),
                'title' => array( 'font' => array( 'bold' => true ) ),
                'subtitle' => array( 'font' => array( 'bold' => true ) ),
                'subtotal' => array(
                    'font' => array( 'italic' => true ),
                    'fill' => array(
                        'type' => 'solid',
                        'color' => array('rgb' => 'F0F0F0'),
                    ),
                    'borders'=> array(
                        'top' => array(
                            'style' => 'thin',
                            'color' => array( 'rgb' => '0091A5' )
                        ),
                        'bottom' => array(
                            'style' => 'thin',
                            'color' => array( 'rgb' => '0091A5' )
                        ),
                    ),
                ),
                'footer' => array(
                    'font' => array( 'italic' => true ),
                    'borders' => array(
                        'top' => array(
                            'style' => 'thin',
                            'color' => array( 'rgb' => 'AAAAAA' )
                        ),
                        'bottom' => array(
                            'style' => 'medium',
                            'color' => array( 'rgb' => '0091A5' )
                        ),
                    ),
                ),
                'pageview' => array(
                    'fill' => array(
                        'type' => 'solid',
                        'color' => array( 'rgb' => 'E0E0E0' )
                    ),
                ),    
                'comment' => array(
                    'fill' => array(
                        'type' => 'solid',
                        'color' => array( 'rgb' => 'FFFFCC' )
                    ),
                ),    
            ),
        ),
        'csv' => array(
            'delimiter' => ',',
            'decimal_point' => '.',
            'enclosure' => '"',
            'date_format' => 'Y-m-d', // See http://php.net/manual/en/function.date.php
            'time_format' => 'H:i:s',
            'charset' => 'utf-8', // utf-8, ISO-8859-1
            'line_ending' => "\n",
            'header' => true, // Output the resultset header?
            'enclose_string_with_leading_or_trailing_space' => true,
            'enclose_always' => false,
            'linefeed_between_resultsets' => true,
            'use_BOM_in_UTF' => true
        ),
        'pdf' => array(
            'font' => 'Arial',
            'font_size' => 9,
            'font_width' => 8.5, // Arial 10 default width. Increase this if your PDF output produces columns too narrow
            'column_width_divider' => 5.941,
            'logo' => '', // in user/images
            'logo_width' => 40,
            'image_scale' => 1.25,
            'export_as_png' => true
        ),
        'wkhtmltopdf' => array(
            'command' => 'wkhtmltopdf', 
            'use_as_default' => true,
            'tmp_directory' => null,
            'options' => array(
                'margin-top' => '--margin-top 20',
                'header-spacing' => '--header-spacing 8'
            ),
            'svg_modifications' => array(
                'chartdirector' => array( 
                    array('from' => '/stroke-opacity/', 'to' => 'opacity' )
                ),
               'graphviz' => array( 
                   array('from' => '/<\?xml.*\<svg/s', 'to' => '<svg' )
               ) 
            ),
        ),
        'json' =>  array(
            'force_object' => false
        ),
        'sql' => array(
            'is_admin_only' => true
        ),
        'xml' => array('compatibility_mode' => false),
        'use_PCLZIP' => false,
        'new_window' => false,
    ),
	'favourites_enabled' => true,	
	'mainview' => array('favourites_enabled' => true, 'show_edit' => true, 'show_code' => true, 'show_delete' => true),
	'sql_editor' => array(
        'show_query_builder_when_new' => false,	
        'lines_when_to_use_dashes_in_comment' => 4,
        'max_saved' => array('proc' => 10, 'cmd' => 10 ),
        'autocomplete_mydbr' => true,
        'autocomplete_db' => array(),
    ),
    'file_manager' => array(
        'chmod' => 0644
    ),
    'ioncube_loader' => array(
        'min_recommended_version' => '4.4.0',
        'min_version' => '4.0.0'
    ),
    'param_inline_pairs' => array( 'inStartDate' => 'inEndDate', 'dtFrom' => 'dtTo'),
    'notifications' => array( // if missing features are reminded of
        'chartdirector_missing' => 1,
        'chartdirector_not_default' => 1,
        'wkhtml_missing' => 1,
        'new_version_is_for_admin_only' => false
    ),
    'error_reporting' => E_ALL & ~E_NOTICE & ~E_STRICT,
    'logout' => array( 
        'url_redirect' => null, 
        'url' => 'thankyou.html', 
        'link_text' => '#{MYDBR_AMAIN_LOGOUT}'
    ),
    'google_maps_api_key' => '',
    'google_maps_business' => array('client_id' => null, 'private_key' => null),
    'cookie' => array(
        'host' => null,
        'secure_only' => false
    ),
    'stickyheader' => true,
    'datetimefilter' => true,
    'IE_override_compatibility_view' => true,
    'single_sign_on' => array(
        'url_parameter' => 'url', 
        'allow_admin' => true, 
        'debug_failed_login' => false
    ),
    'remote_server' => array ( 'timeout' => 60, 'skip_ssl_verify' => false ),
    'template' => array ( 'class' => 'template' ),
    'date_time_formats' => array(
        'fi_fi' => array('d' => 'd.m.Y', 't' => 'H.i.s'),
        'de_de' => array('d' => 'd.m.Y', 't' => 'H:i:s'),
        'en_us' => array('d' => 'Y-m-d', 't' => 'h:i:s a'),
        'es_es' => array('d' => 'd/m/Y', 't' => 'H.i.s'),
        'it_it' => array('d' => 'd/m/Y', 't' => 'H.i.s'),
        'nl_nl' => array('d' => 'd-m-Y', 't' => 'H.i.s'),
        'sv_se' => array('d' => 'Y-m-d', 't' => 'H:i:s')
    ),
    'connected_parameters' => array( 'show_empty_queries' => false ),
    'login' => array('autocomplete' => 'on', 'use_salted_hash' => true ),
    'tablesorter' => array(
        'default_sorting' => 'intelligent'
    ), /* intelligent/asc/desc */
    'show_main_without_login' => array( 
        'enabled' => false,
        'show_login_link' => false
    ),
    'scrollcheckbox' => array( 'lang' => array('de', 'es', 'fi', 'it', 'nl','se') ),
    'admin_restrictions' => array(
        'restricted_actions' => array(),
        'limited_admins' => array(), /* Restrictions apply to these usernames */
        'full_admins' => array() /* No limitations to these usernames */
    ),
    'lfcr_post' => array(
        'chr' => array( chr(10), chr(13) ),
        'coded' => array( '#0A', '#0D' ),
        'to' => array( '_ x*_LF_*x_', '_ x*_CR_*x_' )
    ),
    'crosstab' => array( 'tooltip' => true ),
    'password_reset' => array(
        'from' => array( 
            'email' => null, 
            'name' => null
        ),
        'replyto' => array(
            'email' => null, 
            'name' => null
        ),
        'debug' => 0
    ),
    'mail' => array(
        'sleep_after_rows'  => 50,
        'sleep_microsec'    => 1000000, // microseconds
        'debug'             => 0,
        'notify_successful_mail' => 1
    ),
    'https' => array(
        'https_in_use' => null, // If server does not use $_SERVER['https'] and you still use https, set this flag to true to force https.
        'HTTP_X_FORWARDED_PROTO' => true  // use HTTP_X_FORWARDED_PROTO? This is in AWS
    ),
    'header_cache' => array(
      'Expires: Mon, 14 Oct 2002 05:00:00 GMT',              // Date in the past
      'Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT', // always modified
      'Cache-Control: no-store, no-cache, must-revalidate',  // HTTP 1.1
      'Cache-Control: post-check=0, pre-check=0',
      'Pragma: no-cache',                                    // HTTP 1.0
                                                             // 'X-Frame-Options: SAMEORIGIN'
    ),
    'statistics' => array(
        'enabled' => true,
        'start' => 'sp_MyDBR_Stat_AddStart', // If changed, check sp_MyDBR_Stat_AddStart for parameters
        'end' => 'sp_MyDBR_Stat_AddEnd'
    ),
    'date_range' => array(
        'MYDBR_PARAM_DATE_RANGE_SELECT' => 'none',
        'MYDBR_PARAM_DATE_RANGE_TODAY' => array('from' => array('value' => 0, 'type' => 'day'), 'to' => array('value' => 0, 'type' => 'day')),
        'MYDBR_PARAM_DATE_RANGE_YESTERDAY' => array('from' => array('value' => -1, 'type' => 'day'), 'to' => array('value' => -1, 'type' => 'day')),
        'MYDBR_PARAM_DATE_RANGE_1WEEK' => array('from' => array('value' => -6, 'type' => 'day'), 'to' => array('value' => 0, 'type' => 'day')),
        'MYDBR_PARAM_DATE_RANGE_2WEEKS' => array('from' => array('value' => -13, 'type' => 'day'), 'to' => array('value' => 0, 'type' => 'day')),
        'MYDBR_PARAM_DATE_RANGE_THISMONTH' => array('from' => array('value' => 0, 'type' => 'month'), 'to' => array('value' => null, 'type' => 'month')),
        'MYDBR_PARAM_DATE_RANGE_LASTMONTH' => array('from' => array('value' => -1, 'type' => 'month'), 'to' => array('value' => -1, 'type' => 'month')),
        'MYDBR_PARAM_DATE_RANGE_1MONTH' => array('from' => array('value' => -1, 'type' => 'month'), 'to' => array('value' => 0, 'type' => 'month')),
        'MYDBR_PARAM_DATE_RANGE_2MONTHS' => array('from' => array('value' => -2, 'type' => 'month'), 'to' => array('value' => 0, 'type' => 'month')),
        'MYDBR_PARAM_DATE_RANGE_3MONTHS' => array('from' => array('value' => -3, 'type' => 'month'), 'to' => array('value' => 0, 'type' => 'month')),
        'MYDBR_PARAM_DATE_RANGE_QUARTER' => array('from' => array('value' => 0, 'type' => 'quarter'), 'to' => array('value' => null, 'type' => 'quarter')),
        'MYDBR_PARAM_DATE_RANGE_LASTQUARTER' => array('from' => array('value' => -1, 'type' => 'quarter'), 'to' => array('value' => -1, 'type' => 'quarter')),
        'MYDBR_PARAM_DATE_RANGE_THISYEAR' => array('from' => array('value' => -1, 'type' => 'year'), 'to' => array('value' => null, 'type' => 'year')),
        'MYDBR_PARAM_DATE_RANGE_LASTYEAR' => array('from' => array('value' => -1, 'type' => 'year'), 'to' => array('value' => -1, 'type' => 'year')),
        'MYDBR_PARAM_DATE_RANGE_YEAR' => array('from' => array('value' => -1, 'type' => 'year'), 'to' => array('value' => 0, 'type' => 'year')),
    ),
);
// User's definitions for $mydbr_defaults
require_once( dirname(__FILE__).'/user/defaults.php' );