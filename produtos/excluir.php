<?php
$nome = 'Encontrei lá! brecho!';
$telefone = '65 99685-3756';
$email = 'encontrei.labrecho@gmail.com'; 



//VARIAVEIS BANCO DE DADOS
$servidor = 'localhost';
$usuario = 'root';
$senha = '';
$banco = 'loja';
   
date_default_timezone_set('America/Cuiaba');

try{
   $pdo = new PDO("mysql:dbname=$banco;host=$servidor;charset=utf8", "$usuario","$senha");
} catch (Exception $e){
   echo "erro ao conectar com banco de dados" .  $e;
}
//DELETAR PRODUTO DO BANCO DE DADOS
$id = $_POST['id'];

$pdo->query("DELETE from produtos WHERE id = '$id'");

echo 'Excluído com Sucesso!!';

?>