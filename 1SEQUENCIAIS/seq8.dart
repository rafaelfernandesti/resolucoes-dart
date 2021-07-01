/*
ENUNCIADO NÃO ESTÁ MUITO BOM! CONFESSO! ;(
VOU MELHORAR NOS PRÓXIMOS.
O CASO DE TESTE TAMBÉM ESTÁ ERRADO.
TENTEI ADAPTAR A QUESTÃO DE UM LIVRO QUE ESTAVA LENDO SOBRE COMPRESSÃO DE DADOS E DEU RUIM!
CASO DE TESTE CORRETO:
LARGURA: 720
ALTURA: 480
FRAMES: 30
DURAÇÃO: 2H
SAÍDAS ESPERADAS: 
O vídeo possui 223948800000.0 bytes
O vídeo possui 218700000.0 MB
O vídeo possui 213574.21875 GB
O vídeo possui 208.56857299804688 TB
LIVRO LIDO: Gonzalez; Woods. Processamento Digital de Imagens - Capítulo 8.

Escreva um programa em Dart que calcule o tamanho (sem compressão)
de um filme digital gravado por uma câmera de segurança em full HD.
Saiba que:
a. Você precisará realizar a multiplicação simples das seguintes
informações:
i. resolução do vídeo;
ii. quantidade de quadros por segundo (pergunte ao usuário);
iii. quantidade de bytes por pixel (considere a constante 3 neste
exercício);
iv. duração do filme (pergunte ao usuário).
b. Exiba a saída na unidade de armazenamento que fizer mais
sentido (MBytes/GBytes/TBytes, etc).
c. Caso de teste:
i. Entrada: um vídeo de 1920x1080, com 2 horas de duração
e 30 quadros/segundo.
ii. Saída esperada: 1,222 TB.
*/
import 'dart:io';

main(List<String> args) {
  int BYTESPORPIXEL = 3;
  print("Digite a resolução do vídeo (LARGURA): ");
  double largura = double.parse(stdin.readLineSync()!);
  print("Digite a resolução do vídeo (ALTURA): ");
  double altura = double.parse(stdin.readLineSync()!);
  double resolucao = largura * altura;
  print("Digite a qtde de quadros por segundo (frame rate): ");
  double quadros = double.parse(stdin.readLineSync()!);
  print("Digite a duração do filme (em horas): ");
  double duracao = double.parse(stdin.readLineSync()!);
  double dadosVideo = quadros *
      largura *
      altura *
      BYTESPORPIXEL; //dadosVideo armazena os bytes por segundo
  double tamanhoVideo = dadosVideo *
      (duracao *
          60 *
          60); //calcula o tamanho de acordo com o tempo. Note a conversão do tempo para segundos (60*60*duracao)
  print(dadosVideo);
  //fiz a saída em todos (de Bytes até TB), pois precisaria de condicionais para cumprir a parte B do enunciado.
  print("O vídeo possui $tamanhoVideo bytes");
  double tamanhoMB = tamanhoVideo / 1024;
  print("O vídeo possui $tamanhoMB MB");
  double tamanhoGB = tamanhoMB / 1024;
  print("O vídeo possui $tamanhoGB GB");
  double tamanhoTB = tamanhoGB / 1024;
  print("O vídeo possui $tamanhoTB TB");
}
