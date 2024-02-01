enum Weeks{Mondey,Tuesday,Wetnesday,Thursday,Friday,Saturday,Sunday}
Weeks? weekday(int? num){
  switch (num) {
    case 1:
      return Weeks.Mondey;
    case 2:
    return Weeks.Tuesday;
    case 3:
      return Weeks.Wetnesday;
    case 4:
    return Weeks.Thursday;
    case 5:
      return Weeks.Friday;
    case 6:
      return Weeks.Saturday;
    case 7:
      return Weeks.Sunday;
  }
}
void main(){
  print(weekday(1));

}