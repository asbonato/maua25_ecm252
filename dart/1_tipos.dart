/// comentário de 1 linha para gerar documentação
void main(){
  print('Hello, world!');
  //comentário de 1 linha
  /* comentário de
     várias linhas
  */
  /** comentário de várias linhas para gerar documentação */
  String s1 = 'abc';
  String s2 = "abc";
  String s3 = '''
      String de várias linhas
      usando aspas simples.
''';
  String s4 = """
      String de várias linhas
      usando aspas duplas.
"""; 
  String s5a = 'O \n serve para pular linha.';
  String s5b = r'O \n serve para pular linha.';

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print(s5a);
  print(s5b);

  int n1 = 17;
  double n2 = 3.5;
  num n3 = 2.0;
  num n4 = 2;
  bool eMaior = true;
  bool eMenor = false; 

  print(n1);
  print(n2);
  print(n3);
  print(n4);
  print(eMaior);
  print(eMenor);

  print(s1.runtimeType);
  print(n1.runtimeType);
  print(n2.runtimeType);
  print(n3.runtimeType);
  print(n4.runtimeType);
  print(eMaior.runtimeType);
}