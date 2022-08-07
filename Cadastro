<html> 
<head> 
<meta charset=”utf-8”> 
<title>Cadastre-se</title> 
</head> 
<body>  

<h1 >Faça seu cadastro!</h1> 
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method= "POST" >
<fieldset>
<legend>Dados pessoais</legend> 
<label for="nome">Nome:</label> 
<input type="text" name="nome" >  
<label for="rm">Rm:</label> 
<input type="text" name="rm" size="5" > 
<label for="telefone">Telefone:</label> 
<input type="text"  name="telefone" > 
<label for="turma">Turma:</label> 
<input type="text"  name="turma"> 
</fieldset> 
<button type="submit" name="submit"><strong>Cadastrar</strong></button>
</form> 

</div> 

</body> 

</html> 

<?php

require_once('conn.php'); 

$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 

 if (isset($_POST['submit'])){

    $nome = $_POST['nome']; 
    $rm = $_POST['rm']; 
    $telefone = $_POST['telefone']; 
    $turma = $_POST['turma']; 
    
    $sql = ("SELECT rm FROM cadastro_us WHERE rm = '".$rm."';");
        
    $result = mysqli_query($dbc, $sql);
    
    if (mysqli_num_rows($result) > 0) {
        echo "Este usuário já está cadastrado no sistema.";
    } 
    else {
        $query = mysqli_query($dbc, "INSERT INTO cadastro_us(nome, rm, telefone, turma) VALUES ('$nome', '$rm', '$telefone', '$turma')");
    }
    
    }
 
?> 