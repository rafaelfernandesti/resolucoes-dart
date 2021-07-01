/*Escreva um programa em Dart que peça para o usuário fornecer o valor
de dois números inteiros. O programa deve usar o valor dos números para
calcular o valor das quatro operações básicas (adição, subtração,
multiplicação e divisão). O resultado de cada operação deve ser
armazenado em uma variável diferente. No final, o programa deve exibir
ao usuário o resultado de cada operação.*/
import 'dart:io';

main(List<String> args) {
  print("Digite o primeiro valor: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo valor: ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("$num1 + $num2 = ${(num1 + num2)}");
  print("$num1 - $num2 = ${(num1 - num2)}");
  print("$num1 * $num2 = ${(num1 * num2)}");
  print("$num1 / $num2 = ${(num1 / num2)}");
}
