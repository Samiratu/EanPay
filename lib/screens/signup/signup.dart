import 'package:flutter/material.dart';
import './business/business_account.dart';
import './personal/personal_account.dart';


class  Signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SignupState();
    
    }
    


class SignupState extends State<Signup> with SingleTickerProviderStateMixin  {
   TabController controller;
   void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }
   @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
       title: Text(
          "Create Account",
          style: TextStyle(
              fontSize: 24.0,
              letterSpacing: 3.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
         bottom: TabBar(
          // onTap: ,
          controller: controller,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.person),
              text: "Personal",
            ),
            Tab(
              icon: Icon(Icons.business),
              text: "Business",
            )
          ],
        ),
    ),
    body: TabBarView(
      controller: controller,
      children: <Widget>[PersonalAccount(),BusinessAccount()]
      ),
    );

}

