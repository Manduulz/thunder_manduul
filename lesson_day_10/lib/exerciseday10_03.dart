abstract class Account {
  int accountNumber;
  double balance;
  Account(this.accountNumber, this.balance);
  double deposit(double ammount);
  double withdraw(double ammount);
  String typeOfAccount();
}
class SavingAccount extends Account {
  SavingAccount(int accountNumber, double balance) : super (accountNumber, balance);
  @override
  double deposit(double ammount) {
   return balance + ammount;
  }

  @override
  String typeOfAccount() {
    // TODO: implement typeOfAccount
    return "Savings Account";
  }

  @override
  double withdraw(double ammount) {
    // TODO: implement withdraw
    if(balance - ammount < 0){
      print('Insufficient Balance');
      return balance;
    }else{
      return balance - ammount;
    }
  }
}
class CurrentAccount extends Account {
  CurrentAccount(int accountNumber, double balance) : super (accountNumber, balance);

  @override
  double deposit(double ammount) {
    // TODO: implement deposit
    return balance + ammount;
  }

  @override
  String typeOfAccount() {
    // TODO: implement typeOfAccount
    return "Current Account";
  }

  @override
  double withdraw(double ammount) {
    // TODO: implement withdraw
    if(balance - ammount < 0){
      print('Insufficient Balance');
      return balance;
    }else{
      return balance - ammount;
    }
  }
  }
  void main() {
  final SavingAccount dans = SavingAccount(55667788, 2000.0);
  print(dans.typeOfAccount());
  print(dans.deposit(1500.0));
  print(dans.withdraw(450.0));
  print(dans.typeOfAccount());
  print(dans.deposit(500.0));
  print(dans.typeOfAccount());
  final CurrentAccount dansDans = CurrentAccount(11223344, 7500.0);
  print(dansDans.deposit(2500.0));
  print(dansDans.typeOfAccount());
  print(dansDans.withdraw(3000.0));

  }
