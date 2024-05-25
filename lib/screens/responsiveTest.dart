import 'package:flutter/material.dart';
import 'package:testing_flutter/config/responsiveScreen.dart';

class HomeResponsive extends StatefulWidget {
  const HomeResponsive({super.key});

  @override
  State<HomeResponsive> createState() => _HomeResponsiveState();
}

class _HomeResponsiveState extends State<HomeResponsive> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Test"),
        centerTitle: true,
      ),
      body: Responsive(
          mobile: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.87,
                color: Colors.blueAccent,
                child: Center(child: Text("Size Phone \n $width",style: TextStyle(color: Colors.white,fontSize: 20))),
              )
            ],
          ),


          tablet: MediaQuery.of(context).orientation == Orientation.landscape? /*Landscape*/
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.87,
                    color: Colors.deepPurple,
                    child: Center(child: Text("Advertisement ",style: TextStyle(color: Colors.white,fontSize: 50))),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.87,
                    color: Colors.deepPurpleAccent,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.3,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        );
                      },
                      itemCount: 9,
                    ),
                  )
                ],
              ),
            ],
          )

          : /*Portrait*/
          Column(
            children: [
                  LayoutBuilder(
                      builder: (context , constraints){
                        if(height >= 650 && height <= 700){
                          return Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.915,
                            color: Colors.deepPurpleAccent,
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 2,
                                mainAxisSpacing: 2,
                              ),
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.all(5),
                                  width: MediaQuery.of(context).size.width * 0.5,
                                  height: MediaQuery.of(context).size.height * 0.15,
                                  color: Colors.white,
                                );
                              },
                              itemCount: 18,
                            ),
                          );
                        }
                        else if(height >= 701 && height <= 865){
                          return Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.92,
                            color: Colors.deepPurpleAccent,
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 2,
                                mainAxisSpacing: 2,
                              ),
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.all(5),
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  height: MediaQuery.of(context).size.height * 0.15,
                                  color: Colors.white,
                                );
                              },
                              itemCount: 18,
                            ),
                          );
                        }
                        else {
                          return Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.935,
                            color: Colors.deepPurpleAccent,
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 2,
                                mainAxisSpacing: 2,
                              ),
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.all(5),
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  height: MediaQuery.of(context).size.height * 0.15,
                                  color: Colors.white,
                                );
                              },
                              itemCount: 18,
                            ),
                          );
                        }
                      }
                  )
            ],
          ),





          desktop: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.87,
                color: Colors.redAccent,
                child: Center(child: Text("Size Desktop \n $width",style: TextStyle(color: Colors.white,fontSize: 50))),
              )
            ],
          ),
      ),
    );
  }
}
