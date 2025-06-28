import 'dart:io';
import 'test.dart';
import 'variables.dart';

void main() {
  //print("Enter your name?");
  //String? name = stdin.readLineSync();
  //print("Hello, $name! ");

  //dynamic userPassword = VarPassword({'user1': 'p123', 'user2': 'p456'});
  VarPassword varPassword = VarPassword();
  varPassword.addPassword('user1', 'p123');
  varPassword.addPassword('user2', 'p456');

  bool status = false;
  while(!status){
    MethodImplementation.displayMenu();
    int? choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        MethodImplementation.login(varPassword.passwords);
        break;
      case 2:
        MethodImplementation.buyProduct();
        break;
      case 3:
        MethodImplementation.cancelProduct();
        break;
      case 4:
        MethodImplementation.displayAllProducts();
        break;
      case 5:
        MethodImplementation.logout();
        break;
      case 6:
        status = true;
        break;
      default:
        print("Invalid choice");
    }
  }
}



