<?
 require_once('config/config.php'); 
?>
<!Doctype html>
<html lang="ru">
 <head>
  <meta charset="utf-8">
  <title>Название проекта</title>
  <meta name="description" content="1-2-3 предложения">
  <meta name="keywords" content="3-10 ключевые слова">
  <meta name="author" content="Mikhalkevich">
  <link href="media/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="media/css/style.css" rel="stylesheet" type="text/css" />
 </head>
 <body>
  <div id="header">
   <h1 id="logotext">Название сайта</h1>
   <a href="/">
   <img src="media/img/logo.png" id="logo">
   </a>
   <br style="clear:both" />
   <div id="auth">
    <a href="/register.php">Регистрация</a> | <a href="/login.php">Вход</a>
   </div>
  </div>
  <div id="menu">
   <a href="/">Главная</a>
   <a href="index.php?url=about">О компании</a>
   <a href="index.php?url=services">Услуги</a>
   <a href="/products.php">Товары</a>
   <a href="index.php?url=contacts">Контакты</a>
  </div>
  <div id="content">
<div class="container">
  <div class="row">
    <div class="col-2">
	<div  class="d-grid gap-2">
<a class="btn btn-outline-secondary" href="#">Link</a>
<a class="btn btn-outline-success" href="#">Link 2</a>
<a class="btn btn-outline-danger" href="#">Link 3</a>
</div>
    </div>
    <div class="col-10 border">
