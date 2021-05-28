import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabawy/AdminPackage/AdminPage.dart';
import 'package:nabawy/HomePackage/CourseModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CourseModel> myList= [
    CourseModel(course_name: "C++ Programming-1",course_date: "12/5/2021",course_desc: "learning basic c++ programming language to make simple apps with console"),
    CourseModel(course_name: "C++ Programming-2",course_date: "13/7/2021",course_desc: "learning advanced c++ OOP programming language to make big apps with GUI"),
    CourseModel(course_name: "JAVA Programming-1",course_date: "22/9/2021",course_desc: "learning basic JAVA programming language to make simple apps with console"),
    CourseModel(course_name: "JAVA Programming-2",course_date: "1/1/2021",course_desc: "learning advanced JAVA OOP programming language to make simple apps with GUI"),
    CourseModel(course_name: "Signal Processing",course_date: "31/8/2021",course_desc: "learning digital signal processing to deal with images and sounds"),
    CourseModel(course_name: "C++ Programming-1",course_date: "12/5/2021",course_desc: "learning basic c++ programming language to make simple apps with console"),
    CourseModel(course_name: "C++ Programming-2",course_date: "13/7/2021",course_desc: "learning advanced c++ OOP programming language to make big apps with GUI"),
    CourseModel(course_name: "JAVA Programming-1",course_date: "22/9/2021",course_desc: "learning basic JAVA programming language to make simple apps with console"),
    CourseModel(course_name: "JAVA Programming-2",course_date: "1/1/2021",course_desc: "learning advanced JAVA OOP programming language to make simple apps with GUI"),
    CourseModel(course_name: "Signal Processing",course_date: "31/8/2021",course_desc: "learning digital signal processing to deal with images and sounds"),
    CourseModel(course_name: "C++ Programming-1",course_date: "12/5/2021",course_desc: "learning basic c++ programming language to make simple apps with console"),
    CourseModel(course_name: "C++ Programming-2",course_date: "13/7/2021",course_desc: "learning advanced c++ OOP programming language to make big apps with GUI"),
    CourseModel(course_name: "JAVA Programming-1",course_date: "22/9/2021",course_desc: "learning basic JAVA programming language to make simple apps with console"),
    CourseModel(course_name: "JAVA Programming-2",course_date: "1/1/2021",course_desc: "learning advanced JAVA OOP programming language to make simple apps with GUI"),
    CourseModel(course_name: "Signal Processing",course_date: "31/8/2021",course_desc: "learning digital signal processing to deal with images and sounds"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff561616),
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10,),
              Image.asset("images/menoufia.png",width: 50,height: 50,),
              Text("كليةالحاسبات والمعلومات",style: TextStyle(
                color: Color(0xffffffff),
              ),),
            ],

          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.settings,),color: Colors.white ,onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AdminPage(),));
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Carousel(
                images: [
                  AssetImage("images/bg1.jpg"),
                  AssetImage("images/bg2.jpg"),
                  AssetImage("images/bg3.jpg"),
                ],
                dotSize: 5,
                dotColor: Colors.white,
                dotBgColor: Colors.grey.withOpacity(0.0),

              ),
            ),
           Container(
             margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
             height: MediaQuery.of(context).size.height-260,width: MediaQuery.of(context).size.width,
           child: ListView.builder(
             itemCount: myList.length,
             itemBuilder: (context, index) {
             return  Container(
               margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
               width:  MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                       spreadRadius: 5,
                       blurRadius: 7,
                       offset: Offset(0, 3), // changes position of shadow
                     ),
                   ],
                   border: Border.all(color: Colors.grey[300],width: 1),
                   borderRadius: BorderRadius.all(Radius.circular(10))

               ),

               child: Column(
                 children: [
                   Row(
                     children: [
                       ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(10), bottomRight: Radius.circular(15)),
                           child: Image.asset("images/sunset.jpg",height: 100,width: 120,fit: BoxFit.cover,)),

                       SizedBox(width: 30,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(myList[index].course_name,style: GoogleFonts.lato(
                               fontWeight: FontWeight.bold,
                               fontSize: 18
                           ),),
                           Text(myList[index].course_date,style: TextStyle(
                               fontSize: 15,
                             fontWeight: FontWeight.normal
                           ),)
                         ],
                       )
                     ],
                   )
                   // Container(
                   //   child: ListTile(
                   //     leading: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("images/sunset.jpg")),
                   //     title: Text("Programming-1"),
                   //     subtitle: Text("20/7/2021"),
                   //
                   //   ),
                   // ),
                   ,Container(alignment: Alignment.center,
                     width: MediaQuery.of(context).size.width,
                     height: 30,
                     decoration: BoxDecoration(
                         color: Color(0xffe012de),
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                     ),
                     child: Text("Enroll Now!",style: TextStyle(color: Colors.white),),)
                 ],
               ),);
           },),)
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height/1.5,
            //   margin: EdgeInsets.symmetric(horizontal: 30),
            //
            //   child: Card(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     elevation: 20,
            //    child: Column(
            //      children: [
            //        Expanded(
            //            flex: 2,
            //            child: Image.asset("images/sunset.jpg",fit: BoxFit.cover,
            //              width: MediaQuery.of(context).size.width,)
            //        ),
            //        Expanded(flex:1,
            //            child: Padding(
            //              padding: const EdgeInsets.symmetric(vertical: 30),
            //              child: Text("20/7/2021"),
            //            )
            //        ),
            //        Expanded(flex:1,
            //            child: Text("Programming-1")
            //        ),
            //        Expanded(flex: 1,
            //          child: Padding(
            //            padding: const EdgeInsets.symmetric(horizontal: 18),
            //            child: Text("lorem ipsum sdfsdf "
            //                "lorem ipsum sdfsdf "
            //                "lorem ipsum sdfsdf "
            //                "lorem ipsum sdfsdf "
            //                "lorem ipsum sdfsdf "
            //                "lorem ipsum sdfsdf "
            //                "lorem ipsum sdfsdf",overflow: TextOverflow.fade,),
            //          ),
            //        ),
            //        Expanded(flex:1,child: Container(
            //          alignment: Alignment.center,
            //          width: MediaQuery.of(context).size.width,
            //          color: Color(0xffff47fd),
            //          child: Text("Enroll Now.",style: TextStyle(
            //            color: Colors.white,
            //            fontSize: 20,
            //            fontWeight: FontWeight.bold
            //          ),),
            //        ))
            //      ],
            //    ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
