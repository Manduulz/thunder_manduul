import 'dart:io';
void main(){
print(isOdd(4));
print(isOdd(5));
print(isOdd(3));
}
bool isOdd(int a){
 if(a % 2==0) {
   return false;
 }else{
   return true;
 }

}