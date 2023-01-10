class UserData {
  Map<String, dynamic> decodedToken;
  static String? firstName;
  static String? lastName;
  static String? email;
  static String? userSub;

  UserData(this.decodedToken) {
    firstName = decodedToken['given_name'];
    lastName = decodedToken['family_name'];
    email = decodedToken['email'];
    userSub = decodedToken['sub'];
  }

  static String getFullName() {
    return '${firstName!} ${lastName!}';
  }

  static String getEmail() {
    return email!;
  }

  static String getUserSub() {
    if (userSub != null) {
      return userSub!;
    } else {
      return "";
    }
  }
}
