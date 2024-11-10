import 'package:flutter/cupertino.dart';
import 'package:testrandomuser/Models/randomuser_model.dart';
import 'package:testrandomuser/Services/randomuser_services.dart';

class RandomuserProvider extends ChangeNotifier {
  RandomuserModel? randomuserModel;

  Future<void> fetchData() async{
    randomuserModel = await RandomuserServices.getRandomUser();
    notifyListeners();
  }

}//////////
