mixin Validators {
  bool validateName(String name) {
    if (name.length < 3 || name.isEmpty) {
      return false;
    }
    return true;
  }

  bool validateEmail(String email) {
    return RegExp(
            r"[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(email);
  }

  bool validatePassword(String password) {
    if (password.length < 6 || password.isEmpty) {
      return false;
    }
    return true;
  }
}
