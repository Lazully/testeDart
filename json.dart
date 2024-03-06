import 'dart:convert';
import 'dart:io';

// void main() {
//   File arquivoRaw = File('MOK_DATA.json');
//   String conteudo = arquivoRaw.readAsStringSync();

//   //print(conteudo);

//   Map<String, dynamic> mapJson = json.decode(conteudo);
//   print(mapJson["alunos"]);
// }

//classe é um tipo abstrato do dado
class Pessoa {
  String nome;
  int idade;
  bool sexo;
  String? email;

  Pessoa(this.nome, this.idade, this.sexo, [this.email = 'vazio']);

  void falaNome() {
    print('Meu nome é ${this.nome}');
  }

  int pegaIdade() {
    return this.idade;
  }
}

void main() {
  String x = '';
  Pessoa p1 = Pessoa('Suga', 30, true, 'suga@hybe.com'); //construtor
  Pessoa p2 = Pessoa('Hobi', 30, true, 'hobi@hybe.com');
  Pessoa p3 = Pessoa('IU', 30, false);

  print('Email do p1 = ${p1.email}');
  p1.falaNome();
  print('Email do p2 = ${p2.email}');
  print('Email do p3 = ${p3.email}');
  p1.email = 'suga@hybe.com';
  print('Email do p1 = ${p1.email}');

  List<int> abc = [];
  List<Pessoa> listaPessoas = [p1, p2, p3];

  listaPessoas.forEach((element) {
    element.falaNome();
  });

  Map<String, Pessoa> mapaDePessoas = {
    'pessoa1': p1,
    'pessoa2': p2,
    'pessoa3': p3
  };

  mapaDePessoas.forEach((key, value) {
    print('Valor da CHAVE: $key');
    print("========");
    value.falaNome();
  });
}
