/*
Crie um software em Dart que possibilite entrar com o salário de uma pessoa e exibir o
desconto do INSS segundo a tabela, extraída de
https://www.contabilidadescalabrini.com.br
*/
import 'dart:io';

main(List<String> args) {
  print("Digite o salário: ");
  double salarioBruto = double.parse(stdin.readLineSync()!);
  double descontoINSS;
  if (salarioBruto <= 1100)
    descontoINSS = salarioBruto * 7.5 / 100;
  else if (salarioBruto <= 2203.48)
    descontoINSS = salarioBruto * 9 / 100;
  else if (salarioBruto <= 3305.22)
    descontoINSS = salarioBruto * 12 / 100;
  else if (salarioBruto <= 6433.57)
    descontoINSS = salarioBruto * 14 / 100;
  else
    descontoINSS = 6433.57 *
        9 /
        100; //esta é a condição para atender ao teto de contribuição
  print(
      "Para o salário de R\$ ${salarioBruto.toStringAsFixed(2)} o desconto é de R\$ ${descontoINSS.toStringAsFixed(2)} ");
}
