void main(List<String> args) {
  var nums = [];
  nums.addAll([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  nums.replaceRange(0, 4, [10, 20, 30, 40]);

  nums.removeRange(0, 3); //there are many methods of remove
  print(nums);
}
