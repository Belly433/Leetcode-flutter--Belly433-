class Solution {
  bool detectCapitalUse(String word) {
    if (word == word.toUpperCase()) return true;

    if (word == word.toLowerCase()) return true;

    if (word[0] == word[0].toUpperCase() &&
        word.substring(1) == word.substring(1).toLowerCase()) {
      return true;
    }

    return false;
  }
}
