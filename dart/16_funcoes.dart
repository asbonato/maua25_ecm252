void main(){
  final f1 = (){
    print('f1');
  };
  final f2 = (){
    print('f2');
    return 'f2';
  };
  final f3 = () => print("f3");
  final f4 = () => {};
  final f5 = () => {
    1, 2
  };
  final f6 = () => {
    'nome': 'Ana'
  };
  final f8 = (f){
    print('f8');
    f();
  };
  final f9 = (int? a){
    print(a);
  };

  print(f1());
  print(f2());
  f3();
  print(f4());
  print(f4().runtimeType);
  print(f5());
  print(f5().runtimeType);
  print(f6());
  print(f6().runtimeType);
  f8(f1);
  f9(2);
}