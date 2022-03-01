import 'src/war_simulator.dart';

void main(List<String> arguments) {
  var america = Country('America');

  america.addTroup(
    Troup(
      type: TroupType.airforce,
      power: 3,
      hp: 10,
      accuracy: 80,
    ),
  );

  var russia = Country('russia');

  russia.addTroup(
    Troup(
      type: TroupType.navy,
      power: 2,
      hp: 10,
      accuracy: 40,
    ),
  );

  var simulation = WarSimulator(america, russia);

  simulation.listen((event) {
    print(
      '${event.country.name}\'s troup ${event.troup?.name} was'
      ' ${event.type} in the ${event.hour}th hour',
    );
  });

  simulation.start();
}
