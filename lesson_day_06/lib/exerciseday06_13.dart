void main() {
  print(maxFunc(4, 5));
  print(maxFunc(15, 2));
}
int maxFunc(int a, int b){
  if(a > b){
    return a;
  }else{
    return b;
  }
}