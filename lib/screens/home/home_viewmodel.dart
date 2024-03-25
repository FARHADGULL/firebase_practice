import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final user = FirebaseAuth.instance.currentUser!;

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();

    user.delete();
  }
}
