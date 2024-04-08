import 'package:home_service/Screens/homePage/Tabs/Account/bank_details.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/cancellation_policy_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/change_password_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/help_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/notification_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/privacy_policy_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/terms_and_condition_screen.dart';

import '../../../../Common/all_import.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String selectedItem = language.isNotEmpty ? language.first : '';
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    List list = [
      {
        'image': ImagePath.notification,
        'title': Strings.notificationSettings,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(
              context: context, widget: const NotificationSettingScreen());
        },
      },
      {
        'image': ImagePath.changePassword,
        'title': Strings.changePassword,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(context: context, widget: const ChangePassword());
        },
      },
      {
        'image': ImagePath.changePassword,
        'title': Strings.bankDetails,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(context: context, widget: const BankDetailsScreen());
        },
      },
      {
        'image': ImagePath.help,
        'title': Strings.help,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(context: context, widget: const HelpScreen());
        },
      },
      {
        'image': ImagePath.termsAndConditions,
        'title': Strings.termsAndCondition,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(
              context: context, widget: const TermsConditionScreen());
        },
      },
      {
        'image': ImagePath.privacyPolicy,
        'title': Strings.privacyPolicy,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(
              context: context, widget: const PrivacyPolicyScreen());
        },
      },
      {
        'image': ImagePath.privacyPolicy,
        'title': Strings.cancellationPolicy,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(
              context: context, widget: const CancellationPolicyScreen());
        },
      },
    ];

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appMediumColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customGradientContainer(
              context: context,
              title: Strings.settings,
              leadingChild: customRoundBtn(
                height: scalingQuery.scale(35),
                context: context,
                image: ImagePath.blueBack,
              ),
            ),
            SizedBox(
              height: scalingQuery.hp(60),
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(scalingQuery.moderateScale(3)),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return customContainer(
                    context: context,
                    child: Padding(
                      padding: list[index]['icon'] != null
                          ? EdgeInsets.all(scalingQuery.scale(17))
                          : EdgeInsets.symmetric(
                              horizontal: scalingQuery.scale(17),
                            ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                list[index]['image'],
                                height: scalingQuery.scale(15),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: scalingQuery.moderateScale(10)),
                                child: Text(
                                  list[index]['title'],
                                  style: myText.regularText(
                                      color: appColors.darkBlueTextColor),
                                ),
                              ),
                            ],
                          ),
                          list[index]['icon'] == null
                              ? list[index]['child']
                              : InkWell(
                                  onTap: list[index]['onTap'],
                                  child: Container(
                                      alignment: Alignment.centerRight,
                                      width: scalingQuery.scale(100),
                                      child: Image.asset(
                                        list[index]['icon'],
                                        height: scalingQuery.scale(10),
                                      )),
                                ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: scalingQuery.scale(2),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
