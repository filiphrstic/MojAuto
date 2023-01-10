/// A class used for passing arguments to the login screen
class LoginArguments {
  final int navigationMenuSelectedIndex;
  // route to navigate after logging in/out
  final String route;

  LoginArguments(
    this.navigationMenuSelectedIndex,
    this.route,
  );
}
