class City {
  late String name;
  late LocalNames localNames;
  late double lat;
  late double lon;
  late String country;

  City(this.name, this.localNames, this.lat, this.lon, this.country);

  City.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    localNames = (json['local_names'] != null
        ? new LocalNames.fromJson(json['local_names'])
        : null)!;
    lat = json['lat'];
    lon = json['lon'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.localNames != null) {
      data['local_names'] = this.localNames.toJson();
    }
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['country'] = this.country;
    return data;
  }
}

class LocalNames {
  late String af;
  late String ar;
  late String ascii;
  late String az;
  late String bg;
  late String ca;
  late String da;
  late String de;
  late String el;
  late String en;
  late String eu;
  late String fa;
  late String featureName;
  late String fi;
  late String fr;
  late String gl;
  late String he;
  late String id;
  late String it;
  late String ja;
  late String la;
  late String lt;
  late String mk;
  late String nl;
  late String no;
  late String pl;
  late String pt;
  late String ro;
  late String ru;
  late String sl;
  late String sr;
  late String th;

  LocalNames(
      this.af,
      this.ar,
      this.ascii,
      this.az,
      this.bg,
      this.ca,
      this.da,
      this.de,
      this.el,
      this.en,
      this.eu,
      this.fa,
      this.featureName,
      this.fi,
      this.fr,
      this.gl,
      this.he,
      this.id,
      this.it,
      this.ja,
      this.la,
      this.lt,
      this.mk,
      this.nl,
      this.no,
      this.pl,
      this.pt,
      this.ro,
      this.ru,
      this.sl,
      this.sr,
      this.th);

  LocalNames.fromJson(Map<String, dynamic> json) {
    af = json['af'] == null ? "none" : json['af'];
    ar = json['ar'] == null ? "none" : json['ar'];
    ascii = json['ascii'] == null ? "none" : json['ascii'];
    az = json['az'] == null ? "none" : json['az'];
    bg = json['bg'] == null ? "none" : json['bg'];
    ca = json['ca'] == null ? "none" : json['ca'];
    da = json['da'] == null ? "none" : json['da'];
    de = json['de'] == null ? "none" : json['de'];
    el = json['el'] == null ? "none" : json['el'];
    en = json['en'] == null ? "none" : json['en'];
    eu = json['eu'] == null ? "none" : json['eu'];
    fa = json['fa'] == null ? "none" : json['fa'];
    featureName = json['feature_name'] == null ? "none" : json['feature_name'];
    fi = json['fi'] == null ? "none" : json['fi'];
    fr = json['fr'] == null ? "none" : json['fr'];
    gl = json['gl'] == null ? "none" : json['gl'];
    he = json['he'] == null ? "none" : json['he'];
    id = json['id'] == null ? "none" : json['id'];
    it = json['it'] == null ? "none" : json['it'];
    ja = json['ja'] == null ? "none" : json['ja'];
    la = json['la'] == null ? "none" : json['la'];
    lt = json['lt'] == null ? "none" : json['lt'];
    mk = json['mk'] == null ? "none" : json['mk'];
    nl = json['nl'] == null ? "none" : json['nl'];
    no = json['no'] == null ? "none" : json['no'];
    pl = json['pl'] == null ? "none" : json['pl'];
    pt = json['pt'] == null ? "none" : json['pt'];
    ro = json['ro'] == null ? "none" : json['ro'];
    ru = json['ru'] == null ? "none" : json['ru'];
    sl = json['sl'] == null ? "none" : json['sl'];
    sr = json['sr'] == null ? "none" : json['sr'];
    th = json['th'] == null ? "none" : json['th'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['af'] = this.af;
    data['ar'] = this.ar;
    data['ascii'] = this.ascii;
    data['az'] = this.az;
    data['bg'] = this.bg;
    data['ca'] = this.ca;
    data['da'] = this.da;
    data['de'] = this.de;
    data['el'] = this.el;
    data['en'] = this.en;
    data['eu'] = this.eu;
    data['fa'] = this.fa;
    data['feature_name'] = this.featureName;
    data['fi'] = this.fi;
    data['fr'] = this.fr;
    data['gl'] = this.gl;
    data['he'] = this.he;
    data['id'] = this.id;
    data['it'] = this.it;
    data['ja'] = this.ja;
    data['la'] = this.la;
    data['lt'] = this.lt;
    data['mk'] = this.mk;
    data['nl'] = this.nl;
    data['no'] = this.no;
    data['pl'] = this.pl;
    data['pt'] = this.pt;
    data['ro'] = this.ro;
    data['ru'] = this.ru;
    data['sl'] = this.sl;
    data['sr'] = this.sr;
    data['th'] = this.th;
    return data;
  }
}
