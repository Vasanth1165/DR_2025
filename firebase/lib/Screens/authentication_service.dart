
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Authentication{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  final FirebaseFirestore db=FirebaseFirestore.instance;

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
    final res=  await FirebaseFirestore.instance.collection('Users').doc(uid).get();
    print(jsonDecode(res.toString()));
  }

  Future addTodo()async{
    try{
      final res=await  FirebaseFirestore.instance.collection('Users').doc('EM8G8bJO6dPnhQQ9MLlWa98ZYFA2').get();
      print(res);
    }catch(err){
      throw Exception(err);
    }
  }
}