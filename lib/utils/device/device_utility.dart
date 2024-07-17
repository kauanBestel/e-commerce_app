import 'dart:ffi';
import 'dart:io';
import 'dart:ui';

class CDeviceUtils{
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> serStatusBarColor(Color color) async{
    SystemChrome.setSystemUIOverlayStyle(
      SystemUIOverlayStyle(statusBarColor: color)
      );
  }

  static bool isLandscapeOrientation(BuildContext context){
    final viweInset = View.of(context).viewInsets;
    return viweInset.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context){
    final viweInset = View.of(context).viewInsets;
    return viweInset.bottom != 0;
  }

  static void setFullScreen(bool enable){
    SystemChrome.setEmabledSystemUIMode(enable ? SystemUiMode.immersiveSticky: SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidht(BuiildContext context){
    return MediaQuery.of(context).size.widht;
  }

  static double GetPixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }
  

  static double getBottomBavigationBarHeight(){
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight(){
    return ktoolbarHeight;
  }

  static double getKeyboardHeight(){
    final viewInset = MediaQuery.of(Get.context!).viewInsets;
    return viewInset.bottom;
  }

  static Future<bool> isKeyboardVisible() async {
    final viewInsets = view.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargerPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration){
    HapticFeedback.vibrate();
    Future.delayed(duration, ()=> HapticFeedback.vibrate());
  }

  static Future<void> setPreferredOrientations(List<DeviceOrientations> orientations) async{
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hideStatusBar(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void showStatusBar(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUIOverlay.values);
  }

  static Future<bool> hasInternetConnection() async{
    try{
      final result = await InternetAddress.lookup('');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch(_){
      return false;
    }
  }

  static bool isIOS(){
    return Platform.isIOS;
  }

  static bool isAndroid(){
    return Platform.isAndroid;
  }

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlSring(url);
    }else{
      throw 'Could not launch $url';
    }
  }
 }