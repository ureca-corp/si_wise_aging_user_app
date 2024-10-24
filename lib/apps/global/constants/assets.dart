const String assetPath = 'assets';

enum Assets {
// png 이미지 파일
  logoImage('$assetPath/images/logo_image.png'),
  lunchImage('$assetPath/images/lunch_image.png'),
  snack1Image('$assetPath/images/snack1_image.png'),
  snack2Image('$assetPath/images/snack2_image.png'),
  dinnerImage('$assetPath/images/dinner_image.png'),
  profileImage('$assetPath/images/profile_image.png'),

// png 아이콘 파일
  logoIcon('$assetPath/icons/logo_icon.png'),
  bellIcon('$assetPath/icons/bell_icon.png'),
  dietIcon('$assetPath/icons/diet_icon.png'),
  scheduleIcon('$assetPath/icons/schedule_icon.png'),
  documentIcon('$assetPath/icons/document_icon.png'),
  medicationIcon('$assetPath/icons/medication_icon.png'),
  infraIcon('$assetPath/icons/infra_icon.png'),
  dementiaIcon('$assetPath/icons/dementia_icon.png'),
  signatureIcon('$assetPath/icons/signature_icon.png'),

  // svg 아이콘 파일
  dateIcon('$assetPath/icons/date_icon.svg'),
  arrowDownIcon('$assetPath/icons/arrow_down_icon.svg');

  const Assets(this.path);

  final String path;
}
