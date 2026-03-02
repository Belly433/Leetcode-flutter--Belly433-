class Solution {
  String reverseWords(String s) {
    List<String> words = s.split(" ");

    for (int i = 0; i < words.length; i++) {
      words[i] = words[i].split('').reversed.join();
    }

    return words.join(" ");
  }
}
