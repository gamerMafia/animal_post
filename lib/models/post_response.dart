import 'dart:convert';

import 'package:demo_project/constants/app_strings.dart';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      this.createdAt, 
      this.id, 
      this.rev, 
      this.type, 
      this.updatedAt, 
      this.author, 
      this.body, 
      this.categories, 
      this.mainImage, 
      this.publishedAt, 
      this.slug, 
      this.title,});

  Result.fromJson(dynamic json) {
    createdAt = json['_createdAt'];
    id = json['_id'];
    rev = json['_rev'];
    type = json['_type'];
    updatedAt = json['_updatedAt'];
    author = json['author'] != null ? Author.fromJson(json['author']) : null;
    if (json['body'] != null) {
      body = [];
      json['body'].forEach((v) {
        body?.add(Body.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    mainImage = json['mainImage'] != null ? MainImage.fromJson(json['mainImage']) : null;
    publishedAt = json['publishedAt'];
    slug = json['slug'] != null ? Slug.fromJson(json['slug']) : null;
    title = json['title'];
  }
  String? createdAt;
  String? id;
  String? rev;
  String? type;
  String? updatedAt;
  Author? author;
  List<Body>? body;
  List<Categories>? categories;
  MainImage? mainImage;
  String? publishedAt;
  Slug? slug;
  String? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_createdAt'] = createdAt;
    map['_id'] = id;
    map['_rev'] = rev;
    map['_type'] = type;
    map['_updatedAt'] = updatedAt;
    if (author != null) {
      map['author'] = author?.toJson();
    }
    if (body != null) {
      map['body'] = body?.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    if (mainImage != null) {
      map['mainImage'] = mainImage?.toJson();
    }
    map['publishedAt'] = publishedAt;
    if (slug != null) {
      map['slug'] = slug?.toJson();
    }
    map['title'] = title;
    return map;
  }

}

Slug slugFromJson(String str) => Slug.fromJson(json.decode(str));
String slugToJson(Slug data) => json.encode(data.toJson());
class Slug {
  Slug({
      this.type, 
      this.current,});

  Slug.fromJson(dynamic json) {
    type = json['_type'];
    current = json['current'];
  }
  String? type;
  String? current;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_type'] = type;
    map['current'] = current;
    return map;
  }

}

MainImage mainImageFromJson(String str) => MainImage.fromJson(json.decode(str));
String mainImageToJson(MainImage data) => json.encode(data.toJson());
class MainImage {
  MainImage({
      this.type, 
      this.asset,});

  MainImage.fromJson(dynamic json) {
    type = json['_type'];
    asset = json['asset'] != null ? Asset.fromJson(json['asset']) : null;
  }
  String? type;
  Asset? asset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_type'] = type;
    if (asset != null) {
      map['asset'] = asset?.toJson();
    }
    return map;
  }

}

Asset assetFromJson(String str) => Asset.fromJson(json.decode(str));
String assetToJson(Asset data) => json.encode(data.toJson());
class Asset {
  Asset({
      this.ref, 
      this.type,});

  Asset.fromJson(dynamic json) {
    ref = getImage(json['_ref']);
    type = json['_type'];
  }

 String getImage(String img){
   List<String> imgArray=img.split('-');
   return '${AppString.imgBaseUrl}${imgArray[1]}-${imgArray[2]}.png';
 }

  String? ref;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_ref'] = ref;
    map['_type'] = type;
    return map;
  }

}

Categories categoriesFromJson(String str) => Categories.fromJson(json.decode(str));
String categoriesToJson(Categories data) => json.encode(data.toJson());
class Categories {
  Categories({
      this.key, 
      this.ref, 
      this.type,});

  Categories.fromJson(dynamic json) {
    key = json['_key'];
    ref = json['_ref'];
    type = json['_type'];
  }
  String? key;
  String? ref;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_key'] = key;
    map['_ref'] = ref;
    map['_type'] = type;
    return map;
  }

}

Body bodyFromJson(String str) => Body.fromJson(json.decode(str));
String bodyToJson(Body data) => json.encode(data.toJson());
class Body {
  Body({
      this.key, 
      this.type, 
      this.children, 
      this.markDefs, 
      this.style,});

  Body.fromJson(dynamic json) {
    key = json['_key'];
    type = json['_type'];
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children?.add(Children.fromJson(v));
      });
    }
    if (json['markDefs'] != null) {
      markDefs = [];
      json['markDefs'].forEach((v) {
        markDefs?.add(v);
      });
    }
    style = json['style'];
  }
  String? key;
  String? type;
  List<Children>? children;
  List<dynamic>? markDefs;
  String? style;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_key'] = key;
    map['_type'] = type;
    if (children != null) {
      map['children'] = children?.map((v) => v.toJson()).toList();
    }
    if (markDefs != null) {
      map['markDefs'] = markDefs?.map((v) => v.toJson()).toList();
    }
    map['style'] = style;
    return map;
  }

}

Children childrenFromJson(String str) => Children.fromJson(json.decode(str));
String childrenToJson(Children data) => json.encode(data.toJson());
class Children {
  Children({
      this.key, 
      this.type, 
      this.marks, 
      this.text,});

  Children.fromJson(dynamic json) {
    key = json['_key'];
    type = json['_type'];
    if (json['marks'] != null) {
      marks = [];
      json['marks'].forEach((v) {
        marks?.add(v);
      });
    }
    text = json['text'];
  }
  String? key;
  String? type;
  List<dynamic>? marks;
  String? text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_key'] = key;
    map['_type'] = type;
    if (marks != null) {
      map['marks'] = marks?.map((v) => v.toJson()).toList();
    }
    map['text'] = text;
    return map;
  }

}

Author authorFromJson(String str) => Author.fromJson(json.decode(str));
String authorToJson(Author data) => json.encode(data.toJson());
class Author {
  Author({
      this.ref, 
      this.type,});

  Author.fromJson(dynamic json) {
    ref = json['_ref'];
    type = json['_type'];
  }
  String? ref;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_ref'] = ref;
    map['_type'] = type;
    return map;
  }

}