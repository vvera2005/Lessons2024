void checktype(dynamic input){

  if(input is num){
    print(2 * input);
  }
  else if(input is String){
    print(input.length);
  }
  else if(input == Null){
    print("This is null");
  }
}

void main(){
  checktype(56);
}