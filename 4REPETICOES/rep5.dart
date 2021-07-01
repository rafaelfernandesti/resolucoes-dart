/*
A série de Fibonacci é formada pela seguinte sequência: 1, 1, 2, 3, 5, 8,
13, 21, 34, 55,...etc. Esta série se caracteriza pela soma de um termo
posterior com o seu anterior subsequente. Escreva código que gere e
apresente a série de Fibonacci até um número de termos definido pelo
usuário.
*/
import 'dart:io';

main(List<String> args) {
  int fib = 0;
  int penultimo = 0;
  int ultimo = 1;
  int atual = ultimo + penultimo;
  print("Quer ver o Fibonacci até que termo? ");
  fib = int.parse(stdin.readLineSync()!);
  print("SEQUENCIA DE FIBONACCI:\n0\n1");
  for (var i = 2; i < fib; i++) {
    print("${atual} ");
    penultimo = ultimo;
    ultimo = atual;
    atual = ultimo + penultimo;
  }
}
