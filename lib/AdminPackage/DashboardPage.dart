import 'package:flutter/material.dart';
import 'package:nabawy/AdminPackage/postsModel.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<PostsModel> postsList=[
    PostsModel(id: 1,title: "Mostafa123",desc: "hi i'm description",date: "12/7/2021"),
    PostsModel(id: 2,title: "Mostafa123",desc: "hi i'm description",date: "12/7/2021"),
    PostsModel(id: 3,title: "Mostafa123",desc: "hi i'm description",date: "12/7/2021"),
    PostsModel(id: 4,title: "Mostafa123",desc: "hi i'm description",date: "12/7/2021"),
    PostsModel(id: 5,title: "Mostafa123",desc: "hi i'm description",date: "12/7/2021"),
    PostsModel(id: 6,title: "Mostafa123",desc: "hi i'm description",date: "12/7/2021"),
    PostsModel(id: 7,title: "Mostafa123",desc: "hi i'm description",date: "12/7/2021"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          itemCount: postsList.length+1,
          itemBuilder: (context, index) {
            if(index==0){
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("id"),
                    ),
                      flex: 1,),
                    VerticalDivider(
                      width: 2,
                      color: Colors.grey,
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Title"),
                    ),
                      flex: 3,),
                    VerticalDivider(
                      width: 2,
                      color: Colors.grey,
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Description"),
                    ),
                      flex: 4,),
                    VerticalDivider(
                      width: 2,
                      color: Colors.grey,
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Date"),
                    ),
                      flex: 2,),
                    Expanded(child: Text(" "),
                      flex: 1,),
                  ],
                ),
              );
            }
            else{
              return
                Container(width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(postsList[index-1].id.toString()),
                      ),
                        flex: 1,),
                      VerticalDivider(
                        width: 2,
                        color: Colors.grey,
                      ),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(postsList[index-1].title),
                      ),
                        flex: 3,),
                      VerticalDivider(
                        width: 2,
                        color: Colors.grey,
                      ),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(postsList[index-1].desc),
                      ),
                        flex: 4,),
                      VerticalDivider(
                        width: 2,
                        color: Colors.grey,

                      ),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(postsList[index-1].date),
                      ),
                        flex: 2,),
                      Expanded(child: IconButton(icon: Icon(Icons.delete),color: Colors.red,onPressed: (){
                        setState(() {
                          postsList.removeAt(index-1);
                        });
                      },),
                        flex: 1,),
                    ],
                  ),
                );
            }
          },
          separatorBuilder: (context, index) => Divider(),
        ),
      ),
    );
  }
}
