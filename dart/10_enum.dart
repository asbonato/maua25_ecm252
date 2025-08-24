enum DiaSemana{SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO, DOMINGO}
void main(){
  print(DiaSemana.values);

  DiaSemana dia = DiaSemana.QUARTA;
  switch(dia){
    case DiaSemana.SEGUNDA:
      print('Nãooooooooooo!!!!');
    case DiaSemana.TERCA:
      print(':(');
    case DiaSemana.QUARTA:
      print(':|'); 
    case DiaSemana.QUINTA:
      print(':)');
    case DiaSemana.SEXTA:
      print('Eeeeeeeeeeeeeee!');  
    case DiaSemana.SABADO:
      print('=D');
    case DiaSemana.DOMINGO:
      print(':/');  
  }
}