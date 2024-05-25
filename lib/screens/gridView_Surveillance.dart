import 'package:flutter/material.dart';
import 'package:testing_flutter/screens/login_cnm.dart';
import '../models/picGridView.dart';
import 'list_views.dart';

class Gridsview_Surveillance extends StatelessWidget {
   Gridsview_Surveillance({super.key});


/*  final List<DataPic> picGridView = [
    DataPic(images: "assets/surveillance.png",nameTitle: "Surveillance"),
    DataPic(images: "assets/forest.png",nameTitle: "Last Mile"),
    DataPic(images: "assets/database.png",nameTitle: "Offline Data"),
    DataPic(images: "assets/setting.png",nameTitle: "Setting"),
  ];*/

  final List<DataPic> iconGridView = [
    DataPic(icon: Icons.checklist,nameTitle: "Surveillance"),
    DataPic(icon: Icons.forest,nameTitle: "Last Mile"),
    DataPic(icon: Icons.storage,nameTitle: "Offline Data"),
    DataPic(icon: Icons.settings,nameTitle: "Setting"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assement Last Mile & Surveillance"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 2,
                childAspectRatio: 1.3,
            ),
            itemBuilder: (context,index){
              return Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.15,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.lightBlue),
                        color: Colors.white, /*Background Color Main-Gridview*/
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.3,0.3),
                            blurRadius: 3,
                            spreadRadius: 1,
                          ),
                        ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.10,
                         /* decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(picGridView[index].images),scale: 1.4),
                          ),*/
                          child: IconButton(onPressed: (){
                            if(index == 0){
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Login()),(route) => false);
                            }
                            else if(index == 1){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => const List_View()));
                            }
                          }, icon: Icon(iconGridView[index].icon,color: Colors.lightBlue,size: 35,)),
                        ),
                        Divider(color: Colors.lightBlue.shade300),
                        Text(iconGridView[index].nameTitle,style: TextStyle(color: Colors.lightBlue,fontSize: 15))
                      ],
                    ),
                  ),
                ],
              );
            },
            itemCount: iconGridView.length,
        ),
      ),
    );
  }
}
