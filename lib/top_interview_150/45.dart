void main() {
  // var nums = [0]; //= 0
  // var nums = [2,3,1,1,4]; // =2
  // var nums = [3,2,1,0]; //= 1
  var nums = [1,1,1,1]; //= 3
  // var nums = [1,2,1,1,1]; //= 3

  print('result: ${jumpCount(nums)}');
}

int jumpCount(List<int> nums) {
  int minJump = 0;
  int targetIndexEnd = nums.length - 1;

  if (nums.length == 1) return 0;

  for (int i = 0; i <= targetIndexEnd; i++) {
    minJump++;
    if (i + nums[i] >= targetIndexEnd) {
      break;
    } else {
      int maxJump = 0;
      int maxJumpIndex = 0;
      for (int j = 1; j <= nums[i]; j++) {
        if (i + j + nums[i + j] > maxJump) {
          maxJump = i + j + nums[i + j];
          maxJumpIndex = i + j;
        }
      }
      i = maxJumpIndex - 1;
    }
  }


  return minJump;
}