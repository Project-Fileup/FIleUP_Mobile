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

class KakaoOAuth extends PlatformType {
  KakaoOAuth({super.name = '카카오', super.iconPath = 'kakao_icon'});
}
