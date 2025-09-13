import 'dart:convert';

void main(){
  var pessoaJson = '{"nome": "Ana", "idade": 18}';
  var pessoaDecoded = json.decode(pessoaJson);
  var pessoa = PessoaModel(
    pessoaDecoded['nome'],
    pessoaDecoded['idade']
  );
  print(pessoa.nome);
  print(pessoa.idade);
}

class PessoaModel{
  String nome;
  int idade;
  //construtor
  PessoaModel(this.nome, this.idade);
}