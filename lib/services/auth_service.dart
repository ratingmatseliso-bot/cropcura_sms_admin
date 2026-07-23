class RegisteredUser {
  final String fullName;
  final String email;
  final String password;
  final String phone;

  const RegisteredUser({
    required this.fullName,
    required this.email,
    required this.password,
    required this.phone,
  });
}

class AuthService {
  static final List<RegisteredUser> _registeredUsers = [];

  static void registerUser({
    required String fullName,
    required String email,
    required String password,
    required String phone,
  }) {
    final normalizedEmail = email.trim().toLowerCase();
    final existingIndex = _registeredUsers.indexWhere((user) => user.email.toLowerCase() == normalizedEmail);

    if (existingIndex >= 0) {
      _registeredUsers[existingIndex] = RegisteredUser(
        fullName: fullName.trim(),
        email: normalizedEmail,
        password: password,
        phone: phone.trim(),
      );
      return;
    }

    _registeredUsers.add(
      RegisteredUser(
        fullName: fullName.trim(),
        email: normalizedEmail,
        password: password,
        phone: phone.trim(),
      ),
    );
  }

  static bool loginUser({required String email, required String password}) {
    final normalizedEmail = email.trim().toLowerCase();
    return _registeredUsers.any(
      (user) => user.email.toLowerCase() == normalizedEmail && user.password == password,
    );
  }

  static String? getRegisteredName(String email) {
    final normalizedEmail = email.trim().toLowerCase();
    final user = _registeredUsers.firstWhere(
      (item) => item.email.toLowerCase() == normalizedEmail,
      orElse: () => const RegisteredUser(fullName: '', email: '', password: '', phone: ''),
    );
    return user.fullName.isEmpty ? null : user.fullName;
  }
}
