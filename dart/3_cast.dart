void main(){
  //de string para int
  String idadeTexto = '25';
  int idade = int.parse(idadeTexto);
  print(idade);

  //de string para double
  String pesoTexto = '85.2';
  double peso = double.parse(pesoTexto);
  print(peso);

  //de string para num
  String alturaTexto = '1.8';
  num altura = num.parse(alturaTexto);
  print(altura);

  String logradouro = 'Rua B';
  int numero = 325;
  //não podemos concatenar número e string
  print(logradouro + ', número: ' + numero.toString());

  int i1 = 2;
  // posss atribuir um literal de int a um double
  double d1 = 3;
  // mas não pode atribuir uma variável int a um double
  double d2 = i1.toDouble();
  print(i1);
  print(d1);
  print(d2);

  double a = 1.6;
  // não dá para fazer int b = (int)a em Dart;
  // arredonda
  int b = a.round();
  print(b);
  //teto
  int c = a.ceil();
  print(c);
  //chão
  int d = a.floor();
  print(d);
}