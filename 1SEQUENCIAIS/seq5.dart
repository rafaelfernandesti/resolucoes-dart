/*
Escreva um programa em Dart que calcule o valor líquido do salário de
um professor. O programa deve pedir para o usuário o valor da hora/aula,
a quantidade de aulas e a porcentagem de desconto do INSS.
*/
import 'dart:io';

main(List<String> args) {
  print("Digite o valor da hora/aula do professor: ");
  double horaAula = double.parse(stdin.readLineSync()!);
  print("Digite a quantidade de aulas mensais do professor: ");
  double qtdeAulas = double.parse(stdin.readLineSync()!);
  print("Qual a porcentagem de INSS a calcular (de 0 a 100): ");
  double inss = double.parse(stdin.readLineSync()!);
  double salarioBruto = (horaAula * qtdeAulas);
  double salarioLiquido = salarioBruto - (salarioBruto * inss / 100);
  print("CÁLCULOS DO PROFESSOR:");
  print("Hora/aula\tQtde Aulas\tDesc. INSS");
  print("$horaAula\t\t$qtdeAulas\t\t$inss%");
  print("SALÁRIO BRUTO: \tR\$ ${salarioBruto.toStringAsFixed(2)}");
  print("SALÁRIO LÍQ.: \tR\$ ${salarioLiquido.toStringAsFixed(2)}");
}
