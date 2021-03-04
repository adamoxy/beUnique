// To parse this JSON data, do
//
//     final profileModel = profileModelFromMap(jsonString);

import 'dart:convert';

ProfileModel profileModelFromMap(String str) =>
    ProfileModel.fromMap(json.decode(str));

String profileModelToMap(ProfileModel data) => json.encode(data.toMap());

class ProfileModel {
  ProfileModel({
    this.status,
    this.data,
  });

  String status;
  Data data;

  factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        data: Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data": data.toMap(),
      };
}

class Data {
  Data({
    this.profile,
  });

  Profile profile;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        profile: Profile.fromMap(json["profile"]),
      );

  Map<String, dynamic> toMap() => {
        "profile": profile.toMap(),
      };
}

class Profile {
  Profile({
    this.location,
    this.isBoosted,
    this.profileBreak,
    this.count,
    this.exp,
    this.isGlobal,
    this.isDating,
    this.likes,
    this.blocked,
    this.interests,
    this.isPremium,
    this.preferencePaid,
    this.id,
    this.user,
    this.name,
    this.gender,
    this.age,
    this.photos,
    this.filters,
    this.basicInfo,
    this.preference,
    this.date,
    this.v,
    this.socketId,
    this.profilePicture,
    this.bio,
    this.media,
    this.profileId,
  });

  Location location;
  bool isBoosted;
  bool profileBreak;
  int count;
  DateTime exp;
  bool isGlobal;
  bool isDating;
  List<dynamic> likes;
  List<dynamic> blocked;
  List<Interest> interests;
  bool isPremium;
  bool preferencePaid;
  String id;
  String user;
  String name;
  String gender;
  int age;
  List<Photo> photos;
  List<Filter> filters;
  List<BasicInfo> basicInfo;
  List<dynamic> preference;
  DateTime date;
  int v;
  String socketId;
  String profilePicture;
  String bio;
  List<Media> media;
  String profileId;

  factory Profile.fromMap(Map<String, dynamic> json) => Profile(
        location: Location.fromMap(json["location"]),
        isBoosted: json["is_boosted"],
        profileBreak: json["break"],
        count: json["count"],
        exp: DateTime.parse(json["exp"]),
        isGlobal: json["is_global"],
        isDating: json["is_dating"],
        likes: List<dynamic>.from(json["likes"].map((x) => x)),
        blocked: List<dynamic>.from(json["blocked"].map((x) => x)),
        interests: List<Interest>.from(
            json["interests"].map((x) => Interest.fromMap(x))),
        isPremium: json["is_premium"],
        preferencePaid: json["preference_paid"],
        id: json["_id"],
        user: json["user"],
        name: json["name"],
        gender: json["gender"],
        age: json["age"],
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromMap(x))),
        filters:
            List<Filter>.from(json["filters"].map((x) => Filter.fromMap(x))),
        basicInfo: List<BasicInfo>.from(
            json["basic_info"].map((x) => BasicInfo.fromMap(x))),
        preference: List<dynamic>.from(json["preference"].map((x) => x)),
        date: DateTime.parse(json["date"]),
        v: json["__v"],
        socketId: json["socket_id"],
        profilePicture: json["profile_picture"],
        bio: json["bio"],
        media: List<Media>.from(json["media"].map((x) => Media.fromMap(x))),
        profileId: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "location": location.toMap(),
        "is_boosted": isBoosted,
        "break": profileBreak,
        "count": count,
        "exp": exp.toIso8601String(),
        "is_global": isGlobal,
        "is_dating": isDating,
        "likes": List<dynamic>.from(likes.map((x) => x)),
        "blocked": List<dynamic>.from(blocked.map((x) => x)),
        "interests": List<dynamic>.from(interests.map((x) => x.toMap())),
        "is_premium": isPremium,
        "preference_paid": preferencePaid,
        "_id": id,
        "user": user,
        "name": name,
        "gender": gender,
        "age": age,
        "photos": List<dynamic>.from(photos.map((x) => x.toMap())),
        "filters": List<dynamic>.from(filters.map((x) => x.toMap())),
        "basic_info": List<dynamic>.from(basicInfo.map((x) => x.toMap())),
        "preference": List<dynamic>.from(preference.map((x) => x)),
        "date": date.toIso8601String(),
        "__v": v,
        "socket_id": socketId,
        "profile_picture": profilePicture,
        "bio": bio,
        "media": List<dynamic>.from(media.map((x) => x.toMap())),
        "id": profileId,
      };
}

class BasicInfo {
  BasicInfo({
    this.premium,
    this.id,
    this.key,
    this.value,
  });

  bool premium;
  String id;
  Key key;
  String value;

