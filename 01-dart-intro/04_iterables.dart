void main(){

  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  final reversedNumbers = numbers.reversed;
  final numbersGraterThanFive = numbers.where((int num){
    return num > 5;
  });
  
  
  
  print('List original $numbers');
  print('List length ${numbers.length }');
  print('List first ${numbers.first }');
  print('List last ${numbers.last }');
  print('List reverse ${numbers.reversed }');
  print('iterable: $reversedNumbers');
  print('iterable - to list: ${reversedNumbers.toList()}');
  print('iterable - to set: ${reversedNumbers.toSet()}');
  print('iterable where: ${numbersGraterThanFive}');
}