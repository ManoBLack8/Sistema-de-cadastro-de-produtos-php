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

//CONVERTENDO AS VARIAVEIS POST EM VARIAVEIS COMUM 
$nomep = $_POST['nomep'];
$tamanho = $_POST['tamanho'];
$tamanhove = $_POST['tamanhove'];
$preco = $_POST['preco'];
$cat = $_POST['categoria'];
$desc = $_POST['desc'];
$statu = $_POST['statu'];
$tags = $_POST['tags'];
$peso = $_POST['peso'];
$altura = $_POST['altura'];
$largura = $_POST['largura'];
$comprimento = $_POST['comprimento'];

//COVERTENDO NOME PARA DEIXAR SEM ACENTOS E DEIXAR TODOS OS  CARACTERIS MINUSCULOS
$nome_novo = strtolower( preg_replace("[^a-zA-Z0-9-]", "-", 
        strtr(utf8_decode(trim($nomep)), utf8_decode("áàãâéêíóôõúüñçÁÀÃÂÉÊÍÓÔÕÚÜÑÇ"),
        "aaaaeeiooouuncAAAAEEIOOOUUNC-")) );
$nome_url = preg_replace('/[ -]+/' , '-' , $nome_novo);

$antigo = $_POST['antigo'];
$id = $_POST['txtid2'];

if($nomep == ""){
	echo 'Preencha o Campo Nome!';
	exit();
}





//SCRIPT PARA SUBIR FOTO NO BANCO
$caminho = '../../../img/' .@$_FILES['imagem']['name'];
if (@$_FILES['imagem']['name'] == ""){
  $imagem = "sem-foto.jpg";
}else{
  $imagem = @$_FILES['imagem']['name']; 
}

$imagem_temp = @$_FILES['imagem']['tmp_name']; 

$ext = pathinfo($imagem, PATHINFO_EXTENSION);   
if($ext == 'png' or $ext == 'jpg' or $ext == 'jpeg' or $ext == 'gif' or $ext == 'PNG'){ 
move_uploaded_file($imagem_temp, $caminho);
}else{
	echo 'Extensão de Imagem não permitida!';
	exit();
}

//CASO  A ID NÃO EXISTA  O PROGRAMA IRA ADICIONAR AS INFORMAÇÕES 
if($id == ""){
	$res = $pdo->prepare("INSERT INTO produtos (nome, nome_url, imagem, tamanho, tamanho_veste, valor, descricao, idcategoria, statu, tags, peso, largura, altura, comprimento) VALUES (:nome, :nome_url, :imagem, :tamanho, :tamanho_veste, :valor, :descricao, :idcategoria, :statu, :tags, :peso, :largura, :altura, :comprimento)");
	$res->bindValue(":imagem", $imagem);
}else{

	if($imagem == "sem-foto.jpg"){
		$res = $pdo->prepare("UPDATE produtos SET nome = :nome, nome_url = :nome_url, tamanho = :tamanho, tamanho_veste = :tamanho_veste, valor = :valor, descricao = :descricao, idcategoria = :idcategoria, statu = :statu, tags = :tags, peso = :peso, largura = :largura, altura = :altura, comprimento = :comprimento WHERE id = :id");
	}else{
		$res = $pdo->prepare("UPDATE produtos SET nome = :nome, nome_url = :nome_url, tamanho = :tamanho, tamanho_veste = :tamanho_veste, valor = :valor, descricao = :descricao, idcategoria = :idcategoria, statu = :statu, tags = :tags, peso = :peso, largura = :largura, altura = :altura, comprimento = :comprimento, imagem = :imagem WHERE id = :id");
		$res->bindValue(":imagem", $imagem);
	}

	$res->bindValue(":id", $id);
}

	$res->bindValue(":nome", $nomep);
	$res->bindValue(":nome_url", $nome_url);
	$res->bindValue(":tamanho", $tamanho);
	$res->bindValue(":tamanho_veste", $tamanhove);
	$res->bindValue(":valor", $preco);
	$res->bindValue(":descricao", $desc);
	$res->bindValue(":idcategoria", $cat);
	$res->bindValue(":statu", $statu);
	$res->bindValue(":tags", $tags );
	$res->bindValue(":peso", $peso);
	$res->bindValue(":altura", $altura);
	$res->bindValue(":largura", $largura);
	$res->bindValue(":comprimento", $comprimento);


	
	
	

	$res->execute();


echo 'Salvo com Sucesso!!';

?>