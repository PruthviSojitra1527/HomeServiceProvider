import '../../../../Common/all_import.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/account_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Home/home_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Menu/menu_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Message/message_screen.dart';
import 'package:home_service/Screens/homePage/Tabs/Notification/notification_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppColors appColors = AppColors();
  MyText myText = MyText();

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List tabIcons = [
    ImagePath.tab_0,
    ImagePath.tab_1,
    ImagePath.tab_2,
    ImagePath.tab_3,
    ImagePath.tab_4,
  ];

  final List tabACIcons = [
    ImagePath.tabAC_0,
    ImagePath.tabAC_1,
    ImagePath.tabAC_2,
    ImagePath.tabAC_3,
    ImagePath.tabAC_4,
  ];

  final List screens = [
    const MenuScreen(),
    const MsgScreen(),
    const HomeScreen(),
    const NotificationScreen(),
    const MyAccount(),
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          tabIcons: tabIcons,
          tabACIcons: tabACIcons,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final List tabIcons;
  final List tabACIcons;
  final ValueChanged<int>? onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.tabIcons,
    required this.tabACIcons,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    AppColors appColors = AppColors();

    return Container(
      height: scalingQuery.scale(60), // Decreased height
      decoration: BoxDecoration(
        color: appColors.appDarkColor,
        border: Border(
          top: BorderSide(
            color: appColors.dividerColor,
            width: scalingQuery.scale(2),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          tabIcons.length,
          (index) => InkWell(
            onTap: () {
              if (onTap != null) {
                onTap!(index);
              }
            },
            child: index == 2
                ? Container(
                    height: scalingQuery.scale(45),
                    width: scalingQuery.scale(45),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: AppTheme.darkGradient,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(15)),
                      // Adjusted padding
                      child: Image.asset(tabACIcons[index]),
                    ),
                  )
                : currentIndex == index && currentIndex != 2
                    ? SizedBox(
                        height: scalingQuery.scale(30),
                        width: scalingQuery.scale(30),
                        child: Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(5)),
                          child: Image.asset(
                            tabACIcons[index],
                            height: scalingQuery.scale(20),
                          ),
                        ),
                      )
                    : SizedBox(
                        height: scalingQuery.scale(30),
                        width: scalingQuery.scale(30),
                        child: Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(5)),
                          child: Image.asset(
                            tabIcons[index],
                            height: scalingQuery.scale(20),
                          ),
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}
