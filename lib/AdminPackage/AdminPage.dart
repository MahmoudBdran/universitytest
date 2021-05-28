import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabawy/AdminPackage/DashboardPage.dart';
import 'package:nabawy/AdminPackage/NewsPage.dart';
import 'package:nabawy/AdminPackage/postsModel.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  var pageBody;
  @override
  void initState() {
    // TODO: implement initState
    pageBody=DashBoardPage();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 10,
        child: ListView(
          children: [
            DrawerHeader(decoration: BoxDecoration(
              color:Colors.grey,
            ),child: UserAccountsDrawerHeader(accountName: Text("Nabawy fayed",style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,fontSize: 25
            ),), accountEmail: Text("Nabawy@gmail.com",style: GoogleFonts.lato(
              fontWeight: FontWeight.normal,color: Colors.black54
            ),))),
            ListTile(
              leading: Icon(Icons.dashboard_outlined,color: Colors.grey,),
              title: Text("Dashboard"),
              onTap: (){setState(() {
                pageBody=DashBoardPage();
                Navigator.pop(context);
              });},
            ),

            ListTile(
              leading: Icon(Icons.speaker_notes,color: Colors.grey,),
              title: Text("News"),
              onTap: (){setState(() {
                pageBody=NewsPage();
                Navigator.pop(context);
              });},
            ),

          ],
        )
      ),
      appBar: AppBar(
        title: Text("Admin",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Color(0xff393939),
      ),
      body: pageBody,
    );
  }
}
