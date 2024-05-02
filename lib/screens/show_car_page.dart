import 'package:flutter/material.dart';

class ShowCarPage extends StatefulWidget {
  const ShowCarPage({super.key});

  @override
  State<ShowCarPage> createState() => _ShowCarPageState();
}


class _ShowCarPageState extends State<ShowCarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea (
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 550,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customIcon(icon: Icons.arrow_back,),
                              Row(
                                children: [
                                  customIcon(icon: Icons.bookmark,color: Colors.blue),
                                  SizedBox(width: 10),
                                  customIcon(icon: Icons.cloud_done),
                                ],
                              )
                            ]),
                        Text("Camaro",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                        Text("Charolet",style: TextStyle(color: Colors.grey,fontSize: 15)),
                        SizedBox(height: 5),
                        Container(
                          width: double.infinity,
                          height: 260,
                          child: PageView(
                            children: [
                              Image.network("https://wallpapers.com/images/featured/sports-car-avizicp7crf8i0ew.jpg",fit: BoxFit.fill),
                              Image.network("https://i.redd.it/4k-wallpaper-sports-cars-on-track-v0-3kgox8x929sa1.jpg?width=3840&format=pjpg&auto=webp&s=3431552ecce4b0d74959656baee479e6b89eb4a9",fit: BoxFit.fill),
                              Image.network("https://w0.peakpx.com/wallpaper/514/288/HD-wallpaper-car-art-sportscar-lamborghini.jpg",fit: BoxFit.fill),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container customIcon({required IconData icon, Color color = Colors.white}) {
    return Container(
                alignment: Alignment.center,
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon),
              );
  }
}
