void main() {
  var nums = [1, 1, 2];

  Set<int> uniqueNums = nums.toSet();

  nums.clear();
  nums.addAll(uniqueNums);

  print('result: ${nums.length}');
}
