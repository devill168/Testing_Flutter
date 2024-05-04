import 'package:flutter/material.dart';

class HomeCar extends StatefulWidget {
  const HomeCar({super.key});

  @override
  State<HomeCar> createState() => _HomeCarState();
}

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
                  Container(
                    width: double.infinity,
                    height: 280,
                    child: PageView(
                      children: [
                        Image.network("https://c4.wallpaperflare.com/wallpaper/173/858/345/mclaren-white-background-supercar-mclaren-wallpaper-preview.jpg",fit: BoxFit.fill),
                        Image.network("https://w0.peakpx.com/wallpaper/412/597/HD-wallpaper-white-ferrari-car-cars-fast-ferrari-nfs-road-speed-wheel-wheels-white.jpg",fit: BoxFit.fill),
                        Image.network("https://4kwallpapers.com/images/wallpapers/mclaren-sabre-mso-white-background-2021-5k-8k-3840x2160-4038.jpeg"),
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
