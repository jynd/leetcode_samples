void main() {
  // print(wordBreak('leetcode', ['leet', 'code']));
  // print(wordBreak('applepenapple', ["apple","pen"]));
  print(wordBreak('catsandog', ["cats","dog","sand","and","cat"]));
  // print(wordBreak('aaaaaaa', ["aaaa", "aaa"]));
  // print(wordBreak('cars', ["car","ca","rs"]));
}

bool wordBreak(String s, List<String> wordDict) {
  Set<String> wordSet = wordDict.toSet();
  List<bool> dp = List.filled(s.length + 1, false);
  dp[0] = true;

  print(dp);

  for (int i = 1; i <= s.length; i++) {
    for (int j = 0; j < i; j++) {
      if (dp[j] && wordSet.contains(s.substring(j, i))) {
        dp[i] = true;
        break;
      }
    }
  }

  return dp[s.length];
}
