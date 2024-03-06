import 'dart:io';

void main() {
  String? op;

  print(
      "\n\n================= Escolha uma função para avaliar =================\n\n");

  print(
      "1. Soma de inteiros\n2. Maior da lista\n3. Mensagem\n4. Soma de decimais\n5. Arredonda decimais\n6. Ordenação de lista\nResposta: ");
  op = stdin.readLineSync();

  switch (op) {
    case '1':
      print("A soma dos números é: ${somaInteiros()}");
      break; // Adicionando break para interromper o switch
    case '2':
      print("O maior número da lista é: ${maiorNumeroLista()}");
      break;
    case '3':
      imprimirMensagem();
      break;
    case '4':
      print("A parte inteira da soma é: ${somaDecimais()}");
      break;
    case '5':
      print("Digite um número: ");
      double n1 = double.parse(stdin.readLineSync()!);
      print("Digite o 2º número: ");
      double n2 = double.parse(stdin.readLineSync()!);
      print("A parte inteira da soma é: ${somaDecimaisArredonda(n1, n2)}");
      break;
    case '6':
      List<int> numeros = [5, 3, 8, 2, 1, 7, 4, 6];
      print("Lista original: $numeros");

      List<int> listaOrdenada = ordenaLista(numeros);
      print("Lista ordenada: $listaOrdenada");
    default:
      print("Opção inválida!");
  }
}

//5.1 Escreva uma função chamada somaInteiros que receba dois números inteiros como parâmetros e retorne a soma.
int somaInteiros() {
  int n1, n2;

  print("Digite o 1º número: ");
  n1 = int.parse(stdin.readLineSync()!);

  print("Digite o 2º número: ");
  n2 = int.parse(stdin.readLineSync()!);

  return (n1 + n2);
}

//5.2 Escreva uma função chamada maiorNumeroLista que receba uma lista de números inteiros como parâmetro e retorne o maior número da lista.
int maiorNumeroLista() {
  List<int> numeros = [];

  print("Digite os números da lista separados por espaço: ");
  numeros = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int maior = numeros[0];

  for (int i = 1; i < numeros.length; i++) {
    if (numeros[i] > maior) {
      maior = numeros[i];
    }
  }
  return maior;
}

//5.3 Escreva uma função chamada imprimirMensagem que não receba nenhum parâmetro e imprima uma mensagem na tela.
void imprimirMensagem() {
  print("Você escolheu a mensagem!");
  print("Você é uma pessoa muito especial :)");
}

//5.4 Escreva uma função chamada somaDecimais que receba dois números decimais como parâmetros nomeados ("primeiroDecimal" e "segundoDecimal") e retorne somente a parte inteira da soma.
int somaDecimais() {
  double primeiroDecimal, segundoDecimal, soma;

  print("Digite o 1º número: ");
  primeiroDecimal = double.parse(stdin.readLineSync()!);

  print("Digite o 2º número: ");
  segundoDecimal = double.parse(stdin.readLineSync()!);

  soma = primeiroDecimal + segundoDecimal;

  return soma.toInt();
}

//5.5 Escreva uma função chamada somaDecimaisArredonda que receba dois números decimais como parâmetros obrigatórios e um terceiro parâmetro opcional.
//A função deve retornar somente a parte inteira da soma, arredondando o número de acordo com as regras especificadas.

int somaDecimaisArredonda(double n1, double n2, [double? n3]) {
  double soma = n1 + n2;

  if (n3 != null) {
    soma += n3;
  }

  return soma.toInt();
}

//5.6 Escreva uma função chamada ordenaLista que receba uma lista de números inteiros como parâmetro e retorne uma nova
//lista ordenada em ordem crescente. Utilize o método de ordenação bolha (Bubble sort) para implementar essa função.
List<int> ordenaLista(List<int> lista) {
  int n = lista.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (lista[j] > lista[j + 1]) {
        // Troca os elementos se estiverem fora de ordem
        int temp = lista[j];
        lista[j] = lista[j + 1];
        lista[j + 1] = temp;
      }
    }
  }

  return lista;
}
