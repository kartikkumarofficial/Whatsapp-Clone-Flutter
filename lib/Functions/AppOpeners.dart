import 'package:url_launcher/url_launcher.dart';

//doesn't work rn
class AppOpeners {
  void openInstagram() async {
    String instaScheme = "instagram://profile/guyfromlabyrinth";
    String instaUrl = "https://www.instagram.com/guyfromlabyrinth";

    try {
      bool canOpen = await canLaunchUrl(Uri.parse(instaScheme));
      print("Can open Instagram app: $canOpen");

      if (canOpen) {
        await launchUrl(Uri.parse(instaScheme), mode: LaunchMode.externalApplication);
      } else {
        await launchUrl(Uri.parse(instaUrl), mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      print("Error launching Instagram: $e");
    }
  }
}
