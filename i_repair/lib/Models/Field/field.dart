import 'dart:convert';

List<Field> fieldFromJson(String str) =>
    List<Field>.from(json.decode(str).map((x) => Field.fromJson(x)));

String fieldToJson(List<Field> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Field {
  Field({
    required this.id,
    required this.name,
    required this.description,
    required this.majorId,
    required this.imageUrl,
    required this.status,
  });

  String id;
  String name;
  String description;
  String majorId;
  String imageUrl;
  int status;

  factory Field.fromJson(Map<String, dynamic> json) => Field(
        id: json["Id"] ?? json["id"],
        name: json["Name"] ?? json["name"],
        description: json["Description"] ?? json["description"],
        majorId: json["MajorId"] ?? json["majorId"],
        imageUrl: json["ImageUrl"] ?? json["imageUrl"],
        status: json["Status"] ?? json["status"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Description": description,
        "MajorId": majorId,
        "ImageUrl": imageUrl,
        "Status": status,
      };
}
