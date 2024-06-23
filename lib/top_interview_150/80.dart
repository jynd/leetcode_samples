void main() {
  var nums = [1, 1, 1, 2, 2, 3];

  method1(nums);
  method2(nums);
}

void method2(List<int> nums) {
  if (nums.length <= 2) {
    print('result2: ${nums.length}');
    return;
  }

  int index = 2;
  for (int i = 2; i < nums.length; i++) {
    if (nums[i] != nums[index - 2]) {
      nums[index++] = nums[i];
    }
  }
  print('result2: $index');
}

void method1(List<int> nums) {
  List<List<int>> splitsItems = [];

  for (int i = 0; i < nums.length; i++) {
    if (i == 0) {
      splitsItems.add([nums[i]]);
    } else {
      if (nums[i] == nums[i - 1]) {
        splitsItems.last.add(nums[i]);

        if (splitsItems.last.length > 2) {
          splitsItems.last.removeLast();
        }
      } else {
        splitsItems.add([nums[i]]);
      }
    }
  }

  nums.clear();
  for (var element in splitsItems) {
    nums.addAll(element);
  }

  print('result1: ${nums.length}');
}
