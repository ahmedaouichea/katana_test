// To parse this JSON data, do
//
//     final Users = UsersFromJson(jsonString);

import 'dart:convert';

List<Users> UsersFromJson(String str) =>
    List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String UsersToJson(List<Users> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  Users({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
  });

  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        website: json["website"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "phone": phone,
        "website": website,
      };
}























/*
class Address {
    Address({
        this.street,
        this.suite,
        this.city,
        this.zipcode,
    });

    String? street;
    String? suite;
    String? city;
    String? zipcode;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
    };
}
*/


