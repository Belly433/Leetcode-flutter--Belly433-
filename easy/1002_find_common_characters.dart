class Solution {
  List<String> commonChars(List<String> words) {
    List<int> minFreq = List.filled(26, 100);

    for (String word in words) {
      List<int> freq = List.filled(26, 0);

      for (int i = 0; i < word.length; i++) {
        freq[word.codeUnitAt(i) - 97]++;
      }

      for (int i = 0; i < 26; i++) {
        if (freq[i] < minFreq[i]) {
          minFreq[i] = freq[i];
        }
      }
    }

    List<String> result = [];

    for (int i = 0; i < 26; i++) {
      while (minFreq[i] > 0) {
        result.add(String.fromCharCode(i + 97));
        minFreq[i]--;
      }
    }

    return result;
  }
}

