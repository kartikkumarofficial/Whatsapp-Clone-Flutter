import 'package:url_launcher/url_launcher.dart';

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

  void openFacebook() async {
    String fbScheme = "fb://profile/";
    String fbUrl = "https://www.facebook.com/"; //url to be provided

    try {
      bool canOpen = await canLaunchUrl(Uri.parse(fbScheme));
      print("Can open Facebook app: $canOpen");

      if (canOpen) {
        await launchUrl(Uri.parse(fbScheme), mode: LaunchMode.externalApplication);
      } else {
        await launchUrl(Uri.parse(fbUrl), mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      print("Error launching Facebook: $e");
    }
  }

  void openThreads() async {
    String threadsScheme = "threads://user-profile/guyfromlabyrinth";
    String threadsUrl = "https://www.threads.net/@guyfromlabyrinth";

    try {
      bool canOpen = await canLaunchUrl(Uri.parse(threadsScheme));
      print("Can open Threads app: $canOpen");

      if (canOpen) {
        await launchUrl(Uri.parse(threadsScheme), mode: LaunchMode.externalApplication);
      } else {
        await launchUrl(Uri.parse(threadsUrl), mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      print("Error launching Threads: $e");
    }
  }
}
