void main() {
  var nums = [3, 2, 2, 3];
  int val = 3;

  List<int> temp = nums.where((element) => element != val).toList();
  nums
    ..clear()
    ..addAll(temp);

  print('result: ${nums.length}');
}
