import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testrandomuser/Providers/randomuser_provider.dart';
import 'package:testrandomuser/Widget/randomuser_card.dart';
class RandmuserScreen extends StatelessWidget {
  const RandmuserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     title: Text("Test Random User",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.pink,
      ),
      body: Consumer<RandomuserProvider>(
        builder: (context, provider, child) {
         final newUserProvider = provider.randomuserModel;
         if(newUserProvider == null){
           provider.fetchData();
           return Center(child: CircularProgressIndicator(),);
         }else{
            return ListView.separated(
                itemBuilder: (context, index) {
                  final Name = newUserProvider.data.elementAt(index)["Name"];
                  final Email = newUserProvider.data.elementAt(index)["Email"];
                  final image = newUserProvider.data.elementAt(index)["img"];
                  return RandomuserCard(
                    img: image,
                    name: Name,
                    email: Email,
                  );
                },
                separatorBuilder:  (context, index) => SizedBox(height: 10,),
                itemCount: newUserProvider.data.length
            );
         }
        },
      ),
    );
  }
}
