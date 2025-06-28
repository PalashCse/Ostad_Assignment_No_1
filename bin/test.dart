import 'dart:io';
import 'variables.dart';

class MethodImplementation {

  static void displayMenu() {
    print("=================================");
    print("1. Log in");
    print("2. Buy product");
    print("3. Cancel product");
    print("4. Display all products");
    print("5. Sign out");
    print("6. Exit");
    print("==================================");
    print("Enter your choice: ");
  }

  static void login(Map<String, String> passwords){
    print("Enter username: ");
    String? userName = stdin.readLineSync();
    print("Enter password: ");
    String? password = stdin.readLineSync();

    if(passwords.containsKey(userName)){
      String? userPassword = passwords[userName];
      if(userPassword == password){
        print("Login successful");
      }else{
        print("Password is incorrect");
      }
    }else{
      print("Invalid username or password");
    }

  }

  static void buyProduct(){
    print("2. Buy product");
  }

  static void cancelProduct(){
    print("3. Cancel product");
  }

  static void displayAllProducts(){
    print("4. Display all products");
  }

  static void logout(){
    print("5. Sign out");
  }
}
