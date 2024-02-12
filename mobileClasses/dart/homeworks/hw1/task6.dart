int mult({int? n1}){
  n1 ??= 1;
  return 2* n1;
}

int square({int? n1}){
  n1 ??= 1;
  return n1*n1;
}
void main(){
  int num1 = 5;
  int m  = mult(n1: num1);
  int s = square(n1: m);
  print("you got $s"); 

}