class Solution {
  List<String> readBinaryWatch(int turnedOn) {
    List<String> result = [];

    for (int hour = 0; hour < 12; hour++) {
      for (int minute = 0; minute < 60; minute++) {
        int bits = countBits(hour) + countBits(minute);

        if (bits == turnedOn) {
          result.add("$hour:${minute.toString().padLeft(2, '0')}");
        }
      }
    }

    return result;
  }

  int countBits(int n) {
    int count = 0;

    while (n > 0) {
      count += n & 1;
      n >>= 1;
    }

    return count;
  }
}

