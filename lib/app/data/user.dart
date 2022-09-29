class ListProfile {
  String nama;
  String title;
  int idNum;
  String email;
  String phone;

  ListProfile(this.nama, this.title, this.idNum, this.email, this.phone);

  get user => null;
}

List<ListProfile> dataUser = [
  ListProfile('Dani Kurniawati', 'UI/UX Designer', 8947763237, 'dandev@gmail.com',
      '+62 873283677')
];
