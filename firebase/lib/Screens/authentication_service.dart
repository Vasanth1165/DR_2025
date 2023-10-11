



import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
class Authentication{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  final db=FirebaseFirestore.instance.collection("users");

  Future signUpAun() async{
    try{
      await _auth.signInAnonymously();
      
    }catch(err){
      throw Exception(err);
    }
  }


  Future register(String email,String pass)async{
    try{
      final res=await _auth.createUserWithEmailAndPassword(email: email, password: pass);
      // ignore: unrelated_type_equality_checks
      if(res.toString()!=0){
        addUser(res.user!.uid,email);
      }
    }catch(err){
      throw Exception(err);
    }
  }

  Future addUser(String uid,String email)async{
    await FirebaseFirestore.instance.collection('Users').doc(uid).set({
      "email":email,
      "uid": uid,
      "todo":[],
      "userID":email.substring(0,(email.length)-10)
    });
    try{
      final DocumentSnapshot res=await FirebaseFirestore.instance.collection("Users").doc(uid).get();
      print(res.data());
    }catch(err){
      
    }
  }
  Future todo(String title,String task)async{
    try{
      await  db.doc(FirebaseAuth.instance.currentUser!.uid).update({
        "todo": title
      });
    }catch(err){
      throw Exception(err);
    }
  }

  Future upload() async{
    final ref=FirebaseStorage.instance.ref().delete();
    try{
      ref.then((value){
        
      }).onError((error, stackTrace){} );
    }catch(err){
      throw Exception(err);
    }
  }
}