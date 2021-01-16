<?php

require_once("../../../conexão.php"); 



$id = @$_POST['id']; 
$pag = "produtos";

$query = $pdo->query("SELECT * FROM imagens where id_produto = '" . $id . "' ");
echo "<div class='row'>";
 $res = $query->fetchAll(PDO::FETCH_ASSOC);

                  for ($i=0; $i < count($res); $i++) { 
                      foreach ($res[$i] as $key => $value) {
                      }
                  
      echo "<img class='ml-4 mb-2' src='../../img/" . $res[$i]['imagem'] . "' width='70'><a href='#' onClick='deletarImg(". $res[$i]['id'] .")'><i class='text-danger fas fa-times ml-1'></i></a>";

    }
    echo "</div>";
?>
