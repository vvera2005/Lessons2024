int returnSum(int mnum) {
  int msum = 0;
  for (int i = 0; i <= mnum; i += 2) {
    msum += i;
  }
  return msum;
}

void main() {
  print(returnSum(69));
}
