void main(){
  final mySquare = Square(side: 10);
  
  mySquare.side = 5;
  
  print('area:  ${mySquare.calculateArea()}');
  
}

class Square {
  double _side;
  
  Square({required double side}):
   assert(side >= 0,'Value must be >= 0'),
   _side= side; 
  
  double get area {
      return _side * _side;
  }
  void set side(double value){
    print('Setting new value $value');
    if(value < 0 ) throw 'Value must be >= 0';
    
    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}