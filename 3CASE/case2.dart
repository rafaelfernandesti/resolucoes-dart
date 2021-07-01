/*
Escreva um programa em Dart que peça para o usuário fornecer dois
números. Após a inserção de tais números, o programa deve mostrar ao
usuário um menu, onde ele poderá escolher entre as quatro operações
básicas (adição, subtração, multiplicação e divisão). Dependendo da
operação escolhida, o programa deve executar o cálculo correspondente
e exibir ao usuário o resultado. Caso o usuário forneça uma opção
inválida, o programa deve exibir uma mensagem dizendo que a opção é
inválida e deve terminar sua execução.
*/
import 'dart:io';

main(List<String> args) {
  print("Digite o primeiro número: ");
  double n1 = double.parse(stdin.readLineSync()!);
  print("Digite o segundo número: ");
  double n2 = double.parse(stdin.readLineSync()!);
  print(
      "Qual operação deseja realizar?\n1) ADIÇÃO\n2) SUBTRAÇÃO\n3) MULTIPLICAÇÃO\n4) DIVISÃO");
  int op = int.parse(stdin.readLineSync()!);
  switch (op) {
    case 1:
      print("$n1 + $n2 = ${(n1 + n2)}");
      break;
    case 2:
      print("$n1 - $n2 = ${(n1 - n2)}");
      break;
    case 3:
      print("$n1 * $n2 = ${(n1 * n2)}");
      break;
    case 4:
      print("$n1 / $n2 = ${(n1 / n2)}");
      break;
    default:
      print("Opção inválida.");
  }
}
