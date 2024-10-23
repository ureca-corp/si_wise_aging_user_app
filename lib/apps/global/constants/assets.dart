const String assetPath = 'assets';

enum Assets {
  logoImage('$assetPath/images/logo_image.png'),

  logoIcon('$assetPath/icons/logo_icon.svg'),
  bellIcon('$assetPath/icons/bell_icon.svg'),
  dietIcon('$assetPath/icons/diet_icon.svg'),
  scheduleIcon('$assetPath/icons/schedule_icon.svg'),
  documentIcon('$assetPath/icons/document_icon.svg'),
  medicationIcon('$assetPath/icons/medication_icon.svg'),
  infraIcon('$assetPath/icons/infra_icon.svg'),
  dementiaIcon('$assetPath/icons/dementia_icon.svg'),
  signatureIcon('$assetPath/icons/signature_icon.svg');

  const Assets(this.path);

  final String path;
}
