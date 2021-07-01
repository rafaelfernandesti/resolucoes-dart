/*
De acordo com uma tabela médica, o peso ideal de uma pessoa pode ser calculado
através das seguintes fórmulas:
• Homens: (72.7 * altura) – 58
• Mulheres: (62.1 * altura) – 44.7
A partir destas informações, receba a altura e o sexo do usuário para exibir qual seria seu
peso ideal.
*/
import 'dart:io';

main(List<String> args) {
  double pesoIdeal = 0;
  print("Digite a sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  print("Qual o seu sexo? [M]asculino ou [F]eminino");
  String sexo = stdin.readLineSync()!;
  sexo = sexo.toUpperCase();
  if (sexo == 'M') {
    pesoIdeal = (72.7 * altura) - 58;
  } else if (sexo == 'F') {
    pesoIdeal = (62.1 * altura) - 44.7;
  } else {
    print("Sexo não identificado.");
    exit(0);
  }
  print("Seu peso ideal é $pesoIdeal");
}
