void main() {
  // var nums = [1];
  var nums = [2,3,1,1,4];
  // var nums = [3,2,1,0];
  // var nums = [3,2,1,0,4];
  print('result: ${canJump(nums)}');
}

bool canJump(List<int> nums) {
  int targetIndexEnd = nums.length - 1;

  for (int i = nums.length - 2; i >= 0; i--) {
    if (i + nums[i] >= targetIndexEnd) {
      targetIndexEnd = i;
    }
  }

  return targetIndexEnd == 0;
}
