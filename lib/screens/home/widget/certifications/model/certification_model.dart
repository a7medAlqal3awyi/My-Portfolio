class CertificateModel {
  final String name;
  final String organization;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.skills,
    required this.credential,
  });
}
List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'The Complete Flutter & Dart',
    organization: 'Udemy',
    skills: 'Flutter . Dart',
    credential:
    'https://www.udemy.com/certificate/UC-996c6435-9c72-496d-8b30-d058812c4e26/',
  ),CertificateModel(
    name: 'Flutter Clean Architecture',
    organization: 'Udemy',
    skills: 'Flutter . Dart',
    credential:
    'https://www.udemy.com/certificate/UC-02ad462a-507e-4e82-9172-fa8c480589ed/',
  ),
  CertificateModel(
    name: 'Fundamentals of Agile',
    organization: 'Credly',
    skills: 'Agile Project Management',
    credential:
    'https://www.credly.com/badges/db13905c-33fc-4eed-8cef-c8b598de2c4f',
  ), CertificateModel(
    name: 'Fundamentals of Predictive',
    organization: 'Credly',
    skills: 'Waterfall Project Management',
    credential:
    'https://www.credly.com/badges/66e3b1f6-3904-4516-a0b8-43f2326f7064',
  ),

];

