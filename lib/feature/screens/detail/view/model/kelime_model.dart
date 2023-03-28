// To parse this JSON data, do
//
//     final kelimeModel = kelimeModelFromJson(jsonString);

import 'dart:convert';

KelimeModel kelimeModelFromJson(String str) => KelimeModel.fromJson(json.decode(str));

String kelimeModelToJson(KelimeModel data) => json.encode(data.toJson());

class KelimeModel {
  KelimeModel({
    this.maddeId,
    this.kac,
    this.kelimeNo,
    this.cesit,
    this.anlamGor,
    this.onTaki,
    this.madde,
    this.cesitSay,
    this.anlamSay,
    this.taki,
    this.cogulMu,
    this.ozelMi,
    this.lisanKodu,
    this.lisan,
    this.telaffuz,
    this.birlesikler,
    this.font,
    this.maddeDuz,
    this.gosterimTarihi,
    this.anlamlarListe,
    this.atasozu,
  });

  String? maddeId;
  String? kac;
  String? kelimeNo;
  String? cesit;
  String? anlamGor;
  dynamic onTaki;
  String? madde;
  String? cesitSay;
  String? anlamSay;
  dynamic taki;
  String? cogulMu;
  String? ozelMi;
  String? lisanKodu;
  String? lisan;
  dynamic telaffuz;
  String? birlesikler;
  dynamic font;
  String? maddeDuz;
  dynamic gosterimTarihi;
  List<AnlamlarListe>? anlamlarListe;
  List<Atasozu>? atasozu;

