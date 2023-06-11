import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter_application_7/model/user.dart';

class DataBase {
  final String? uid;
  DataBase({
    this.uid,
  });
  final CollectionReference medecinCollection =
      FirebaseFirestore.instance.collection("Patient");
  Future<void> savePatient(
    String email,
    String password,
    String nom,
  ) async {
    return await medecinCollection.doc(uid).set({
      'email': email,
      'password': password,
      "nom": nom,
    });
  }
}
/*Patient _userFromSnashot(DocumentSnapshot snapshot){
  return Patient(
    uid:  uid,
    email: snapshot
    password: snapshot.data()['email'],

  );
}
  Stream<Medecin> get user {
    return medecinCollection.doc(uid).snapshots().map(_userFromSnashot);
  }
}
*/