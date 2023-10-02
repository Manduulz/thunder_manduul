void main() {
print(isLeapYear(2024));
print(isLeapYear(2021));
}
bool isLeapYear(int year){
  if(year % 4 == 0 && year % 100 != 0 || year % 400 == 0){
    return true;

  }else{
    return false;
  }
}