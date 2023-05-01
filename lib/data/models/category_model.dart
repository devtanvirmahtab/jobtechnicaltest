class CategoryModel {
  Data? data;

  CategoryModel({this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Symptoms>? symptoms;

  Data({this.symptoms});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['symptoms'] != null) {
      symptoms = <Symptoms>[];
      json['symptoms'].forEach((v) {
        symptoms!.add(Symptoms.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (symptoms != null) {
      data['symptoms'] = symptoms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Symptoms {
  int? id;
  String? title;
  List<SubSymptom>? subSymptom;

  Symptoms({this.id, this.title, this.subSymptom});

  Symptoms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    if (json['sub_symptom'] != null) {
      subSymptom = <SubSymptom>[];
      json['sub_symptom'].forEach((v) {
        subSymptom!.add(SubSymptom.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    if (subSymptom != null) {
      data['sub_symptom'] = subSymptom!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubSymptom {
  int? id;
  String? icon;
  String? title;

  SubSymptom({this.id, this.icon, this.title});

  SubSymptom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icon = json['icon'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['icon'] = icon;
    data['title'] = title;
    return data;
  }
}
