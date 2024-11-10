import 'package:dio/dio.dart';
import 'package:testrandomuser/Models/randomuser_model.dart';

class RandomuserServices {
static Dio dio = new Dio();

static Future<RandomuserModel> getRandomUser() async{
  try{
    String url ="https://randomuser.me/api/?results=50";
    var response = await dio.get(url);
    if(response.statusCode == 200){
      return RandomuserModel.fornjson(response.data);
    }else{
      throw Exception("Load Failed");
    }
  }catch(e){
     throw Exception(e);
  }
}
}
