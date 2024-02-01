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

String age_type(age){
  if(age != null){
    if(age < 18){
      return "Minor";
    }
    else if(age>=18){
      return "Adult";
    }
  }
    return "Unknown";
}
void main(){
  int? myage = get_number();
  String atype = age_type(myage);
  print("You are $atype");

}