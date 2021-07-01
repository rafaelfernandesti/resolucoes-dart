/*
Escreva um programa que sorteie os números necessários para a Mega
Sena.
*/
import 'dart:io';

import 'dart:math';

main(List<String> args) {
  //sem usar um vetor precisa de mais lógica
  var randomizar = new Random();
  int n1 = randomizar.nextInt(60);
  int n2 = randomizar.nextInt(60);
  int n3 = randomizar.nextInt(60);
  int n4 = randomizar.nextInt(60);
  int n5 = randomizar.nextInt(60);
  int n6 = randomizar.nextInt(60);
  //enquanto houver números repetidos, gere outros números.
  while (n1 == n2 ||
      n1 == n3 ||
      n1 == n4 ||
      n1 == n5 ||
      n1 == n6 ||
      n2 == n3 ||
      n2 == n4 ||
      n2 == n5 ||
      n2 == n5 ||
      n3 == n4 ||
      n3 == n5 ||
      n3 == n6 ||
      n4 == n5 ||
      n4 == n6 ||
      n5 == n6) {
    n1 = randomizar.nextInt(60);
    n2 = randomizar.nextInt(60);
    n3 = randomizar.nextInt(60);
    n4 = randomizar.nextInt(60);
    n5 = randomizar.nextInt(60);
    n6 = randomizar.nextInt(60);
  }
  print("Números sorteados:\n$n1, $n2, $n3, $n4, $n5, $n6");
}
