List? FLlist(List<int> ml) {
  if (ml.length < 2) {
    print("List must have more then 2 elements");
    return null;
  } else {
    List<int> res = [ml[0], ml[ml.length - 1]];
    return res;
  }
}

void main() {
  List<int> a = [5, 10, 15, 20, 25];
  print(a.last);
  print(FLlist(a));
}
