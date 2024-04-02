import 'package:home_service/Screens/homePage/Tabs/Account/change_password_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/edit_profile.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/help_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/notification_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/privacy_policy_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/terms_and_condition_screen.dart';

import '../../../../Common/all_import.dart';
import '../../../../Utils/custom_switch_button.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
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
        'image': ImagePath.changeLanguage,
        'title': Strings.changeLanguage,
        'icon': null,
        'onTap': () {},
        'child': customContainer(
            context: context,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: scalingQuery.moderateScale(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    selectedItem,
                    style: myText.semiBoldText(
                        color: appColors.white, size: scalingQuery.fontSize(2)),
                  ),
                  DropdownButton(
                    padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                    dropdownColor: appColors.white,
                    style: myText.regularText(size: scalingQuery.fontSize(2)),
                    onChanged: (newValue) {
                      setState(() {
                        selectedItem = newValue! as String;
                      });
                    },
                    items: language.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: myText.regularText(
                              color: appColors.darkBlueTextColor),
                        ),
                      );
                    }).toList(),
                    underline: Container(),
                    icon: Image.asset(
                      ImagePath.whiteDropdown,
                      height: scalingQuery.scale(8),
                    ),
                  ),
                ],
              ),
            ),
            color: appColors.yellow),
      },
      {
        'image': ImagePath.changeTheme,
        'title': Strings.changeTheme,
        'icon': null,
        'onTap': () {},
        'child': Padding(
          padding: EdgeInsets.all(scalingQuery.moderateScale(17)),
          child: CustomSwitch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            },
          ),
        )
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
            Container(
              height: scalingQuery.scale(190),
              decoration: const BoxDecoration(
                gradient: AppTheme.primaryGradient,
              ),
              child: Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: scalingQuery.scale(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.profile,
                          style: myText.boldText(
                            size: scalingQuery.fontSize(2.8),
                          ),
                        ),
                        customRoundBtn(
                            context: context,
                            image: ImagePath.edit,
                            height: scalingQuery.scale(35),
                            padding: 10,
                            onTap: () {
                              customNavigation(
                                  context: context,
                                  widget: const EditProfile());
                            })
                      ],
                    ),
                    SizedBox(
                      height: scalingQuery.scale(17),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        customUserImage(
                            context: context, image: ImagePath.dummyUser3),
                        SizedBox(
                          width: scalingQuery.scale(15),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.dummy_5,
                              style: myText.semiBoldText(
                                  size: scalingQuery.fontSize(3),
                                  color: appColors.darkBlueTextColor),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          scalingQuery.moderateScale(5)),
                                  child: Image.asset(
                                    ImagePath.email,
                                    height: scalingQuery.scale(10),
                                  ),
                                ),
                                Text(
                                  Strings.dummy_12,
                                  style: myText.regularText(
                                      size: scalingQuery.fontSize(1.8),
                                      color: appColors.darkBlueTextColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
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

            InkWell(
              onTap: () {},
              child: SizedBox(
                  width: scalingQuery.verticalScale(100),
                  height: scalingQuery.verticalScale(40),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: appColors.red,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImagePath.logout,
                          height: scalingQuery.scale(25),
                        ),
                        SizedBox(
                          width: scalingQuery.scale(5),
                        ),
                        Text(
                          Strings.logout,
                          style: myText.boldText(
                            color: appColors.white,
                            size: scalingQuery.fontSize(2),
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
