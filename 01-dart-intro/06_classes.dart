void main(){
  final Hero wolverine = 
    new Hero(
    name:'Wolverine'     
  , power:'Velocity',
    isAlive:true);
  print(wolverine.name);
  print(wolverine);
  
  final Map<String , dynamic> rawJson = {
    'name':'Tony',
    'power':'Money',
    'isAlive':true
  };
  
  final ironMan =Hero.fromJson(rawJson);

  print(ironMan);

}



class Hero{
  String? name;
  String? power;
  bool isAlive;
  
  Hero({ 
    required this.name, 
    required this.power,
    required this.isAlive
    });
  
  Hero.fromJson(Map<String, dynamic> json) : 
  name = json['name']?? 'no name',
  power = json['power']?? 'no power',
  isAlive = json['isAlive'] ?? false;
              
  @override
  String toString(){
    return '$name - $power - IsAlive:  ${isAlive ? 'YES':'NO'}';
  }
  
}