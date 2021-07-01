/*
Converta um valor dado em reais para a opção escolhida pelo usuário. As opções
possíveis são: 1) dólar, 2) iene, 3) euro e 4) peso argentino.
*/
import 'dart:io';

main(List<String> args) {
  double convertido = 0;
  String moeda = "";
  print("Digite o valor em reais: ");
  double real = double.parse(stdin.readLineSync()!);
  print(
      "Para qual moeda deseja converter?\n1) DÓLAR\n2) IENE\n3) EURO\n4) PESO ARGENTINO");
  int opcao = int.parse(stdin.readLineSync()!);
  if (opcao == 1) {
    convertido = real * 0.2;
    moeda = "dólares";
  }
  if (opcao == 2) {
    convertido = real * 22.29;
    moeda = "ienes";
  }
  if (opcao == 3) {
    convertido = real * 0.17;
    moeda = "euros";
  }
  if (opcao == 4) {
    convertido = real * 19.2;
    moeda = "pesos argentinos";
  }
  print(
      "${real.toStringAsFixed(2)} reais é equivalente a ${convertido.toStringAsFixed(2)} $moeda.");
}
