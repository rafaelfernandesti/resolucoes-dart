/*
Escreva um programa em Dart que peça para o usuário fornecer um valor
qualquer que deve ser um número real. O programa deve exibir esse
número três vezes. Na primeira, deve ser exibido o número sem nenhuma
formatação. Na segunda, o número deve ser formatado para mostrar duas
casas decimais. Na terceira, o número deve ser formatado para mostrar
três casas decimais.
*/
import 'dart:io';

main(List<String> args) {
  print("Digite um número qualquer com separador decimal (.): ");
  double numero = double.parse(stdin.readLineSync()!);
  print("Número digitado: $numero");
  print("Número digitado (duas casas decimais): ${numero.toStringAsFixed(2)}");
  print("Número digitado (três casas decimais): ${numero.toStringAsFixed(3)}");
}
