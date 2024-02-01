int? faktorial(int mnum){
  if(mnum == 0){
    return 1;
  }
  else if(mnum < 0){
    return null;      
  }
  else{
    int fakt = 1;
    for(var i=1; i <= mnum; i++){
      fakt *= i;
    }
    return fakt;
  }
}
void main(){
  print(faktorial(5));
}