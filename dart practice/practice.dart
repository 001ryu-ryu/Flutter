import 'dart:io';

void main() {
  print("Hello dart!");

  stdout.write("Enter your name: ");

  var name = stdin.readByteSync();
  print(name);


  // Dynamic
  dynamic section = "A";
  section = 3;

  // to store long int
  BigInt longType;
  longType = BigInt.parse("58678576576985765689");

  var iftikar = new Human(); //in new Dart version new is not necessary , hint runtime allocation
}

class Human {
  
}
