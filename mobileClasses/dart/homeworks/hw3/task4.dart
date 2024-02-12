int numcheck(num mnum) {
  int start = 1;
  int end = 100;
  int mid = ((start + end) / 2).round();

  while (mid != mnum) {
    if (mnum < mid) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }

    mid = ((start + end) / 2).round();
  }

  return mid;
}

void main() {
  print(numcheck(5));
}
