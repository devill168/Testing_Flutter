import 'package:flutter/material.dart';

class List_View extends StatefulWidget {
  const List_View({super.key});

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  String img = "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(img),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.yellowAccent,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(35)
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          const Row(
                            children: [
                              Text("IDR",style: TextStyle(fontSize: 18,color: Colors.grey)),
                              SizedBox(width: 2),
                              Text("17,7jt",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const SizedBox(width: 13),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: (){},
                                  child: Text("+",style: TextStyle(color: Colors.white,fontSize: 25)),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  elevation: 0
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(),

          Container(),
        ],
      ),
    );
  }
}
