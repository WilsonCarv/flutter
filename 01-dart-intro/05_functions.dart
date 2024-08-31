void main(){
  print (greetEveryone());
  print (addTwoNumbers(5,4));
  print(greetPerson( name:'Wilson'));
}

String greetEveryone() => 'Hello world!';

int addTwoNumbers (int a, int b) => a + b;

int addTwoNumbersOptional (int a, [int b = 0]) {
 // b = b ?? 0;
 // b ??= 0;
  return a + b;
}
String greetPerson({required String? name, String? message = 'Hello, '}){
  return  '${message}${name}';
}