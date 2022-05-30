import 'package:networking_flutter/models/data.model.dart';
import 'package:networking_flutter/models/support.model.dart';

class User {
  Data data;
  Support support;

  User({this.data, this.support});

  User.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    support =
        json['support'] != null ? new Support.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    if (this.support != null) {
      data['support'] = this.support.toJson();
    }
    return data;
  }
}
