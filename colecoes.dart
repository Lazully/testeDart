import 'dart:io';

void main() {
  //   2 - Coleções:
  // 2.1 Crie uma lista de strings e exiba todos os elementos usando um loop for.

  print(
      "Digite o que você quer fazer: \n1.Lista de compras;\n2.Lista de nome e idade;");
  String? op = stdin.readLineSync();

  switch (op) {
    case '1':
      List<String> lista = [];

      print("Crie sua lista de compras!\n ");
      int i;

      for (i = 0; i < 10; i++) {
        print("Informe o item ${i + 1} da sua lista de compras:");
        String? itemCompra = stdin.readLineSync();
        lista.add(itemCompra!);
      }

      print("Pronto! Agora vamos ver como ficou a lista.");

      for (int i = 0; i < lista.length; i++) {
        print(lista[i]);
      }

    case '2':
      // 2.2 Crie um mapa com o nome e a idade de algumas pessoas e exiba cada par chave-valor usando um loop for-in.

      var usuario = new Map();

// Adicionar chaves e valores ao mapa usando a notação de colchetes
      usuario['nome'] = 'João';
      usuario['idade'] = 30;

// Exibir cada par chave-valor usando um loop for-in
      usuario.forEach((nome, idade) {
        print(usuario);
      });

      break;

    default:
      print("Opção inválida! ");
  }
}
