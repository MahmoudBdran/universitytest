import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Uploads",style: GoogleFonts.lato(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 35
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:9.0),
              child: Text(
                "New Title",
                style: GoogleFonts.lato(

                    fontWeight: FontWeight.bold,
                    color:Colors.black54
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0,
                        horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey[400]
                      ),

                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400])
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:9.0),
              child: Text(
                "New Description",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color:Colors.black54
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0,
                        horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey[400]
                      ),

                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400])
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 40,
                onPressed: () {
                },
                color: Color(0xff343434),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Text(
                  "Submit", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,

                ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
