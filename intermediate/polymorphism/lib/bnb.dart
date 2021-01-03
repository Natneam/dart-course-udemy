import 'package:polymorphism/hotel.dart';

import 'house.dart';
import 'hotel.dart';

class BnB extends House with Hotel {
  // int rooms = 4;
  // int guests = 3;
  void ringDoorBell() => print('Kilkilkil');
}
