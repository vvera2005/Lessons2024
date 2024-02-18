import "dart:io";

int? get_number(){
  print("Enter the number: ");
  String? strnum = stdin.readLineSync()!;
  if(int.tryParse(strnum) == null){
    return null;
  }else{
    return int.tryParse(strnum);
  }
}
void main(){
  int? mynum = get_number();
  if(mynum == null){
    print("You input is not valid");
  }else{
    print("The result: $mynum");
  }


}