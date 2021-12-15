import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
CollectionReference user = FirebaseFirestore.instance.collection('user');

FirebaseAuth auth = FirebaseAuth.instance;
//change sign is a stream for knowing if the user is signed in or not
Stream<User?> changesign = auth.authStateChanges();

Future<Map<String ,String>> signinemail(String email, String password) async {
  try {
    
        await auth.signInWithEmailAndPassword(email: email, password: password);
    return {'status':'success'};
  } on FirebaseException catch (e) {
    return {'status':e.toString()};
    
  }
}

//function for logout
void signout() async {
  auth.signOut();
  print("Signed out");
}

//to register a new user
Future<Map<String,String>> register(String email, String password,String name,String phonenumber) async {
  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    
    createuserprofile(userCredential.user!.uid, email,name,phonenumber);
    return {'status':"success"};
  } on FirebaseException catch (e) {
    return {'status':e.toString()};
  }
}

//resetting password
sendpassreset(String email) async {
  try {
    await auth.sendPasswordResetEmail(email: email);
  } on FirebaseApp catch (e) {
    print(e.toString());
  }
}

//tochange password
void changepass(String email, String oldpass, String newpass) async {
  try {
    await auth.signInWithEmailAndPassword(email: email, password: oldpass);
    await auth.currentUser!.updatePassword(newpass);
  } on FirebaseException catch (e) {
    print(e.toString());
  }
}
Future<void> createuserprofile(
  String uid,
  String email,
  String name,
  String phonenumber,
) async {
  DocumentReference documentReference = user.doc(uid);

  documentReference.set({
    'id': uid,
    'name': name,
    'email': email,
    'phonenumber':phonenumber,
    'role': "user",
  });
}