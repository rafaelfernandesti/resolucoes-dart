import 'dart:io';

main(List<String> args) {
  int idade;
  print("Qual sua idade? ");
  idade = int.parse(stdin.readLineSync()!);
  retornaCategoria(idadeParam: idade);
}

//usando parâmetro nomeado
void retornaCategoria({int idadeParam: 0}) {
  if (idadeParam >= 5) {
    print("Sua categoria é: ");
    if (idadeParam < 8) {
      print("Infantil A");
    } else if (idadeParam < 11) {
      print("Infantil B");
    } else if (idadeParam < 14) {
      print("Juvenil A");
    } else if (idadeParam < 18) {
      print("Juvenil B");
    } else {
      print("Adulto");
    }
  } else {
    print("Idade sem categoria");
  }
}
