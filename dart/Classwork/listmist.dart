// void main(){
//   final List<int> ml = List.generate(101, (index) => index);
//   int sum = 0;
// for(var el in ml){
//   sum = sum + el;
// }
// print(sum);

// }
import 'dart:math';

List listReturn(int last){
  List<int> ml = [];
  for (var i = 0; i < last; i++) {
    if(i%2 == 0){
      ml.add(i);
    }
  }
  return ml;
}

int minimum(List Function(int min,int max,int cnt) callback){
  List ml = callback(15,155,10);
  int min = ml[0];
  for(int el in ml){
    if(el<min){
      min = el;
    }
  }
  return min;
}

int maximum(List Function(int min,int max,int cnt) callback){
  List ml = callback(1,15,10);
  int max = ml[0];
  for(int el in ml){
    if(el>max){
      max = el;
    }
  }
  return max;
}

List<int> randomsumbers(int mmin, int mmax, int cnt){
    Random random = Random();
    List<int> ml = List.generate(cnt, (index) {
    return mmin + random.nextInt(mmax);
  });
  return ml;
}
void main(){

  print(listReturn(52));
  print(minimum(randomsumbers));
  print(maximum(randomsumbers));
}