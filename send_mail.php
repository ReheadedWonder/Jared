<?php
$webmaster_email = "jed.az.ers.com";

$feedback_page = "feedback_form.html";
$error_page = "error_message.html";
$thankyou_page = "Users/family/Jared/thankyou.html";

$timely =  $_POST['timely']
$satisfactory = $_POST['satisfactory']
$fair = $_POST['fair']
$easy = $_POST['easy']
$simple = $_POST['simple']
$type = $_POST['type']
$issues = $_POST['issues']
$features = $_POST['features']
$name = $_POST['name'];
$visitor_email =['feedback']

function isInjected($str) {
	$injections = array('(\n+)',
	'(\r+)',
	'(\t+)',
	'(%0A+)',
	'(%0D+)',
	'(%08+)',
	'(%09+)'
	);
	$inject = join('|', $injections);
	$inject = "/$inject/i";
	if(preg_match($inject,$str)) {
		return true;
	}
	else {
		return false;
	}
}

// If the user tries to access this script directly, redirect them to the feedback form,
if (!isset($_REQUEST['email_address'])) {
header( "Location: $feedback_page" );
}

// If the form fields are empty, redirect to the error page.
elseif (empty($email_address) || empty($comments)) {
header( "Location: $error_page" );
}

// If email injection is detected, redirect to the error page.
elseif ( isInjected($email_address) ) {
header( "Location: $error_page" );
}

// If we passed all previous tests, send the email then redirect to the thank you page.
else {
mail( "$webmaster_email", "Feedback Form Results",
  $comments, "From: $email_address" );
header( "Location: $thankyou_page" );
}
?>
