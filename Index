<?php
require_once('conn.php');

session_start();



$error_msg = "";



$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);



if (!$dbc) {
$_SESSION["errorConnect"] = mysqli_connect_error();
}



?>



<html>
<head>
<meta charset="utf-8">
<title>Sistema de gerenciamento de biblioteca</title>
</head>
<body>
<div class="box-parent-login">
<div class="well bg-white box-login">
<h1 class="ls-login-logo">Sistema de Gerenciamento de Biblioteca</h1>
<form role="form">
<fieldset>
<div class="form-group ls-login-user">
<label for="usernome">Nome</label>
<input class="form-control ls-login-bg-user input-lg" id="userNome" type="text" aria-label="Nome" placeholder="Nome">
</div>
<br>
<div class="form-group ls-login-password">
<label for="userPassword">Rm</label>
<input class="form-control ls-login-bg-password input-lg" id="userPassword" type="password" aria-label="Rm" placeholder="Rm">
</div>
<br>
<input type="submit" value="Entrar" class="btn btn-primary btn-lg btn-block">
<p class="txt-center ls-login-signup">Não é cadastrado no nosso sistema?
<a href="/cadastro.php">Cadastre-se agora</a>
</p>
</fieldset>
</form>
</div>
</div>
</body>
</html>