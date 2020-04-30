<?
$recepient = trim($_POST["email"]);
$page_title = trim($_POST["page_title"]);
$sub_email = trim($_POST["sub_email"]);
$name = trim($_POST["name"]);
$phone = trim($_POST["phone"]);
$topic = trim($_POST["topic"]);
$message_in = trim($_POST["message"]);

$message = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <b>Страница:</b> $page_title
	<br><b>Email:</b> $sub_email
	<br><b>Имя:</b> $name
	<br><b>Телефон:</b> $phone
	<br><b>Тема:</b> $topic
	<br><b>Сообщение:</b> $message_in
</div>";

$pagetitle = 'Сообщение из формы обращений градан';
mail($recepient, $pagetitle, $message, "Content-type: text/html; charset=\"UTF-8\";\n From: $recepient");