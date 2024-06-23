void main() {
  var nums = [-1,-100,3,99];
  int k = 2;

  method1(nums, k);
  method2(nums, k);
}

/// dont pass test case 38 (37/38 test case)
void method1(List<int> nums, int k) {
  for (int i = 1; i <= k; i++) {
    nums.insert(0, nums[nums.length - 1]);
    nums.removeLast();
  }

  print('result1: $nums');
}

/// editing ...
void method2(List<int> nums, int k) {

  if (nums.length == 1) {
    return;
  }
  List<int> temp = nums.sublist(0, nums.length - k);
  List<int> temp2 = nums.sublist(nums.length - k , nums.length);

  nums = temp2 + temp;

  print('result2: $nums');
}