class Ong {
  String ongName;
  String ongResume;
  String ongImg;
  String ongPhone;
  String ongEmail;
  String ongSite;
  String pix;
  String bankName;
  String bankAgency;
  String bankAccount;

  Ong(this.ongName, this.ongResume, this.ongImg, this.ongPhone, this.ongEmail,
      this.ongSite, this.pix, this.bankName, this.bankAgency, this.bankAccount);

  static List<Ong> generateOng() {
    return [
      Ong(
        'Amigos do Bem',
        'Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor',
        'assets/images/amigos.png',
        '(81)99347-4343',
        'ong@gmail.com',
        'www.google.com',
        '23232323233',
        'Itau',
        '12312313',
        '1231231'
      ),
    ];
  }
}
