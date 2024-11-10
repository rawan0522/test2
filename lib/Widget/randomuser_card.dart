import 'package:flutter/material.dart';
class RandomuserCard extends StatelessWidget {
  const RandomuserCard({super.key , required this.img , required this.name , required this.email});
final String img;
final String name;
final String email;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.pink.shade200,
      shadowColor: Colors.pinkAccent,
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(img),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(name , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(email , style: TextStyle(fontSize:20 , ),),
          ),
        ],
      ),
    );
  }
}
