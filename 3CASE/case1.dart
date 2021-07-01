/*
Escreva um programa em Dart para permitir ao usuário escolher a
resposta correta de uma questão.
*/
import 'dart:io';

main(List<String> args) {
  print("Qual a capital do Brasil?");
  print("a) Amazonas\nb) Bahia\nc) Brasília\nd) Rio de Janeiro\ne) São Paulo");
  print("Digite a opção correta: ");
  String resp = stdin.readLineSync()!;
  resp = resp.toUpperCase();
  switch (resp) {
    case 'C':
      print("Parabéns! Você acertou!");
      break;
    default:
      print("Não foi dessa vez! Quem sabe na próxima!");
  }
}
