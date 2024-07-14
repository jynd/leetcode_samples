void main() {
  // print('output: ${climbStairs(2)}');
  print('output: ${climbStairs(4)}');
}

int climbStairs(int n) {
  List<int> dp = List.filled(n + 1, 0);
  dp[0] = 1;

  for (int i = 1; i <= n; i++) {
    if (i == 1) {
      dp[i] = dp[i - 1];
    } else {
      dp[i] = dp[i - 1] + dp[i - 2];
    }
  }

  return dp[n];
}