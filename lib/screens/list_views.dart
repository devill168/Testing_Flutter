import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class List_View extends StatefulWidget {
  const List_View({super.key});

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  String img = "https://scontent.fpnh1-2.fna.fbcdn.net/v/t1.6435-9/118029539_2725156487808240_4778929791036366785_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=b8c2mHMucb4Q7kNvgGJkOZE&_nc_ht=scontent.fpnh1-2.fna&oh=00_AYB5wGf1p_-twBonZIaySL9cCYuIupVOM2yHfmsolqnKXg&oe=66698D4F";
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.53,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
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
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 270,
                        child: PageView(
                          controller: _controller,
                          children: [
                            Image.network("https://t3.ftcdn.net/jpg/05/98/81/84/360_F_598818426_8UFuAlLghptRMIEdOJ9BmlGu79B23ufl.jpg"),
                            Image.network("https://img.freepik.com/premium-photo/mosquito-white-background_495226-300.jpg"),
                            Image.network("https://lirp.cdn-website.com/c87ec269/dms3rep/multi/opt/mosquito-640w.jpg",),
                            Image.network("https://img.freepik.com/premium-photo/aedes-mosquito-white-transparent-background_737376-3294.jpg"),
                          ],
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: 4,
                        effect: const ExpandingDotsEffect(
                          dotWidth: 12,
                          dotHeight: 12,
                          radius: 12,
                          expansionFactor: 2.5,
                          dotColor: Colors.blueAccent,
                          activeDotColor: Colors.blue,
                          ),
                          onDotClicked: (index){}),
                    ],
                  ),
                  const SizedBox(height: 15),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Mosquito",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                         Text("genus Anopheles",style: TextStyle(fontSize: 20,color: Colors.grey)),
                       ],
                     ),
                     Row(
                       children: [
                        TextButton(
                            onPressed: (){},
                            child: Text("Detail Info ->",style: TextStyle(color: Colors.blue,fontSize: 20,))
                        ),
                       ],
                     ),
                   ],
                 ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: Offset(1.0,1.0),
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mosquitor Labotory", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                                Text("Labotory for Research only", style: TextStyle(color: Colors.white70,fontSize: 13)),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: (){},
                                    child: Icon(Icons.arrow_forward,color:Colors.blue,)
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("TOP INFORMATIONS",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        TextButton(onPressed: (){}, child:Text("More ->",style: TextStyle(color: Colors.blue,fontSize: 15),)),
                      ],
                    ),
                  ],
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      customInfo(title: "Entomology",url_image: "https://static.vecteezy.com/system/resources/previews/002/053/101/original/mosquito-isolated-on-white-background-free-vector.jpg",type: "Mosquito",name: "Vecteezy",description: "Malaria"),
                      SizedBox(width: 10),
                      customInfo(title: "Virus",url_image: "https://www.floridatoday.com/gcdn/presto/2020/03/08/PNDN/ca083b7e-d073-41f8-a5d6-296783b4cd96-GettyImages-1203594225.jpg?width=1200&disable=upscale&format=pjpg&auto=webp",type: "Virus",name:"Covid-19",description: "Corona"),
                      SizedBox(width: 10),
                      customInfo(title: "Helminth",url_image: "https://www.shutterstock.com/image-vector/cartoon-pink-worms-set-curled-260nw-1922824988.jpg",type: "Parasite", name: "parasitic worm", description: "Helminth"),
                      SizedBox(width: 10),
                      customInfo(title: "Isolated", url_image: "https://previews.123rf.com/images/lightwise/lightwise1805/lightwise180500028/101534493-cancer-tumor-cell-and-malignant-disease-anatomy-on-a-white-background-as-a-3d-illustration.jpg",type: "Cancer",name: "Brain Cancer"),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("LOGO IN MINISTRY OF HEALTH ",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text("More ->",style: TextStyle(color: Colors.blue,fontSize: 16)),
                        )
                      ],
                    ),
                  ],
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      customLogoPage(url_logo: "https://upload.wikimedia.org/wikipedia/en/3/30/MOH_logo.png", title: "MoH",view: "473k View"),
                      const SizedBox(width: 10),
                      customLogoPage(url_logo: "https://scontent.fpnh1-2.fna.fbcdn.net/v/t39.30808-6/272340276_300439808780939_5878146948444047659_n.png?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=Upj2n6tV4Y0Q7kNvgGUVaoE&_nc_oc=AdgPqdWSBs_-T3VUnJVJbCPi6E7PqBxnjLEW62YOQzCy4b-5GkuERqAPyEpAgCjj2rg&_nc_ht=scontent.fpnh1-2.fna&oh=00_AYCYSc_P4BL90Htg5e97K4cfRRUXz237dtVXpX7W9JC06Q&oe=6647F395",title: "NCHAD",view: "533k View"),
                      const SizedBox(width: 10),
                      customLogoPage(url_logo: "https://scontent.fpnh1-1.fna.fbcdn.net/v/t39.30808-6/255468195_105681508602328_1913527106872342355_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=3JGL7WVvu_cQ7kNvgEXqUEh&_nc_ht=scontent.fpnh1-1.fna&oh=00_AYCo2iCGn87j0h0qATl5eKiXhY4SqrtYe974CuOFbU1X2Q&oe=664801F1",title: "CNM",view: "368k View"),
                      const SizedBox(width: 10),
                      customLogoPage(url_logo: "https://scontent.fpnh1-1.fna.fbcdn.net/v/t39.30808-6/273159584_263691995898113_4722636533248392507_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=QUWD0EpBkSgQ7kNvgE0CGq4&_nc_ht=scontent.fpnh1-1.fna&oh=00_AYCODMzkcitmZnQGkT_zDNXxD53sbyJg5XzMKppffDJGzg&oe=6648227D",title: "CDC",view: "488k View"),
                      const SizedBox(width: 10),
                      customLogoPage(url_logo: "https://scontent.fpnh1-2.fna.fbcdn.net/v/t39.30808-6/337269902_938888210758203_2025189752378963447_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=qcBuNFOIkCsQ7kNvgESOJEB&_nc_ht=scontent.fpnh1-2.fna&oh=00_AYCF6bWrWQV6MLdb5UyrgSfAArjGas4QQcQIgOBKscGEZw&oe=6647F491",title: "TB",view: "269k View"),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: GNav(
          /*backgroundColor: Colors.black,*/
          activeColor: Colors.white,
          tabBackgroundColor: Colors.blueAccent.shade200,
          gap: 8,
          padding: EdgeInsets.all(16),
          onTabChange: (index){
            print(index);
          },
          tabs: const [
            GButton(icon: Icons.home, text: "Home"),
            GButton(icon: Icons.favorite_border, text: "Likes"),
            GButton(icon: Icons.search, text: "Search"),
            GButton(icon: Icons.settings, text: "Setting"),
          ],
        ),
      ),
    );
  }

  Container customLogoPage({String url_logo = "", String title = "", String view = ""}) {
    return Container(
                width: MediaQuery.of(context).size.width * 0.37,
                height: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(url_logo,width: 90,height: 100),
                   const Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(height: 25,),
                    ),
                    Text(title,style: TextStyle(color: Colors.deepOrange.shade300,fontSize: 18,fontWeight: FontWeight.bold)),
                    Text(view,style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400)),
                  ],
                ),
              );
  }


  Container customInfo({String title = "" , String url_image ="", String type = "", String name = "", String description = ""}) {
    return Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1 , 1),
                      blurRadius: 1,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(title ,style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Image.network(url_image,width: 200,height: 130),
                      Text(type,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15)),
                      Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                      Text(description,style: TextStyle(color: Colors.grey,fontSize: 15)),
                    ],
                  ),
                ),
              );
  }
}
