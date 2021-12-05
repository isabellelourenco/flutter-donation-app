class Ong {
  String? id = '';
  String ongName = '';
  String ongAddress = '';
  String ongEmail = '';
  String ongPhone = '';
  String ongImg = '';
  String ongDescription = '';
  String ongSite = '';
  String ongPix = '';
  String ongBankName = '';
  String ongBankAgency = '';
  String ongBankAccount = '';

  Ong(
      {String? id,
      required String ongName,
      required String ongAddress,
      required String ongDescription,
      required String ongImg,
      required String ongPhone,
      required String ongEmail,
      required String ongSite,
      required String ongPix,
      required String ongBankName,
      required String ongBankAgency,
      required String ongBankAccount}) {
    this.id = id;
    this.ongName = ongName;
    this.ongAddress = ongAddress;
    this.ongDescription = ongDescription;
    this.ongImg = "assets/images/amigos.png";
    this.ongPhone = ongPhone;
    this.ongEmail = ongEmail;
    this.ongSite = ongSite;
    this.ongPix = ongPix;
    this.ongBankName = ongBankName;
    this.ongBankAgency = ongBankAgency;
    this.ongBankAccount = ongBankAccount;
  }

  static List<Ong> generateOng() {
    return [
      Ong(
          id: "12312",
          ongName: 'Amigos do Bem',
          ongAddress: 'Rua do teste dale',
          ongDescription:
              'Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor',
          ongImg: 'assets/images/amigos.png',
          ongPhone: '(81)99347-4343',
          ongEmail: 'ong@gmail.com',
          ongSite: 'www.google.com',
          ongPix: '23232323233',
          ongBankName: 'Itau',
          ongBankAgency: '12312313',
          ongBankAccount: '1231231'),
    ];
  }

  factory Ong.fromJson(Map<String, dynamic> json) {
    return Ong(
      id: json['_id'],
      ongName: json['ongName'],
      ongAddress: json['ongAddress'],
      ongEmail: json['ongEmail'],
      ongPhone: json['ongPhone'],
      ongImg: json['ongImg'],
      ongDescription: json['ongDescription'],
      ongSite: json['ongSite'],
      ongPix: json['ongPix'],
      ongBankName: json['ongBankName'],
      ongBankAgency: json['ongBankAgency'],
      ongBankAccount: json['ongBankAccount'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ongName': ongName,
      'ongAddress': ongAddress,
      'ongBankAccount': ongBankAccount,
      'ongBankAgency': ongBankAgency,
      'ongBankName': ongBankName,
      'ongDescription': ongDescription,
      'ongEmail': ongEmail,
      'ongImg': ongImg,
      'ongPhone': ongPhone,
      'ongPix': ongPix,
      'ongSite': ongSite,
    };
  }
}
