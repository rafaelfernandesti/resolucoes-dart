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
  int qtdeCadastros = 0;
  int qtdeSalarios1100 = 0;
  int qtdeAcumuladaDeFilhos = 0;
  double salario = 0;
  double salarioAcumulado = 0;
  double mediaSalarios = 0;
  double mediaFilhos = 0;
  double maiorSalario = 0;
  while (salario >= 0) {
    print("Qual seu salário? ");
    salario = double.parse(stdin.readLineSync()!);
    if (salario >= 0) {
      salarioAcumulado += salario;
      qtdeCadastros++;
      print("Quantos filhos você tem? ");
      qtdeAcumuladaDeFilhos += int.parse(stdin.readLineSync()!);
    } else {
      salarioAcumulado += 0;
    }
    if (salario > maiorSalario) {
      maiorSalario = salario;
    }
    if (salario <= 1100 && salario >= 0) {
      qtdeSalarios1100++;
    }
  }
  print(
      "a) Média do salário da população: ${(salarioAcumulado / qtdeCadastros).toStringAsFixed(2)}");
  print(
      "b) Média do número de filhos: ${(qtdeAcumuladaDeFilhos / qtdeCadastros).floor()}"); //Como não tem 2,5 filhos arredondei.
  print("c) Maior salário: ${maiorSalario.toStringAsFixed(2)}");
  print(
      "d) Percentual de pessoas com salário até R\$ 1100,00 (salário mínimo): ${qtdeSalarios1100 / qtdeCadastros * 100}%");
}
