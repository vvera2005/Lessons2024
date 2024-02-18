void print_result({dynamic Function()? callback}){
  if (callback == null){
    print("This is null");
  }
  else{
    dynamic myres = callback();
    print(myres);
  }
}
String myfunk(){
  return "Hello";
}
String? nullreturn(){
  return null;
}

void main(){
  print_result(callback: myfunk);
  // print_result(callback: nullreturn);
}
