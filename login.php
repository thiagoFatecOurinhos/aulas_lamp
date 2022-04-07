<?php

$loginRecebido = $_POST["loginDigitado"];
$senhaRecebida = $_POST["senhaDigitada"];

print("Usuario: " . $loginRecebido);
print("<BR>");
print("Senha: " . $senhaRecebida);

# Etapa de validacao dos dados de login no banco de dados
$DB_NAME="sistema";
$TB_NAME="login";
$DB_USER="usuario";
$DB_PASS="senha";
$DB_HOST="localhost";

$conexao  = mysqli_connect($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
$query    = "SELECT COUNT(*) FROM $TB_NAME WHERE email = '$loginRecebido' AND password = '$senhaRecebida'";
$consulta = mysqli_query($conexao, $query);
$resposta = mysqli_fetch_array($consulta, MYSQLI_NUM);

if($resposta[0])
  print("<BR><BR>LOGIN OK");
else
  print("<BR><BR>ERRO AO LOGAR");


?>
