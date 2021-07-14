import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sidehustlefoodrecipe/recipe.dart';

class FirestoreService {
  static final FirestoreService _firestoreService = FirestoreService._internal();
  FirebaseFirestore _db = FirebaseFirestore.instance;

  FirestoreService._internal();

  factory FirestoreService() {
    return _firestoreService;
  }

  Stream<List<Food>> getFoods() {

    return _db.collection('foods').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Food.fromMap( doc.data() ,doc.id),).toList());
  }

}
