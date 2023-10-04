
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
      final res=await _auth.createUserWithEmailAndPassword(email: email, password: pass).then((value) => addUser(email.trim()));
    }catch(err){
      throw Exception(err);
    }
  }

  Future phone(String phoneNumber)async{
    try{
      await _auth.signInWithPhoneNumber(phoneNumber);
    }catch(err){
      throw Exception(err);
    }
  }
  Future addUser(String email)async{
    await FirebaseFirestore.instance.collection('Users').add({
      "email":email,
      "userID":email.substring((email.length)-10)
    });
  }
}