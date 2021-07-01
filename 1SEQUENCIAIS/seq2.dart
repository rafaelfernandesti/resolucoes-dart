/*
Escreva um programa em Dart que peça para o usuário fornecer o valor
do comprimento da base e da altura de um triângulo. Os valores dos
comprimentos devem ser números inteiros. O programa deve calcular o
valor da área desse triângulo. O resultado deve ser armazenado em uma
variável. No final, o programa deve exibir ao usuário o valor obtido.
Lembrando que:
Área do triângulo: (𝑏∗ℎ)/2, onde “b” é o comprimento da base e “h” é o
comprimento de altura do triângulo
*/
import 'dart:io';

main(List<String> args) {
  print("Digite o comprimento: ");
  int base = int.parse(stdin.readLineSync()!);
  print("Digite a altura: ");
  int altura = int.parse(stdin.readLineSync()!);
  double area = (base * altura) / 2;
  print("Area do triângulo: $area");
}
