void main() {
  final BankCustomer maleCustomer = BankCustomer();
  maleCustomer.accountNumber = 5429533695;
  maleCustomer.accountBalance = 0.00;
  maleCustomer.customerName = 'Bold';
 maleCustomer.customerInfo();
}

class BankCustomer {
  int? accountNumber;
  double? accountBalance;
  String? customerName;

  void customerInfo(){
    print("Customer's name is $customerName, "
        "Customer's account number is $accountNumber, "
        "Customer's account balance: $accountBalance");
  }
}