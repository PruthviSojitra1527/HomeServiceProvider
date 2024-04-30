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

snackBarFunction(
    {content1 = "", color, required context, content2 = "", checkBox = true}) {
  final snackBar = SnackBar(
    backgroundColor: color ?? appColors.appMediumColor,
    padding: EdgeInsets.zero,
    content: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        checkBox
            ? Padding(
          padding: EdgeInsets.all(
              ResponsiveFlutter.of(context).moderateScale(15)),
          child: customCheckButton(
              context: context,
              activeColor: appColors.darkBlueTextColor,
              color: appColors.white,
              isChecked: true),
        )
            : Container(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content1,
              style: myText.boldText(
                size: ResponsiveFlutter.of(context).fontSize(2),
                color: appColors.darkBlueTextColor,
              ),
            ),
            Text(
              content2,
              style: myText.regularText(
                size: ResponsiveFlutter.of(context).fontSize(1.8),
                color: appColors.darkBlueTextColor,
              ),
            ),
          ],
        ),
      ],
    ),
    dismissDirection: DismissDirection.horizontal,
    duration: const Duration(seconds: 15),
    action: SnackBarAction(
      label: 'Close',
      textColor: appColors.darkBlueTextColor,
      onPressed: () {},
    ),
  );
  return snackBar;
}

void launchURL({number}) async {
  var url = 'tel:+${number ?? Strings.dummy_24}';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}