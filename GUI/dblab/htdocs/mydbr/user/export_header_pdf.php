<?php
// Will produce the header for wkhtmltopdf-export
if (!defined('ABS_PATH')) {
	define ( "ABS_PATH", dirname( dirname( __FILE__ ) ) );
}

require ABS_PATH.'/defaults.php';

$protocol = ( isset( $_SERVER['HTTPS'] ) && $_SERVER['HTTPS'] && strtolower($_SERVER['HTTPS']) != 'off' ) ? 'https' : 'http';
if (isset($mydbr_defaults['https']['https_in_use']) && $mydbr_defaults['https']['https_in_use']) $protocol = 'https';
if ($mydbr_defaults['https']['HTTP_X_FORWARDED_PROTO'] || (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') ) $protocol = 'https';
if (isset($_SERVER['SERVER_PORT']) && ('443'==$_SERVER['SERVER_PORT'])) $protocol = 'https';

$protocol = 'http';
$path = substr($_SERVER['SCRIPT_NAME'], 0, strrpos($_SERVER['SCRIPT_NAME'], "/")+1);
$url_base = $protocol . '://' . $_SERVER['HTTP_HOST'] . $path;

if (isset($mydbr_defaults['export']['pdf']['logo']) && $mydbr_defaults['export']['pdf']['logo']!='') {
    $logo = '<img style="display:block;" src="'.$url_base.'images/'.$mydbr_defaults['export']['pdf']['logo'].'" alt="logo">';
} else {
    $logo = '<img style="display:block;" src="'.$url_base.'/images/apppic_small.jpg" width="47" height="31" alt="logo">';
}
$header = <<<EOF
<!DOCTYPE html>
<html>
<head>
<script>
function subst() {
  var vars={};
  var x=document.location.search.substring(1).split('&');
  for(var i in x) {var z=x[i].split('=',2);vars[z[0]] = unescape(z[1]);}
  var x=['frompage','topage','page','time','date'];
  for(var i in x) {
    var y = document.getElementsByClassName(x[i]);
    for(var j=0; j<y.length; ++j) y[j].textContent = vars[x[i]];
  }
}
</script></head><body style="border:0; margin: 0;" onload="subst()">
<table style="border-bottom: 1px solid #444; width: 100%; font-size:11px;color:#444;">
  <tr>
	<td style="text-align:left;width:47px">
EOF;
$header .= $logo;
$header .= <<<EOF
	</td>	
	<td style="text-align:left">
		<span class="date"></span>&nbsp;<span class="time"></span>
		<span class="title"></span>
	</td>
    <td style="text-align:right">
      <span class="page"></span>/<span class="topage"></span>
    </td>
  </tr>
</table>
</body></html>
EOF;

echo $header;