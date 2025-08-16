void main(){
  String nome = 'João';
  String sobrenome = 'Silva';
  String endereco = '''
Rua B,
número 1234, Vila J''';
  bool ehMaior = false;
  int idade = 17;
  num peso = 80.5;
  double altura = 1.82;
  //concatenação de strings
  print('Me chamo ' + nome);
  // não faz casting de int para string
  // print('Minha idade é ' + idade);
  print('Minha idade é ' + idade.toString());
  // podemos usar interpolação
  print('Me chamo $nome');
  print('Meu sobrenome é ${sobrenome}');
  print('Minha idade é $idade e o peso é $peso kg');
  print('Ano que vem terei ${idade + 1} anos');
  print('x'*10);
}