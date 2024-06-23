void main() {
  var nums = [2, 2, 1, 1, 1, 2, 2];

  Map<int, int> map = {};

  nums.forEach((element) {
    map.update(element, (value) => value + 1, ifAbsent: () => 1);
  });

  int key = map.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  print('result: $key');
}
