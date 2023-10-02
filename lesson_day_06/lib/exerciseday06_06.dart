void main(){
  print(isEven(5));
  print(isEven(4));
  print(isEven(3));
}
bool isEven(int a){
  if(a % 2 == 0){
    return true;
  }else{
    return false;
  }
}