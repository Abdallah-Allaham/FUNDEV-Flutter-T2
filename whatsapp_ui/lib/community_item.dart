import 'package:flutter/material.dart';

class CommunityItem{
  String image;
  String groupName;
  List<SubCommunityItem> subCommunities;

  CommunityItem({required this.image,required this.groupName,required this.subCommunities});

}

class SubCommunityItem{
  String image;
  String name;
  String msg;
  TimeOfDay time;

  SubCommunityItem({required this.image,required this.name,required this.msg,required this.time});

}