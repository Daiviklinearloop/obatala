import 'package:flutter/material.dart';
import 'package:obatala/presentation/Dashboard/Drawer.dart';

class CommonScafford extends StatelessWidget {

  CommonScafford({Key? key,required this.child, required this.commonAppBar}) : super(key: key);

  Widget child;
  AppBar commonAppBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: commonAppBar,
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        body: child
    );
  }
}
