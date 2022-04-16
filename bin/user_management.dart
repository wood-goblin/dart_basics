class User {
  String email;
  User(this.email);
}


mixin UserMailMethods on User {
  String getMailSystem() {
    return email.split('@')[1];
  }
}


class AdminUser extends User with UserMailMethods {
  AdminUser(String email) : super(email);
}


class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}


class UserManager<T extends User> {
  var users = <T>[];

  void userAdd(T user) => users.add(user);

  void userRemove(T user) => users.remove(user);

  void userPrintEmails() {
    for(T user in users) {
      if (user is AdminUser) {
        print(user.getMailSystem());
      } else {
        print(user.email);
      }
    }
  }
}


void main() {
  print("ЗАДАЧА 8. User management classes");
  var user1 = AdminUser("admin@mail.ru");
  var user2 = GeneralUser("general@gmail.com");
  //print(user.getMailSystem());

  var um = UserManager();
  um.userAdd(user1);
  um.userAdd(user2);
  um.userAdd(GeneralUser("qwe@qwe.qwe"));
  um.userRemove(user2);
  um.userPrintEmails();

}