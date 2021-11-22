import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Data extends ChangeNotifier{
  String email = "";
  String fullname = "";
  List data_list = [];
  String genrename='';
  List data_list2= [];
  String songname='';
  int AlbumId=0;
  List album_datalist= [];
  int artistId=0;
  List artist_datalist=[];
  List id_datalist = [];
  String artist_name="";

  //login data
  Future getData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/select.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    data_list = jsonDecode(response.body);
    for(int i =0;i<data_list.length;i++){
      if(data_list[i]["Email"] == Email){
        email = data_list[i]["Email"];
        fullname = data_list[i]["FullName"];
      }
    }
    notifyListeners();
    print(response.statusCode);
    print(email);
    print(fullname);
  }


  String get Email => email;
  set Email(String data){
    email = data;
    notifyListeners();
  }
  //song data
  Future getsongData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/songdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    data_list2 = jsonDecode(response.body);
    print(data_list2.length);
    print(response.statusCode);

  }
  String get Genre => genrename;
  set Genre(String data){
    genrename = data;
    notifyListeners();
  }

  //artist data
  Future getartistData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/artistdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    artist_datalist = jsonDecode(response.body);
    notifyListeners();
    print(response.statusCode);
  }

  String get ArtistName => artist_name;
  set ArtistName(String data){
    artist_name = data;
    notifyListeners();
  }


  int get Album => artistId;
  set Album(int data){
    artistId = data;
    notifyListeners();
  }
//album data
  Future getalbumData() async{
    http.Response response = await http.post(Uri.parse('http://192.168.0.6/albumdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode({
        "ArtistId": Album
      })
    );
    album_datalist = jsonDecode(response.body);
    print(album_datalist);
    notifyListeners();
    print(response.statusCode);
  }

  Future checkData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/check.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    id_datalist = jsonDecode(response.body);

    notifyListeners();
    print(response.statusCode);
    print(email);
    print(fullname);
  }

}


