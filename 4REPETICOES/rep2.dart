/*
Escreva um programa que receba dez números inteiros do teclado e diga
quantos são pares e quantos são ímpares. Faça validação para casos não
previstos (nulos ou textos inseridos, por exemplo).
*/
import 'dart:io';

main(List<String> args) {
  try {
    int pares = 0, impares = 0, inv = 0;
    for (var i = 0; i < 10; i++) {
      print("Digite o ${i + 1}º número: ");
      double? num = double.tryParse(stdin.readLineSync()!);
      if (num == null) {
        print("Número não digitado");
        inv++;
      } else {
        if (num % 2 == 0) {
          pares++;
        } else {
          impares++;
        }
      }
    }
    print("PARES = $pares / IMPARES = $impares / INVÁLIDOS = $inv");
  } catch (e) {
    print("Deu algum erro aí! Programador, dá uma olhada lá!");
  }
}
