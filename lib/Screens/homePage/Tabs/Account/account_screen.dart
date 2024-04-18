import 'package:home_service/Screens/homePage/Tabs/Account/customer_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/edit_profile.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/ratting_review.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/settings_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/wallet_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/working_hours_screen.dart';
import '../../../../Common/all_import.dart';
import '../Notification/notification_screen.dart';

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
        'title': Strings.notification,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(
              context: context, widget: const NotificationScreen());
        },
      },
      {
        'image': ImagePath.tab_4,
        'title': Strings.customer,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(context: context, widget: const CustomerScreen());
        },
      },
      {
        'image': ImagePath.help,
        'title': Strings.reviewAndRating,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(context: context, widget: const ReviewRatings());
        },
      },
      {
        'image': ImagePath.termsAndConditions,
        'title': Strings.wallet,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(
              context: context, widget: const WalletScreen());
        },
      },
      {
        'image': ImagePath.privacyPolicy,
        'title': Strings.settings,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(context: context, widget: const SettingsScreen());
        },
      },
      {
        'image': ImagePath.privacyPolicy,
        'title': Strings.workingHours,
        'icon': ImagePath.forwardArrow,
        'child': null,
        'onTap': () {
          customNavigation(
              context: context, widget: const WorkingHoursScreen());
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
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(scalingQuery.moderateScale(3)),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: list[index]['onTap'],
                    splashColor: appColors.transparent,
                    child: customContainer(
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
                                      horizontal:
                                          scalingQuery.moderateScale(10)),
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
                                : Image.asset(
                                    list[index]['icon'],
                                    height: scalingQuery.scale(10),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: scalingQuery.scale(0),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
              child: InkWell(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
