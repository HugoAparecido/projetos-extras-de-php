<?php
// J = C * i * t
// J = juro
// C = Capital
// i = taxa de juros
// t = Tempo
$capital = 400;
echo "Capital inicial: " . number_format($capital, 2, ",", ".") . "<br>";
$tempo = 4;
echo "Prazo: $tempo <br>";
$taxa_juro = 5 / 100; //0.05
echo "Taxas de juros: $taxa_juro <br>";
$total_juro = $capital * $taxa_juro * $tempo;
echo "Total de juros a ser pago: " . number_format($total_juro, 2, ",", ".") . "<br>";
$montante_pagar = $capital * (($taxa_juro * $tempo) + 1);
echo "Montante a ser pago: " . number_format($montante_pagar, 2, ",", ".") . "<br>";