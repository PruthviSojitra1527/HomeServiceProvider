import 'package:home_service/Screens/homePage/Tabs/Menu/active_tab.dart';
import 'package:home_service/Screens/homePage/Tabs/Menu/upcoming_tab.dart';
import 'package:home_service/Screens/homePage/Tabs/Notification/notification_screen.dart';

import '../../../../Common/all_import.dart';
import '../../../../Utils/search_screen.dart';
import 'canceled_tab.dart';
import 'completed_tab.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  AppColors appColors = AppColors();
  MyText myText = MyText();
  final List<Widget> _tabs = [
    const ActiveScreen(),
    const UpcomingScreen(),
    const CompletedScreen(),
    const CanceledScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: appColors.appLightColor,
        appBar: AppBar(
          backgroundColor: appColors.transparent,
          elevation: 0,
          leadingWidth: 0,
          leading: Container(),
          title: Text(
            Strings.myBooking,
            style: myText.boldText(),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
              child: customRoundBtn(
                context: context,
                color: appColors.darkBlueTextColor,
                image: ImagePath.whiteNotification,
                padding: 10,
                onTap: () {
                  customNavigation(
                      context: context, widget: const NotificationScreen());
                },
                height: scalingQuery.scale(35),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
              child: customRoundBtn(
                context: context,
                color: appColors.btnColor,
                image: ImagePath.search,
                onTap: () {
                  customNavigation(
                      context: context,
                      widget: const SearchScreen(
                        hintText: Strings.bookingDetails,
                      ));
                },
                padding: 10,
                height: scalingQuery.scale(35),
              ),
            ),
          ],
          flexibleSpace: Container(
            height: scalingQuery.scale(100),
            decoration: const BoxDecoration(
              gradient: AppTheme.primaryGradient,
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              onTap: (_) {
                FocusScope.of(context).unfocus();
              },
              indicatorColor: appColors.blueTextColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: scalingQuery.scale(2),
              unselectedLabelColor: appColors.darkBlueTextColor,
              labelColor: appColors.blueTextColor,
              labelStyle: myText.semiBoldText(),
              dividerColor: appColors.dividerColor.withOpacity(0.3),
              enableFeedback: true,
              automaticIndicatorColorAdjustment: true,
              isScrollable: true,
              tabAlignment: TabAlignment.center,
              tabs: const [
                Tab(
                  child: Text(
                    Strings.active,
                  ),
                ),
                Tab(
                  child: Text(
                    Strings.upcoming,
                  ),
                ),
                Tab(
                  child: Text(
                    Strings.completed,
                  ),
                ),
                Tab(
                  child: Text(
                    Strings.canceled,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: _tabs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
