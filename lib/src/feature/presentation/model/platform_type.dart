abstract class PlatformType {
  final String name;
  final String iconPath;

  const PlatformType({
    required this.name,
    required this.iconPath,
  });
}

class GoogleOAuth extends PlatformType {
  GoogleOAuth({super.name = '구글', super.iconPath = 'google_icon'});
}
