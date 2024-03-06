import 'dart:io';

void main() {
  //3.1 Escreva um programa que demonstre o uso de variáveis nulas (null) e variáveis seguras (non-null) em Dart, incluindo a verificação de nulidade (null check).

  //variável nula
  String? genero;

  //variável não nula
  String nome = "", usuario = "";

  print("Informe seu primeiro nome: ");
  nome = stdin.readLineSync() ?? "Marina";
  print("Informe seu usuário: ");
  usuario = stdin.readLineSync() ?? "Ninguém";

  print("Informe o seu gênero: ");
  genero = stdin.readLineSync();

  if (genero != null) {
    print("${genero.length}");
  } else {
    print("Nenhum gênero foi informado! ");
  }

  print("Nome: $nome, Usuário: $usuario, Gênero: ${genero ?? 'Não informado'}");
}
