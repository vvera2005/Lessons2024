List<int> generateFibonacci(int n) {
  List<int> fibonacciSequence = [];

  for (int i = 0; i < n; i++) {
    if (i <= 1) {
      fibonacciSequence.add(i);
    } else {
      int nextNumber = fibonacciSequence[i - 1] + fibonacciSequence[i - 2];
      fibonacciSequence.add(nextNumber);
    }
  }

  return fibonacciSequence;
}

void main() {
  int n = 10;
  List<int> fibonacciSequence = generateFibonacci(n);
  print(fibonacciSequence);
}
