<?
$recepient = trim($_POST["email"]);
$page_title = trim($_POST["page_title"]);
$sub_email = trim($_POST["sub_email"]);

$message = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <b>Страница:</b> $page_title
	<br><b>Email для рассылки:</b> $sub_email
</div>";

$pagetitle = 'Новый email для рассылки';
mail($recepient, $pagetitle, $message, "Content-type: text/html; charset=\"UTF-8\";\n From: $recepient");