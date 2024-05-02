import 'package:flutter/material.dart';

class RowColum extends StatefulWidget {
  const RowColum({super.key});

  @override
  State<RowColum> createState() => _RowColumState();
}

class _RowColumState extends State<RowColum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Usmart"),
        actions: const [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.notifications_active),
          ),
          Icon(Icons.add),
          SizedBox(width: 10),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                  border: Border.all(width: 2,color: Colors.red),
                  image: DecorationImage(image: NetworkImage("https://buffer.com/library/content/images/2023/10/free-images.jpg"),fit: BoxFit.cover,
                  )
                ),
              ),
          
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                    border: Border.all(width: 2,color: Colors.red),
                    image: DecorationImage(image: NetworkImage("https://buffer.com/library/content/images/2023/10/free-images.jpg"),fit: BoxFit.cover,
                    )
                ),
              ),
          
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                    border: Border.all(width: 2,color: Colors.red),
                    image: DecorationImage(image: NetworkImage("https://buffer.com/library/content/images/2023/10/free-images.jpg"),fit: BoxFit.cover,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
