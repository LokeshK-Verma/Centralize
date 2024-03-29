import 'package:Centralize/screens/MainScreen.dart';
import 'package:Centralize/screens/authentication/createAccount.dart';
import 'package:Centralize/screens/authentication/registerForm.dart';
import 'package:Centralize/screens/authentication/sign_in/signin.dart';
import 'package:Centralize/service/createUserDatabase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'service/auth.dart';
import 'package:Centralize/checkUserPage.dart';
import 'package:Centralize/service/database.dart';
import 'package:Centralize/service/firestore_service.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);

    return StreamBuilder<CreateUserDatabase>(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            CreateUserDatabase user = snapshot.data;

            if (user == null) {
              return SignInPage();
            }
            return Provider<CreateUserDatabase>.value(
              value: user,
              child: CheckUserPage(user), // Provider<Database>(
              //  create: (_) => FirestoreDatabase(uid: user.uid),
              //   child:  CheckUserPage(user),//MainScreen(),
              // ),
            );
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
