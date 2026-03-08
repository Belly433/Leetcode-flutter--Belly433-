class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    Map<String, int> count = {};

    for (int i = 0; i < s.length; i++) {
      count[s[i]] = (count[s[i]] ?? 0) + 1;
      count[t[i]] = (count[t[i]] ?? 0) - 1;
    }

    for (int value in count.values) {
      if (value != 0) return false;
    }

    return true;
  }
}
