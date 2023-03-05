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
    function listar()
    {
        $PDO = new \PDO("mysql:host=localhost;dbname=empresaX", "root");
        echo "<table border=1><tr><td>Nome<td>Endereço<td>Telefone</tr>";
        $sql = "select * from clientes";
        foreach ($PDO->query($sql) as $row) {
            echo "<tr><td>";
            echo $row['nome'];
            echo "<td>";
            echo $row['endereco'];
            echo "<td>";
            echo $row['telefone'];
        }
        echo "</table>";
    }
    listar();
    //echo $_POST["nome"];
    ?>
</body>

</html>