class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get getAppbarIcon => toIconSvg('appbarIcon');
  String get getCoin => toIconSvg('coin');
  String get getGift => toIconSvg('gift');
  String get getMasterCard => toIconSvg('masterCard');
  String get getNotification => toIconSvg('notification');
  String get getVisaCard => toIconSvg('visaCard');
  String get getArrowDown => toIconSvg('arrowDown');
  String get getPlus => toIconSvg('plus');
  String get getCuponCard => toIconSvg('cuponCard');

  String toIconSvg(String name) => 'assets/icons/$name.svg';
}
