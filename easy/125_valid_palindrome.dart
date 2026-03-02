class Solution {
  bool isPalindrome(String s) {
    String cleaned = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

    int left = 0;
    int right = cleaned.length - 1;

    while (left < right) {
      if (cleaned[left] != cleaned[right]) {
        return false;
      }
      left++;
      right--;
    }

    return true;
  }
}
