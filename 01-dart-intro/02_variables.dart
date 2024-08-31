void main(){
// types
  final String pokemon  = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final abilities = <String> ['impostor'];
  final List<String> sprites = ['ditto/front.png'];
  
  // dynamic == null by default has a null value
  dynamic errorMessage = 'error';
  errorMessage = true;
  errorMessage = {1,2,3,4,5};
  errorMessage = ()=> true;
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}