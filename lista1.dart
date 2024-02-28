import 'dart:io';

void main() {
  print("Escolha qual exercício você gostaria de testar\nLista de 1 a 10.");
  String? listaExercicios = stdin.readLineSync();

  switch (listaExercicios) {
    // 1 - Calcule a soma de dois números e exiba o resultado.
    case '1':
      int n1, n2, soma;

      print("Digite o 1º número: ");
      n1 = int.parse(stdin.readLineSync()!); //converte uma string (entrada) em int
      print("Digite o 2º número: ");
      n2 = int.parse(stdin.readLineSync()!); //converte uma string (entrada) em int

      soma = n1 + n2;

      print("A soma dos dois números é: ${soma}");
      break;
    // 2 - Verifique se um número é maior ou menor que 10 e exiba uma mensagem correspondente.
    case '2':
      int num;

      print("Digite um número: ");
      num = int.parse(
          stdin.readLineSync()!); //converte uma string (entrada) em int

      if (num > 10) {
        print("O número ${num} é maior que 10! ");
      } else {
        print("O número ${num} é menor que 10! ");
      }
      break;
    //3 - Verifique se um número é par ou ímpar e exiba uma mensagem correspondente.
    case '3':
      int num;

      print("Digite qualquer número: ");
      num = int.parse(stdin.readLineSync()!); //converte uma string (entrada) em int

      if (num % 2 == 0) {
        print("Número par!");
      } else if (num % 2 == 1) {
        print("Número impar!");
      }
      break;
    //4 - Imprima os números de 1 a 10 usando um loop for.
    case '4':
      print("Loop de 1 a 10.\n");

      int i;

      for (i = 1; i < 11; i++) {
        print(i);
      }
      break;
    //5 - Crie uma lista com 5 números inteiros e exiba o maior e o menor valor.
    case '5':
      print("Crie sua lista de compras (limitado a 5 itens)");
      int i;
      List<String> lista = [];

      for (i = 1; i < 6; i++) {
        print("Informe o item $i da sua lista de compras:");
        String? itemCompra = stdin.readLineSync();
        lista.add(itemCompra!);
      }
      print(lista);
      break;
    //6 - Concatene duas strings e exiba o resultado.
    case '6':
      print("Informe seu nome:");
      String? nome = stdin.readLineSync();
      print("Informe seu sobrenome:");
      String? sobrenome = stdin.readLineSync();

      String nomeCompleto = '${nome} ${sobrenome}';

      print(nomeCompleto);
      break;
    //7 - Verifique se um número está entre 10 e 20 (inclusive) e exiba uma mensagem correspondente.
    case '7':
      int num;

      print("Digite um número: ");
      num = int.parse(
          stdin.readLineSync()!); //converte uma string (entrada) em int

      if (num >= 10 && num <= 20) {
        print("O número $num está entre 10 e 20! ");
      } else {
        print("O número $num NÃO está entre 10 e 20! ");
      }
      break;
    //8 - Crie um programa que exiba o dia da semana com base em um número (1 para Domingo, 2 para Segunda, etc.).
    case '8':
      int num;
      print("Digite um número entre 1 e 0: ");
      num = int.parse(
          stdin.readLineSync()!); //converte uma string (entrada) em int

      switch (num) {
        case 1:
          print("Domingo!");
        case 2:
          print("Segunda - feira!");
        case 3:
          print("Terça - feira!");
        case 4:
          print("Quarta - feira!");
        case 5:
          print("Quinta - feira!");
        case 6:
          print("Sexta - feira!");
        case 7:
          print("Sábado!");
      }
      break;

    //9 - Imprima os números pares de 1 a 10 usando um loop while.
    case '9':
      int i = 0;

      do {
        for (i = 0; i < 10; i++) {
          if (i % 2 == 0) {
            print(i);
          }
        }
      } while (i < 10);
      break;
    //10 - Verifique se dois números são iguais e exiba uma mensagem correspondente.
    case '10':
      int n1, n2;

      print("Digite o 1º número: ");
      n1 = int.parse(
          stdin.readLineSync()!); //converte uma string (entrada) em int
      print("Digite o 2º número: ");
      n2 = int.parse(
          stdin.readLineSync()!); //converte uma string (entrada) em int

      if (n1 == n2) {
        print("Os números são iguais.");
      } else {
        print("Os números são diferentes.");
      }
  }
}

//em relação ao ? -> ele permite que a string seja nula, caso venha a acontecer. Usamos o !
//para autorizar a fazer algo --- NULL SAFETY

//para transformar em string:
//int num = int.parse
//(numUser.ToString());