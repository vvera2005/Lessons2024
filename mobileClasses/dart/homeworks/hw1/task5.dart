String errormessang({String? message}) {
  message ??= 'Please try again later.';
  return message;
}
void main(){
  print(errormessang(message: "Hello"));
  print(errormessang());
}