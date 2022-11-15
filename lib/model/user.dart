class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final String adress;
  final String tele;
  final String site;
  final bool isDarkMode;

  const User(
       {
    required this.imagePath,
         required this.adress,required this.tele,required this.site,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode,
  });
}
