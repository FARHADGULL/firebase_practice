import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  var user = FirebaseAuth.instance.currentUser!;

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    //Get.toNamed('/loginView');
  }
}
