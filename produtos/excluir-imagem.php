<?php

require_once("../../../conexão.php"); 

$id = $_POST['id_foto'];

$pdo->query("DELETE from imagens WHERE id = '$id'");

echo 'Excluído com Sucesso!!';

?>