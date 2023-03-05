<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    esta é a página do inserir.php
    <?php
    function inserir()
    {
        $PDO = new \PDO("mysql:host=localhost;dbname=empresaX", "root");
        $sql = "INSERT INTO clientes (nome, endereco, telefone) values (:nome, :endereco,:telefone)";
        $nome = $_POST["nome"];
        $endereco = $_POST["endereco"];
        $telefone = $_POST["telefone"];
        $comando = $PDO->prepare($sql);
        $comando->bindParam(':nome', $nome);
        $comando->bindParam(':endereco', $endereco);
        $comando->bindParam(':telefone', $telefone);
        if ($comando->execute()) {
            echo "inseriu OK";
        } else {
            echo "Não inseriu OK";
        }
    }
    inserir();
    //echo $_POST["nome"];
    ?>
</body>

</html>