void main(){
  var nota = 9;
  switch(nota){
    case 10:
      print('A');
      break;
    case 9:
      print('A');
      break;
    case 8:
      print('B');
      break;
    case 7:
      print('C');
      break;
    case 6:
      print('D');
      break;
    case 5:
      print('E');
      break;
    default:
      print('R');
      break;
  }
    //breaks implícitos
    switch(nota){
    case 10:
      print('A');
    case 9:
      print('A');
    case 8:
      print('B');
    case 7:
      print('C');
    case 6:
      print('D');
    case 5:
      print('E');
    default:
      print('R');
  }

  //uso do fall through
    switch(nota){
    case 10:
    case 9:
      print('A');
    case 8:
      print('B');
    case 7:
      print('C');
    case 6:
      print('D');
    case 5:
      print('E');
    default:
      print('R');
  }

  //uso do operador || em vez de fall through
    switch(nota){
    case 9 || 10:
      print('A');
    case 8:
      print('B');
    case 7:
      print('C');
    case 6:
      print('D');
    case 5:
      print('E');
    default:
      print('R');
  }

  //posso usar operadores relacionais
    switch(nota){
    case > 9 && <= 10:
      print('A');
    case > 8 && <= 9:
      print('B');
    case > 7 && <= 8:
      print('C');
    case > 6 && <= 7:
      print('D');
    case > 5 && <= 6:
      print('E');
    default:
      print('R');
  }

  //posso usar string
  var vaiChover = 'Sim';
  switch(vaiChover){
    case 'Sim':
      print('Leve guarda chuva.');
    default:
      print('Não precisa levar guarda chuva.');
  }

  //posso usar com listas
  var frutas = ['banana', 'laranja'];
  switch(frutas){
    case ['banana', 'laranja']:
      print('banana e laranja');
    case ['banana', 'maça']:
      print('banana e maça');
    default:
      print('não sei');
  }

  // uso de rótulos e continue 
  nota = 10;
  switch(nota){
    case 10:
      print('Parabéns, você tirou 10!');
      continue conceito;
    conceito:// rótulo
    case 9:
      print('Você tirou A!');
  }
  //switch expression
  var mediaFinal = 5;
  final conceito = switch(mediaFinal){
    10 || 9 => 'A',
    8 => 'B',
    7 => 'C',
    6 => 'D',
    5 => 'E',
    _ => 'R' // _ é o default
  };
  print(conceito);


}


