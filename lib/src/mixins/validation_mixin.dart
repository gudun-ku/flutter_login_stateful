class ValidationMixin {
  String validateEmail(String value) {
    if (value.isEmpty ||
        !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
      return 'Valid Email is required.';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be at least 4 characters long';
    }
    return null;
  }
}
