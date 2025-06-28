class VarPassword{

  Map<String, String> passwords = {};

  //VarPassword(this.passwords);

  void addPassword(String user, String password) {
    passwords[user] = password;
  }

  static void printScores(Map<String, String> passwords) {
    passwords.forEach((user, password) {
      print('$user: $password');
    });
  }
}
