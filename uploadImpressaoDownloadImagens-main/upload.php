<?php
session_start();
ob_start();
include_once "conexao.php";
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário upload imagem</title>
</head>

<body>
    <a href="index.php">Listar</a>
    <br>
    <a href="upload.php">Cadastrar</a>
    <br>
    <h2>Upload Foto</h2>
    <?php
    // Receber os dados do formulário
    $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
    // Verificar se o usuário clicou no botão
    if (!empty($dados['SalvarFoto'])) {
        $arquivo = $_FILES['foto_usuario'];
        //var_dump($dados);
        //var_dump($arquivo);
        // Criar a QUERY cadastrar no banco de dados
        $query_usuario = "INSERT INTO usuarios (nome_usuario, email_usuario, foto_usuario, created) VALUES (:nome_usuario, :email_usuario, :foto_usuario, NOW())";
        $cad_usuario = $conn->prepare($query_usuario);
        $cad_usuario->bindParam(':nome_usuario', $dados['nome_usuario'], PDO::PARAM_STR);
        $cad_usuario->bindParam(':email_usuario', $dados['email_usuario']);
        $cad_usuario->bindParam(':foto_usuario', $arquivo['name'], PDO::PARAM_STR);
        $cad_usuario->execute();
        // Verificar se cadastrou com sucesso
        if ($cad_usuario->rowCount()) {
            // Verificar se o usuário está enviando a foto
            if ((isset($arquivo['name'])) and (!empty($arquivo['name']))) {
                // Recuperar o ultimo id inserido no banco de dados
                $ultimo_id = $conn->lastInsertId();
                // Diretório onde o arquivo será salvo
                $diretorio = "imagens/$ultimo_id/";
                // Criar o diretório
                mkdir($diretorio, 0755);
                // Upload do arquivo
                $nome_arquivo = $arquivo['name'];
                move_uploaded_file($arquivo['tmp_name'], $diretorio . $nome_arquivo);
                $_SESSION['mdg'] = "<p style='color: green;'>Usuário e a foto cadastrada com sucesso!</p>";
                header("Location: index.php");
            } else {
                $_SESSION['mdg'] = "<p style='color: green;'>Usuário cadastrado com sucesso!</p>";
                header("Location: index.php");
            }
        } else {
            echo "<p style='color: #f00;'>Erro: Usuário não cadastrado com sucesso!</p>";
        }
    }
    ?>
    <form name="cad_usuario " method="post" action="" enctype="multipart/form-data">
        <label for="">Nome: </label>
        <input type="text" name="nome_usuario" id="nome_usuario" placeholder="Nome completo" autofocus required>
        <br>
        <br>
        <label for="">E-mail: </label>
        <input type="email" name="email_usuario" id="email_usuario" placeholder="O melhor e-mail" required>
        <br>
        <br>
        <label for="">Foto: </label>
        <input type="file" name="foto_usuario" id="foto_usuario">
        <br>
        <br>
        <input type="submit" value="Cadastrar" name="SalvarFoto">
    </form>
</body>

</html>