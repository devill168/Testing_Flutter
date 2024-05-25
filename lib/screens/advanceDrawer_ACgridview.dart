import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class AdvanceDrawers extends StatefulWidget {
  const AdvanceDrawers({super.key});

  @override
  State<AdvanceDrawers> createState() => _AdvanceDrawersState();
}
final advencedDrawerController = AdvancedDrawerController();
class _AdvanceDrawersState extends State<AdvanceDrawers> {
  bool isOpen = false;
  @override

  List<Iconss> listIcon = [
    Iconss(icon: Icons.home,title: "Home"),
    Iconss(icon: Icons.phone_iphone,title: "Phone"),
    Iconss(icon: Icons.compare_arrows,title: "Exchange"),
    Iconss(icon: Icons.qr_code,title: "QR Code"),
    Iconss(icon: Icons.read_more,title: "Sent Money"),
    Iconss(icon: Icons.account_balance_wallet,title: "Balance"),
    Iconss(icon: Icons.pie_chart,title: "Report"),
    Iconss(icon: Icons.monetization_on,title: "Saving"),
    Iconss(icon: Icons.local_mall,title: "FeedNews"),

  ];


  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: advencedDrawerController,
      backdropColor: Colors.blueGrey,
        animationCurve: Curves.easeInOut,
        childDecoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
        ),
        animationDuration: Duration(milliseconds: 300),
        child:Scaffold(
          appBar: AppBar(
            backgroundColor:  Color(0xff2471A3),
            title:  Text("CNM",style: const TextStyle(color: Colors.white)),
            leading: IconButton(
              onPressed: (){
                drawerControl();
              },
              icon: const Icon(Icons.menu,color: Colors.white),
            ),
          ),

          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.475,
                decoration:  BoxDecoration(
                    gradient: RadialGradient(colors: [Colors.white,Color(0xff2471A3)]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1,1),
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ]
                ),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        crossAxisCount: 3
                    ),  /* How Many Row and Columns*/
                    // itemCount: 9,
                    itemCount: listIcon.length,
                    itemBuilder: (context, index){
                      return Container(
                        color:  Color(0xff2471A3),
                        margin:  EdgeInsets.all(0.1),
                        /*color: listColors[index].color,*/     /*Add Color to Gridview*/
                        /*child: Icon(Icons.home)*/
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /*Expanded(child: Icon(listIcon[index].icon,color: Colors.white,size: 40,))*/
                            Icon(listIcon[index].icon,color: Colors.white,size: 35),
                            SizedBox(height: 10),
                            Text(listIcon[index].title,style: TextStyle(color: Colors.white,fontSize: 15))
                          ],
                        ),
                      );
                    }
                ),
              ),
            ],
          ),


        ),
      drawer: SafeArea(
        child: Column(
          children: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.flutter_dash_outlined,size: 100,color: Colors.white,)
            ),
            const Divider(indent: 20),
          ],
        ),
      ),
    );
  }
  void drawerControl(){
        advencedDrawerController.showDrawer();
    }
  }

class Iconss {
  final IconData icon;
  final String title;

  Iconss({required this.icon,required this.title});
}




