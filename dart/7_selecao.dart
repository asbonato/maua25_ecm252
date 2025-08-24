void main(){
  const idade = 19;
  if (idade >= 18)
    print('Pode dirigir');
  
  if(idade < 18){
    print('É menor de idade');
    print('Não pode dirigir');
  }

  if (idade >= 18){
    print('Pode dirigir');
  } else {
    print('É menor de idade');
    print('Não pode dirigir');
  }

  const bool temHabilitacao = false;

  if (idade >= 18){
    if (temHabilitacao){
      print('Pode dirigir');
    } else {
      print('Não habilitado. Não pode dirigir.');
    }
  }
  else {
    print('É menor de idade');
    print('Não pode dirigir');
  }

  if (idade >= 18 && temHabilitacao){
    print('É maior e habilitado. Pode dirigir');
  } else if (idade >= 18 && !temHabilitacao) {
    print('É maior mas não é habilitado. Não pode dirigir');
  } else if (idade < 18 && temHabilitacao){
    print('É menor e é habilitado. Pode dirigir em autódromos.');
  } else if (idade < 18 && !temHabilitacao){
    print('É menor. Não pode ter habilitação e nem dirigir.');
  }
}