import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCar extends StatefulWidget {
  const HomeCar({super.key});

  @override
  State<HomeCar> createState() => _HomeCarState();
}
final _controller=PageController();
class _HomeCarState extends State<HomeCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              width: MediaQuery.of(context).size.width * 1,
              height: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customIcon(icon: Icons.arrow_back,haveborder: false),
                      Row(
                        children: [
                          customIcon(icon: Icons.bookmark,color: Colors.blue,),
                          SizedBox(width: 10),
                          customIcon(icon: Icons.drive_folder_upload,haveborder: false),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  Text("Camaro",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  Text("Charolet",style: TextStyle(fontSize: 15,color: Colors.grey)),
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 280,
                        child: PageView(
                          controller: _controller,
                          children: [
                            Image.network("https://c4.wallpaperflare.com/wallpaper/173/858/345/mclaren-white-background-supercar-mclaren-wallpaper-preview.jpg",fit: BoxFit.fill),
                            Image.network("https://images.dealer.com/ddc/vehicles/2023/McLaren/720S/Coupe/still/front-left/front-left-640-en_US.jpg",fit: BoxFit.fill),
                            Image.network("https://4kwallpapers.com/images/wallpapers/mclaren-sabre-mso-white-background-2021-5k-8k-3840x2160-4038.jpeg"),
                            Image.network("https://img.freepik.com/premium-photo/car-isolated-white-background-mclaren-720s-white-car-blank-clean-white-backgro-white-black_655090-717587.jpg"),
                          ],
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: 4,
                        effect: SwapEffect(
                            activeDotColor: Colors.blueAccent,
                            dotColor: Colors.blueAccent.withOpacity(0.5),
                            dotWidth: 20,
                            dotHeight: 10,
                            paintStyle: PaintingStyle.stroke
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customPriceCar(colorBox: Colors.blueAccent,colorText: Colors.white,month: "12 Months",price: "450 Dollar",Info: "US"),
                        SizedBox(width: 10),
                        customPriceCar(month: "6 Months",price: "600 Dollar",Info: "US"),
                        SizedBox(width: 10),
                        customPriceCar(month: "1 Months",price: "900 Dollar",Info: "US"),
                        SizedBox(width: 10),
                        customPriceCar(month: "1 Months",price: "900 Dollar",Info: "US"),
                        SizedBox(width: 10),
                        customPriceCar(month: "6 Months",price: "600 Dollar",Info: "US"),
                        SizedBox(width: 10),
                        customPriceCar(month: "1 Months",price: "900 Dollar",Info: "US"),
                        SizedBox(width: 10),
                        customPriceCar(month: "1 Months",price: "900 Dollar",Info: "US"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row customPriceCar({Color colorBox = Colors.white, Color colorText =Colors.blue, String month ="", String price = "", String Info = "'" }) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: colorBox,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blueAccent)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(month,style: TextStyle(color: colorText,fontSize: 12)),
                SizedBox(height: 15),
                Text(price,style: TextStyle(color: colorText,fontSize: 15,fontWeight: FontWeight.bold)),
                Text(Info,style: TextStyle(color: colorText,fontSize: 12)),
              ],
            ),
          ),
        )
      ],
    );
  }

  Container customIcon({required IconData icon, Color color =Colors.white, bool haveborder = true}) {
    return Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(15),
                    border: haveborder? Border.all(color: Colors.black) : null,
                  ),
                  child: Icon(icon),
                );
  }
}
