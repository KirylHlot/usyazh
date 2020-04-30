<?
$recepient = trim($_POST["email"]);
$page_title = trim($_POST["page_title"]);
$namet = trim($_POST["name"]);
$phone = trim($_POST["phone"]);
$product = trim($_POST["product"]);
$usloviya = trim($_POST["usloviya"]);
$sub_email = trim($_POST["sub_email"]);
$massa = trim($_POST["massa"]);
$adress = trim($_POST["adress"]);

$message = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <b>Страница:</b> $page_title
	<br><b>Имя:</b> $name
	<br><b>Телефон:</b> $phone
	<br><b>Электронная почта:</b> $sub_email
	<br><b>Продукт:</b> $product
	<br><b>Условия:</b> $usloviya
	<br><b>Масса:</b> $massa
	<br><b>Адрес доставки:</b> $adress
</div>";

$pagetitle = 'Сообщение из формы заказа продукта';
mail($recepient, $pagetitle, $message, "Content-type: text/html; charset=\"UTF-8\";\n From: $recepient");