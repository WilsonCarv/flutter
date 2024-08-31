void main() {
  final windPlant = new WindPlant(energyLeft:100);
  final nuclearPlant = new NuclearPlant(energyLeft:1000);
  print("wind");
  print(windPlant.energyLeft);

  windPlant.consumeEnergy(10);

  print(windPlant.energyLeft);
  
  print("nuclear");
  
  nuclearPlant.consumeEnergy(50);
  
  print(nuclearPlant.energyLeft);
  
}
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double energyLeft}) : super(
    energyLeft: energyLeft,
    type: PlantType.wind
  );

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
class NuclearPlant implements EnergyPlant {
     @override
    double energyLeft;
     @override
    final PlantType type = PlantType.nuclear;
  
    NuclearPlant({required this.energyLeft});
   @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
class WaterPlant extends EnergyPlant {
  WaterPlant({required double energyLeft}) : super(
    energyLeft: energyLeft,
    type: PlantType.water
  );
   @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}