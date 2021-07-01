import 'dart:io';

main(List<String> args) {
  int anos, meses, dias;
  print("Quantos anos você tem completos? ");
  anos = int.parse(stdin.readLineSync()!);
  print("Quantos meses você tem completos? ");
  meses = int.parse(stdin.readLineSync()!);
  print("Quantos dias você tem? ");
  dias = int.parse(stdin.readLineSync()!);
  calcularDiasDeVida(anos, meses, dias);
}

void calcularDiasDeVida(int anos, int meses, int dias) {
  int totalDias = anos * 365 +
      meses * 30 +
      dias; //considerei ano com 365 dias e mês com 30 dias para facilitar
  print("Total de dias de vida: $totalDias");
}
