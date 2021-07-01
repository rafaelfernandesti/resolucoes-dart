/*
A prefeitura de uma cidade fez uma pesquisa entre seus habitantes,
coletando dados sobre o salário e número de filhos. A prefeitura deseja
saber:
a) média do salário da população;
b) média do número de filhos;
c) maior salário;
d) percentual de pessoas com salário até R$ 1100,00 (salário mínimo).
O final da leitura de dados se dará com a entrada de um salário negativo.
*/
import 'dart:io';

main(List<String> args) {
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
}
