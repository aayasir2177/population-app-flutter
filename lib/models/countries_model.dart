class CountriesModel {
  Flags? flags;
  Name? name;
  int? population;

  CountriesModel({this.flags, this.name, this.population});

  CountriesModel.fromJson(Map<String, dynamic> json) {
    flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    population = json['population'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (flags != null) {
      data['flags'] = flags!.toJson();
    }
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['population'] = population;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({this.png, this.svg, this.alt});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['png'] = png;
    data['svg'] = svg;
    data['alt'] = alt;
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['common'] = common;
    data['official'] = official;
    if (nativeName != null) {
      data['nativeName'] = nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Ell? ell;
  Ell? tur;

  NativeName({this.ell, this.tur});

  NativeName.fromJson(Map<String, dynamic> json) {
    ell = json['ell'] != null ? Ell.fromJson(json['ell']) : null;
    tur = json['tur'] != null ? Ell.fromJson(json['tur']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ell != null) {
      data['ell'] = ell!.toJson();
    }
    if (tur != null) {
      data['tur'] = tur!.toJson();
    }
    return data;
  }
}

class Ell {
  String? official;
  String? common;

  Ell({this.official, this.common});

  Ell.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['official'] = official;
    data['common'] = common;
    return data;
  }
}
