
void main(List<String> args) {
  var mapEg = {'Key1': "Value1", 'Key2': 2, 'Key3': 3.0, 'Key4': true};

  // Another way to define map
  var myMap = Map();
  myMap['Name'] = "Iftikar";
  myMap['RollNo'] = 22003;
  myMap['CGPA'] = 6.45;
  myMap['Grade'] = 'A'; // This is showing as String

  print(mapEg);

  //to retrieve a key
  print(mapEg['Key2']); //if you give any key which does not exist, it will print null

  print(myMap);

  //Some methods using dot operator
  print(myMap.keys);
  print(myMap.values);
  print(myMap.containsKey('Name'));
  print(myMap.containsKey('Int'));
  print(myMap.containsValue("Iftikar"));
  print(myMap.containsValue("Mamtaz"));

  //some other methods are length, isEmpty, isNotEmpty, remove
}
