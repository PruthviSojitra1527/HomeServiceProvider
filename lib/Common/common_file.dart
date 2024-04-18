import 'package:url_launcher/url_launcher.dart';

import '../../../../Common/all_import.dart';



customNavigation({required BuildContext context, required widget}) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}

customNavigationReplacement({required BuildContext context, required widget}) {
  return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}
void launchURL({number}) async {
  var url = 'tel:+${number ?? Strings.dummy_24}';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}