  factory BasicInfo.fromMap(Map<String, dynamic> json) => BasicInfo(
        premium: json["premium"],
        id: json["_id"],
        key: Key.fromMap(json["key"]),
        value: json["value"],
      );

  Map<String, dynamic> toMap() => {
        "premium": premium,
        "_id": id,
        "key": key.toMap(),
        "value": value,
      };
}

class Key {
  Key({
    this.id,
    this.name,
  });

  String id;
  String name;

  factory Key.fromMap(Map<String, dynamic> json) => Key(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
      };
}

class Filter {
  Filter({
    this.premium,
    this.id,
    this.key,
    this.value,
    this.type,
    this.selection,
    this.range,
  });

  bool premium;
  String id;
  Key key;
  String value;
  String type;
  String selection;
  String range;

  factory Filter.fromMap(Map<String, dynamic> json) => Filter(
        premium: json["premium"],
        id: json["_id"],
        key: Key.fromMap(json["key"]),
        value: json["value"],
        type: json["type"],
        selection: json["selection"],
        range: json["range"],
      );

  Map<String, dynamic> toMap() => {
        "premium": premium,
        "_id": id,
        "key": key.toMap(),
        "value": value,
        "type": type,
        "selection": selection,
        "range": range,
      };
}

class Interest {
  Interest({
    this.id,
    this.isPaid,
    this.name,
    this.category,
    this.date,
    this.slug,
    this.v,
  });

  String id;
  bool isPaid;
  String name;
  Key category;
  DateTime date;
  String slug;
  int v;

  factory Interest.fromMap(Map<String, dynamic> json) => Interest(
        id: json["_id"],
        isPaid: json["is_paid"],
        name: json["name"],
        category: Key.fromMap(json["category"]),
        date: DateTime.parse(json["date"]),
        slug: json["slug"],
        v: json["__v"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "is_paid": isPaid,
        "name": name,
        "category": category.toMap(),
        "date": date.toIso8601String(),
        "slug": slug,
        "__v": v,
      };
}

class Location {
  Location({
    this.type,
    this.coordinates,
  });

  String type;
  List<double> coordinates;

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        type: json["type"],
        coordinates:
            List<double>.from(json["coordinates"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
      };
}

class Media {
  Media({
    this.question,
    this.isVideo,
    this.id,
    this.user,
    this.video,
    this.date,
    this.v,
    this.filename,
    this.index,
  });

  List<Question> question;
  bool isVideo;
  String id;
  String user;
  String video;
  DateTime date;
  int v;
  String filename;
  int index;

  factory Media.fromMap(Map<String, dynamic> json) => Media(
        question: json["question"] == null
            ? null
            : List<Question>.from(
                json["question"].map((x) => Question.fromMap(x))),
        isVideo: json["is_video"],
        id: json["_id"],
        user: json["user"] == null ? null : json["user"],
        video: json["video"] == null ? null : json["video"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        v: json["__v"] == null ? null : json["__v"],
        filename: json["filename"] == null ? null : json["filename"],
        index: json["index"] == null ? null : json["index"],
      );

  Map<String, dynamic> toMap() => {
        "question": question == null
            ? null
            : List<dynamic>.from(question.map((x) => x.toMap())),
        "is_video": isVideo,
        "_id": id,
        "user": user == null ? null : user,
        "video": video == null ? null : video,
        "date": date == null ? null : date.toIso8601String(),
        "__v": v == null ? null : v,
        "filename": filename == null ? null : filename,
        "index": index == null ? null : index,
      };
}

class Question {
  Question({
    this.id,
    this.isPaid,
    this.name,
    this.category,
    this.date,
    this.slug,
    this.v,
  });

  String id;
  bool isPaid;
  String name;
  String category;
  DateTime date;
  String slug;
  int v;

  factory Question.fromMap(Map<String, dynamic> json) => Question(
        id: json["_id"],
        isPaid: json["is_paid"],
        name: json["name"],
        category: json["category"],
        date: DateTime.parse(json["date"]),
        slug: json["slug"],
        v: json["__v"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "is_paid": isPaid,
        "name": name,
        "category": category,
        "date": date.toIso8601String(),
        "slug": slug,
        "__v": v,
      };
}

class Photo {
  Photo({
    this.isVideo,
    this.id,
    this.filename,
    this.index,
  });

  bool isVideo;
  String id;
  String filename;
  int index;

  factory Photo.fromMap(Map<String, dynamic> json) => Photo(
        isVideo: json["is_video"],
        id: json["_id"],
        filename: json["filename"],
        index: json["index"],
      );

  Map<String, dynamic> toMap() => {
        "is_video": isVideo,
        "_id": id,
        "filename": filename,
        "index": index,
      };
}