  factory KelimeModel.fromJson(Map<String, dynamic> json) => KelimeModel(
        maddeId: json["madde_id"],
        kac: json["kac"],
        kelimeNo: json["kelime_no"],
        cesit: json["cesit"],
        anlamGor: json["anlam_gor"],
        onTaki: json["on_taki"],
        madde: json["madde"],
        cesitSay: json["cesit_say"],
        anlamSay: json["anlam_say"],
        taki: json["taki"],
        cogulMu: json["cogul_mu"],
        ozelMi: json["ozel_mi"],
        lisanKodu: json["lisan_kodu"],
        lisan: json["lisan"],
        telaffuz: json["telaffuz"],
        birlesikler: json["birlesikler"],
        font: json["font"],
        maddeDuz: json["madde_duz"],
        gosterimTarihi: json["gosterim_tarihi"],
        anlamlarListe: json["anlamlarListe"] == null
            ? []
            : List<AnlamlarListe>.from(json["anlamlarListe"]!.map((x) => AnlamlarListe.fromJson(x))),
        atasozu: json["atasozu"] == null ? [] : List<Atasozu>.from(json["atasozu"]!.map((x) => Atasozu.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "madde_id": maddeId,
        "kac": kac,
        "kelime_no": kelimeNo,
        "cesit": cesit,
        "anlam_gor": anlamGor,
        "on_taki": onTaki,
        "madde": madde,
        "cesit_say": cesitSay,
        "anlam_say": anlamSay,
        "taki": taki,
        "cogul_mu": cogulMu,
        "ozel_mi": ozelMi,
        "lisan_kodu": lisanKodu,
        "lisan": lisan,
        "telaffuz": telaffuz,
        "birlesikler": birlesikler,
        "font": font,
        "madde_duz": maddeDuz,
        "gosterim_tarihi": gosterimTarihi,
        "anlamlarListe": anlamlarListe == null ? [] : List<dynamic>.from(anlamlarListe!.map((x) => x.toJson())),
        "atasozu": atasozu == null ? [] : List<dynamic>.from(atasozu!.map((x) => x.toJson())),
      };
}

class AnlamlarListe {
  AnlamlarListe({
    this.anlamId,
    this.maddeId,
    this.anlamSira,
    this.fiil,
    this.tipkes,
    this.anlam,
    this.gos,
    this.orneklerListe,
    this.ozelliklerListe,
  });

  String? anlamId;
  String? maddeId;
  String? anlamSira;
  String? fiil;
  String? tipkes;
  String? anlam;
  String? gos;
  List<OrneklerListe>? orneklerListe;
  List<OzelliklerListe>? ozelliklerListe;

  factory AnlamlarListe.fromJson(Map<String, dynamic> json) => AnlamlarListe(
        anlamId: json["anlam_id"],
        maddeId: json["madde_id"],
        anlamSira: json["anlam_sira"],
        fiil: json["fiil"],
        tipkes: json["tipkes"],
        anlam: json["anlam"],
        gos: json["gos"],
        orneklerListe: json["orneklerListe"] == null
            ? []
            : List<OrneklerListe>.from(json["orneklerListe"]!.map((x) => OrneklerListe.fromJson(x))),
        ozelliklerListe: json["ozelliklerListe"] == null
            ? []
            : List<OzelliklerListe>.from(json["ozelliklerListe"]!.map((x) => OzelliklerListe.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "anlam_id": anlamId,
        "madde_id": maddeId,
        "anlam_sira": anlamSira,
        "fiil": fiil,
        "tipkes": tipkes,
        "anlam": anlam,
        "gos": gos,
        "orneklerListe": orneklerListe == null ? [] : List<dynamic>.from(orneklerListe!.map((x) => x.toJson())),
        "ozelliklerListe": ozelliklerListe == null ? [] : List<dynamic>.from(ozelliklerListe!.map((x) => x.toJson())),
      };
}

class OrneklerListe {
  OrneklerListe({
    this.ornekId,
    this.anlamId,
    this.ornekSira,
    this.ornek,
    this.kac,
    this.yazarId,
    this.yazar,
  });

  String? ornekId;
  String? anlamId;
  String? ornekSira;
  String? ornek;
  String? kac;
  String? yazarId;
  List<Yazar>? yazar;

  factory OrneklerListe.fromJson(Map<String, dynamic> json) => OrneklerListe(
        ornekId: json["ornek_id"],
        anlamId: json["anlam_id"],
        ornekSira: json["ornek_sira"],
        ornek: json["ornek"],
        kac: json["kac"],
        yazarId: json["yazar_id"],
        yazar: json["yazar"] == null ? [] : List<Yazar>.from(json["yazar"]!.map((x) => Yazar.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ornek_id": ornekId,
        "anlam_id": anlamId,
        "ornek_sira": ornekSira,
        "ornek": ornek,
        "kac": kac,
        "yazar_id": yazarId,
        "yazar": yazar == null ? [] : List<dynamic>.from(yazar!.map((x) => x.toJson())),
      };
}

class Yazar {
  Yazar({
    this.yazarId,
    this.tamAdi,
    this.kisaAdi,
    this.ekno,
  });

  String? yazarId;
  String? tamAdi;
  String? kisaAdi;
  String? ekno;

  factory Yazar.fromJson(Map<String, dynamic> json) => Yazar(
        yazarId: json["yazar_id"],
        tamAdi: json["tam_adi"],
        kisaAdi: json["kisa_adi"],
        ekno: json["ekno"],
      );

  Map<String, dynamic> toJson() => {
        "yazar_id": yazarId,
        "tam_adi": tamAdi,
        "kisa_adi": kisaAdi,
        "ekno": ekno,
      };
}

class OzelliklerListe {
  OzelliklerListe({
    this.ozellikId,
    this.tur,
    this.tamAdi,
    this.kisaAdi,
    this.ekno,
  });

  String? ozellikId;
  String? tur;
  String? tamAdi;
  String? kisaAdi;
  String? ekno;

  factory OzelliklerListe.fromJson(Map<String, dynamic> json) => OzelliklerListe(
        ozellikId: json["ozellik_id"],
        tur: json["tur"],
        tamAdi: json["tam_adi"],
        kisaAdi: json["kisa_adi"],
        ekno: json["ekno"],
      );

  Map<String, dynamic> toJson() => {
        "ozellik_id": ozellikId,
        "tur": tur,
        "tam_adi": tamAdi,
        "kisa_adi": kisaAdi,
        "ekno": ekno,
      };
}

class Atasozu {
  Atasozu({
    this.maddeId,
    this.madde,
    this.onTaki,
  });

  String? maddeId;
  String? madde;
  dynamic onTaki;

  factory Atasozu.fromJson(Map<String, dynamic> json) => Atasozu(
        maddeId: json["madde_id"],
        madde: json["madde"],
        onTaki: json["on_taki"],
      );

  Map<String, dynamic> toJson() => {
        "madde_id": maddeId,
        "madde": madde,
        "on_taki": onTaki,
      };
}
