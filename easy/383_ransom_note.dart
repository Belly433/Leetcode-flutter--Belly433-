class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> count = {};

    for (int i = 0; i < magazine.length; i++) {
      String char = magazine[i];
      count[char] = (count[char] ?? 0) + 1;
    }

    for (int i = 0; i < ransomNote.length; i++) {
      String char = ransomNote[i];

      if ((count[char] ?? 0) == 0) {
        return false;
      }

      count[char] = count[char]! - 1;
    }

    return true;
  }
}