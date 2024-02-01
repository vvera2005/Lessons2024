void main() {
  List<int> ml = [12, 4, 56, 9, 7, 8, 23, 16, 5, 4, 2, 9, -7];
  int min = 0;
  int max = 0;
  for (var i = 0; i < ml.length - 1; i++) {
    if (ml[i] <= ml[min]) {
      max = i;
    } else if (ml[i] >= ml[max]) {
      min = i;
    }
  }
  List<int> newl = ml.sublist(min, max);
  int msum = 0;
  for (int el in newl) {
    msum += el;
  }
  print(msum);
}
