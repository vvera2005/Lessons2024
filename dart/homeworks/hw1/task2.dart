import "dart:io";

num calculator(String? operation,double? n1,double? n2){
  if(operation == null || n1 == null || n2 == null){
    print("write numbers please");
    return 0;
  }
  if(operation == "*"){
    return(n1*n2);
  }
  if(operation == "+"){
    return(n1+n2);
  }
  if(operation == "-"){
    return(n1-n2);
  }
  if(operation == "/" && n2 != 0){
    return(n1/n2);
  }
  print("You didn't write right operation: ");
  return 0;


}
void main(){
  print("The first number: ");
  double? num1 = double.tryParse(stdin.readLineSync()!);
  print("The second number: ");
  double? num2 = double.tryParse(stdin.readLineSync()!);
  print("The operation");
  String? oper = stdin.readLineSync()!;
  num myres = calculator(oper, num1, num2);
  print("The result is $myres");

}