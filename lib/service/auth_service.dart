import 'package:firebase_auth/firebase_auth.dart';

User? get currentUser => FirebaseAuth.instance.currentUser;
bool get isAdmin => currentUser!.email == "admin@demo.com";
bool get isUser => currentUser!.email != "admin@demo.com";

class AuthService {
  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
