import 'dart:io';

void main() {
//   1 - Tipagem Dinâmica e Estática:
// 1.1 Escreva um programa que declare uma variável com tipagem estática e outra com tipagem dinâmica, atribuindo valores de tipos diferentes a cada uma e exibindo-os.
  dynamic x;
  double? y;

  print("Escreva a entrada que será do tipo dinâmico: ");
  x = stdin.readLineSync();

  print("Escreva o número que será do tipo estático (inteiro): ");
  String? input = stdin.readLineSync();
  if (input != null) {
    y = double.parse(input);
  }

  print("O número atribuído para o tipo dinâmico é: $x");
  print("O número atribuído para o tipo estático é: $y");
}
