void main(List<String> args) {
  var listNum = [10, 20, 30, 40, 50];

  listNum.add(60);

  var names = [];

  names.addAll(listNum);

  names.insert(0, "iftikar");

  listNum.insert(2, 15);
  names.insertAll(0, listNum);

  print(listNum);

  print(names);
}
