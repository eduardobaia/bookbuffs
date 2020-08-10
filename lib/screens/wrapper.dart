import 'package:book_buffs/authenticate/authenticate.dart';
import 'package:book_buffs/home/home.dart';
import 'package:book_buffs/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);


    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
