/*
Escreva um programa em Dart que peça para o usuário fornecer um o
valor de um produto. O programa deve calcular o preço do produto com
um desconto de 9%.
*/
import 'dart:io';

main(List<String> args) {
  print("Digite o valor do produto: ");
  double valorProduto = double.parse(stdin.readLineSync()!);
  double valorComDesconto = valorProduto - (valorProduto * 9 / 100);
  print(
      "O produto que custa R\$ ${valorProduto.toStringAsFixed(2)} sai a R\$ ${valorComDesconto.toStringAsFixed(2)} com 9% de desconto!");
}
