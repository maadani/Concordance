<?php
require_once('lib/external/PHPMailer/class.phpmailer.php');


/*
	Copyright mydbr.com http://www.mydbr.com
	You are free to modify this file
*/

/*
	This is the function described in extensions.php
	$id: object id in the report
	$options: command options described in extensions.php cmds, contains the parsed values from the report
	$dataIn: Array of: recipient_email,recipient_name,subject,body
	$colInfo: column info - not needed in mail
*/

function Ext_Mail_AddrType($type)
{
	switch (strtolower($type)) {
		case 'cc':
			return 'AddCC';
			break;
		case 'bcc':
			return 'AddBCC';
		default:
			return 'AddAddress';
			break;
	}
}

function Ext_Mail( $id, $options,  $dataIn, $colInfo )
{
	global $mydbr_mail;
	
	$mail_extension = new Extension;

	$errorcnt = 0;
	ob_start();

	$mail = new PHPMailer();
	$mail->IsSMTP(); // telling the class to use SMTP
	$mail->Host = Extension::get_mail_setting('host');
	$mail->Port = Extension::get_mail_setting('port');
	$mail->CharSet = 'UTF-8';
	$mail->SMTPSecure = Extension::get_mail_setting('secure');
	$mail->SMTPKeepAlive = true;                  // SMTP connection will not close after each email sent
	$mail->SMTPDebug = isset($options['dbr.mail.debug']['debug']) ? $options['dbr.mail.debug']['debug'] : Extension::get_mail_setting('debug');
	
	$notify_successful_mail = Extension::get_mail_setting('notify_successful_mail');
	if (isset($options['dbr.mail.notify_successful_mail']['noyes'])) {
		$notify_successful_mail = $options['dbr.mail.notify_successful_mail']['noyes'];
	}
	// Is the email address defined in the report?
	if (isset($options['dbr.mail.sender']['email'])) {
		$email = $options['dbr.mail.sender']['email'];
		$name = isset($options['dbr.mail.sender']['name']) ? $options['dbr.mail.sender']['name'] : '';
		$replyto_email = isset($options['dbr.mail.sender']['replyto_email']) ? $options['dbr.mail.sender']['replyto_email'] : $email;
		$replyto_name = isset($options['dbr.mail.sender']['replyto_name']) ? $options['dbr.mail.sender']['replyto_name'] : $name;
	} else {
		$email = Extension::get_mail_setting('from_email');
		$name = Extension::get_mail_setting('from_name');
		$replyto_email = Extension::get_mail_setting('replyto_email');
		$replyto_name = Extension::get_mail_setting('replyto_name');
	}
	$mail->SetFrom($email, $name);
	$mail->AddReplyTo($replyto_email, $replyto_name);
	
	// Enable SMTP authentication?
	$mail->SMTPAuth      = Extension::get_mail_setting('secure');

	$username = Extension::get_mail_setting('username');
	$password = Extension::get_mail_setting('password');
	if ($username && $password) {
		$mail->Username = $username;
		$mail->Password = $password;
	}
	if (isset($options['dbr.mail.attach']) && isset($options['dbr.mail.attach']['report'])) {
        $ignore_ssl = false;
		if (is_array($options['dbr.mail.attach']['report'])) {
			for ($i=0; $i < sizeof($options['dbr.mail.attach']['report']); $i++) { 
                if (isset($options['dbr.mail.attach']['ignore_ssl'])) {
                    $ignore_ssl = $options['dbr.mail.attach']['ignore_ssl'];
                }
				$mail_extension->mail_add_report_attachments($mail, $options['dbr.mail.attach']['name'][$i], $options['dbr.mail.attach']['report'][$i], $ignore_ssl );
			}
		} else {
            $ignore_ssl = isset($options['dbr.mail.attach']['ignore_ssl']) ? $options['dbr.mail.attach']['ignore_ssl'] : false;
            
			$mail_extension->mail_add_report_attachments($mail, $options['dbr.mail.attach']['name'], $options['dbr.mail.attach']['report'], $ignore_ssl );
		}
	}
	
	for ($i=0; $i<sizeof($dataIn) ; $i++) {	// send the mail one by one
		// Avoiding to overload the server
		set_time_limit(30); // sets (or resets) maximum  execution time to 30 seconds
		
		// Do not send mails too fast (mail server might refuse to send the mails)
		if ( ($i % Extension::get_mail_setting('sleep_after_rows')) == 0) {
			usleep(Extension::get_mail_setting('sleep_microsec'));
		}
		$mail->Subject = $dataIn[$i][2];

		if (isset($options['dbr.mail.recipient'])) {
			if (is_array($options['dbr.mail.recipient']['email'])) {
				for ($recip=0; $recip < sizeof($options['dbr.mail.recipient']['email']); $recip++) { 
					$value = $options['dbr.mail.recipient'];
					$addr_type = Ext_Mail_AddrType($options['dbr.mail.recipient']['cc_bcc'][$recip]);
					$mail->$addr_type($value['email'][$recip], $value['name'][$recip]);
				}
			} else {
				$value = $options['dbr.mail.recipient'];
				$addr_type = Ext_Mail_AddrType($value['cc_bcc']);
				$mail->$addr_type($value['email'], $value['name']);
			}
		}

		if ($dataIn[$i][0]) {
			$mail->AddAddress($dataIn[$i][0], $dataIn[$i][1]);
		}
		
		$body = (isset($dataIn[$i][3]) ? $dataIn[$i][3] : '');
		
		if (isset($options['dbr.mail']['HTML']) && $options['dbr.mail']['HTML']==1) {
			/* Get HTML content */
			$record = $mail_extension->get_recording();
			$mail->AltBody = '';
			if ($record) {
				/* Attach images as attachments */
				$record = $mail_extension->mail_add_attachments( $record, $mail );
				
				/* Outlook uses Word HTML parser which does not support multiple css classes -> fixing it */
				$replace_from = array(
					'class="cell align_l', 
					'class="cell align_r', 
					'class="cell_header align_l',
					'class="cell_header align_r'
				);
				$replace_to = array(
					'class="cell_left align_l', 
					'class="cell_right align_r',
					'class="cell_header_left align_l',
					'class="cell_header_right align_r'
				);
				$record = str_replace($replace_from, $replace_to, $record);
				
				/* Apply CSS styles to mail elements */
				$hdr = file_get_contents('extensions/mail/mail_header.html');
				$user_mail_css = 'user/mail.css';
				if (file_exists($user_mail_css)) {
					$hdr .= file_get_contents($user_mail_css);
				}
				$hdr .= chr(10).'</style>'.chr(10).'</head>'.chr(10).'<body>';
				$mail->MsgHTML($hdr.$record.'</body></html>');
			} else {
				$mail->MsgHTML(nl2br($body));
			}
		} else {
			$mail->Body = $body;
			$mail->IsHTML(false);
		}
		if (!$mail->Send()) {
			$errorcnt++;
		}
		$mail->ClearAddresses();
	}
	$mail->SmtpClose();
	$mail_extension->mail_clear_attachments();


	$captured = ob_get_contents();
	ob_end_clean();

	if ($errorcnt == 0) {
		$errortxt = 'no errors';
	} else {
		$errortxt = $errorcnt.' errors';
	}
	if ($mail->SMTPDebug>0) {
		echo '<div class="box debug_code"><pre>'.
			'<b>SMTP Debug</b><br><br>'.
			($captured ? htmlentities($captured) : 'No debug data available').
		'</pre></div>';
	}
	if ($notify_successful_mail) {
		echo '<div class="comment">Sent '.sizeof($dataIn).' mail'.(sizeof($dataIn)>1 ? 's' : '').' with '. $errortxt .'</div>';
	}
}
?>