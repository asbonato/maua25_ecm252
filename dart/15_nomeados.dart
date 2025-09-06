//pode ser null
//e implicitamente é null, inicializado
//pelo compilador
void opcional({int? numero}){
  print(numero);
}

//assim não funciona pois int não ser null
//e o valor implícito é null
// void obrigatorio({int numero}){
//   print(numero);
// }

void obrigatorio({int numero = 5}){
  print(numero);
}

void comParametrosSemNome(int semNome, {int? comNome}){
  print(semNome);
  print(comNome);
}

//não funciona
//nomeados (separados por {}) tem de aparecer depois
//de todo os sem nome
// void comParametrosSemNome({int? comNome}, int semNome){
//   print(semNome);
//   print(comNome);
// }

void main(){
  //exibe null
  opcional();
  //exibe 2
  opcional(numero: 2);
  //exibe 10
  obrigatorio(numero: 10);
  //exibe 5
  obrigatorio();
  //exibe 2 null
  comParametrosSemNome(2);
  //exibe 2 2
  comParametrosSemNome(2, comNome: 2);
}