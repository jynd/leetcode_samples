void main() {
  print('Output: ${coinChange([1, 2, 5], 11)}');
  // print('Output: ${coinChange([1], 3)}');
  // print('Output: ${coinChange([0], 1)}');
}

int coinChange(List<int> coins, int amount) {
  List<int> dp = List<int>.filled(amount + 1, amount + 1);
  dp[0] = 0;

  for (int i = 1; i <= amount; i++) {
    for (int coin in coins) {
      if (i >= coin) {
        dp[i] = dp[i].compareTo(dp[i - coin] + 1) > 0
            ? dp[i - coin] + 1
            : dp[i];
      }
    }
  }

  return dp[amount] > amount ? -1 : dp[amount];
}
