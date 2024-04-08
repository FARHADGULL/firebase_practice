import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  RxString user = FirebaseAuth.instance.currentUser!.email!.obs;

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
