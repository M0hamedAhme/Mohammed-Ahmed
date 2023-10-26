/*import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final FirebaseFirestore firestore = FirebaseFirestore.instance;

// قراءة البيانات من مجموعة معينة في Firestore
void readData() async {
  CollectionReference users = firestore.collection('users');
  QuerySnapshot querySnapshot = await users.get();
  querySnapshot.docs.forEach((doc) {
    print(doc.data());
  });
}

class QuerySnapshot {
}

class CollectionReference {
}

 */