class RandomuserModel {
  List data;
RandomuserModel({required this.data});
  factory RandomuserModel.fornjson(Map<String , dynamic>json){
    List<dynamic> fullData;
    fullData = json["results"].map(
        (users){
          return{
            "Name": users["name"]["first"] + " " + users["name"]["last"],
            "Email" : users["email"],
            "img" : users["picture"]["thumbnail"]
          };
        }
    ).toList();
    return RandomuserModel(data: fullData);
  }
}
