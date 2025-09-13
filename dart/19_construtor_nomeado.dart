import 'dart:convert';

void main(){
  var pessoaJson = '{"nome": "Ana", "idade": 18}';
  var pessoaDecoded = json.decode(pessoaJson);
  var pessoa = PessoaModel.fromJSON(pessoaDecoded);
  print(pessoa.nome);
  print(pessoa.idade);
}

class PessoaModel{
  late String nome;
  late int idade;
  //construtor
  PessoaModel(this.nome, this.idade);
  //construtor nomeado
  PessoaModel.fromJSON(decodedJSON){
    nome = decodedJSON['nome'];
    idade = decodedJSON['idade'];
  }
}