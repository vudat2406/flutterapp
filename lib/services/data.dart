class DataContact {
  String avatarImage;
  String name;
  String phoneNumber;
  String email;
  DataContact({
    required this.avatarImage,
    required this.name,
    required this.phoneNumber,
    required this.email,
  });
  static List<DataContact> datacontacts = [
    DataContact(
        avatarImage: 'assets/images/a1.png',
        name: 'Lorem Ipsum Dolor',
        phoneNumber: '0234434401',
        email: 'ty.nguyen@sea-solutions.com'),
    DataContact(
        avatarImage: 'assets/images/a2.png',
        name: 'Sit Amet Consectetur',
        phoneNumber: '445616731447',
        email: 'ty.nguyen@gmailcom'),
    DataContact(
        avatarImage: 'assets/images/a3.png',
        name: 'Adipiscing Elit',
        phoneNumber: '0234434401',
        email: 'ty.nguyen@sea-solutions.com'),
    DataContact(
        avatarImage: 'assets/images/a6.png',
        name: 'Lectus Ac Malesuada',
        phoneNumber: '0234434401',
        email: 'ty.nguyen@gmailcom'),
    DataContact(
        avatarImage: 'assets/images/a5.png',
        name: 'Lorem Ipsum Dolor',
        phoneNumber: '0234434401',
        email: 'ty.nguyen@sea-solutions.com'),
    DataContact(
        avatarImage: 'assets/images/a6.png',
        name: 'Morbi In Sodales Nisi',
        phoneNumber: '445616731447',
        email: 'ty.nguyen@gmailcom'),
    DataContact(
        avatarImage: 'assets/images/a7.png',
        name: 'Lorem Ipsum Dolor',
        phoneNumber: '0234434401',
        email: 'ty.nguyen@gmailcom'),
    DataContact(
        avatarImage: 'assets/images/a8.png',
        name: 'Sit Amet Consectet',
        phoneNumber: '0234434401',
        email: 'ty.nguyen@gmailcom'),
  ];
}
