import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Data extends ChangeNotifier{
  String email = "";
  String fullname = "";
  List data_list = [];
  String genrename='';
  List album_datalist= [];
  String albumname='';
  List artist_datalist=[];

  //login data
  Future getData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.102/select.php'),
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
  List data_list2= [];
  String songname='';
  int AlbumId=0;

  //song data
  Future getsongData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.102/songdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    data_list2 = jsonDecode(response.body);
    for(int i =0;i<data_list2.length;i++) {
      print(data_list2[i]);
    }

    print(data_list2.length);
    print(response.statusCode);
    print(songname);
    print(AlbumId);
  }
  String get Genre => genrename;
  set Genre(String data){
    genrename = data;
    notifyListeners();
  }


  //artist data
  Future getartistData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.102/artistdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    artist_datalist = jsonDecode(response.body);

    notifyListeners();
    print(response.statusCode);
  }
  String get Album => albumname;
  set Album(String data){
    albumname = data;
    notifyListeners();
  }
//album data
  Future getalbumData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.102/albumdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    album_datalist = jsonDecode(response.body);
    for(int i =0;i<data_list2.length;i++){
      print(data_list2[i]);
      if(data_list2[i]['AlbumId']== album_datalist[i])
    }

    notifyListeners();
    print(response.statusCode);
  }
}

