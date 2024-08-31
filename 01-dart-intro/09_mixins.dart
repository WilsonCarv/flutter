void main(){
  final dolphin = Dolphin();
  dolphin.swim();
  
}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin class CanFly {
  void fly() => print('I can fly!');
}

mixin class CanSwim {
  void swim() => print('I can swim!');
}

mixin class CanWalk {
  void walk() => print('I can walk!');
}

class Dolphin extends Mammal with CanSwim{}

class Bat extends Mammal with CanFly, CanWalk{}

class Cat extends Mammal with CanWalk{}