import 'dart:math';
import 'dart:io';

void main() {
  //4 - Convenções de Codificação:
  //4.1 Escreva um programa que siga as convenções de codificação em Dart, incluindo o uso de nomes de variáveis descritivos, indentação consistente e comentários explicativos.

  print("\n\n=============== JOGO DE ADIVINHAÇÃO ===============\n\n");

  print("Eu estou pensando em um número de 1 a 100. Qual você acha que é? ");

  int numeroAleatorio = Random().nextInt(100) + 1;

  int tentativas = 0;
  int? palpite;

  while (palpite != numeroAleatorio) {
    print("Digite seu palpite: ");
    int palpite = int.parse(stdin.readLineSync()!);
    if (palpite == null) {
      print("Tentativa inválida! Digite um número.");
      continue;
    }

    tentativas++;

    if (palpite < numeroAleatorio) {
      print("\nTente um valor mais alto! ");
    } else if (palpite > numeroAleatorio) {
      print("\nTente um valor mais baixo! ");
    } else {
      print("Parabéns! Você acertou em $tentativas tentativas.");
      break;
    }
  }
}
