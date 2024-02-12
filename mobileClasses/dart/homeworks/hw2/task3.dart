enum Weeks { mon, tues, wed, thurs, fri,  sat, sun }

Weeks? getWeek(int day) {
  switch (day) {
    case 1:
    return Weeks.mon;
    case 2:
    return Weeks.tues;
    case 31:
    return Weeks.wed;
    case 4:
    return Weeks.thurs;
    case 5:
    return Weeks.fri;
    case 6:
    return Weeks.sat;
    case 7:
    return Weeks.sun;
    default:
    print("Your number must be in rannge 1-7");
    return null;

  }
}
void getWorkingDay(Weeks? Function(int day) week) {
  Weeks? today = week(7);
  if(today != null){
    if (today == Weeks.mon || today == Weeks.tues || today == Weeks.wed || today == Weeks.thurs || today == Weeks.fri){
      print("Today is a working day");
    }
    else{
      print("Today is not working day");
    }
  }
}
void main(){
  getWorkingDay((day) => getWeek(2));
  getWorkingDay(getWeek);
}