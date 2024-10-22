const String assetPath = 'assets';

enum Assets {
  logoIcon('$assetPath/icons/logo_icon.svg');

  const Assets(this.path);

  final String path;
}
