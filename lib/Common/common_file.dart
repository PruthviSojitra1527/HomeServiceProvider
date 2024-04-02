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
