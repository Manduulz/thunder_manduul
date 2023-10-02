void main(){
  //dart lists data structure
  //dart functions
  int a = 1;
  int b = 2;
  int c = 3;
  int d = 4;
  List<int> gahainuud = [1, 2, 3, 4]; //toonuud ni index
  print(gahainuud);
  List<String> tortnuud = ['apple pie', 'cherry pie', 'cake', 'cheese cake'];
  print(tortnuud);
  List<double> butarhaiToonuud = [3.5, 4.5, 6.5, 7.54];
  print(butarhaiToonuud);
  List<bool> trueFalse = [true, false, false, true];
  print(trueFalse);
  print(gahainuud.length);
  print(gahainuud[2]);
  for(int i = 0; i < gahainuud.length; i++){
    print(gahainuud[i]);
  }

  String cupCake = 'Cup Cake';
  tortnuud.add(cupCake);
  print(tortnuud);
  tortnuud.remove('cake');
  print(tortnuud);
  butarhaiToonuud[0] = 5.5;
  print(butarhaiToonuud);
}