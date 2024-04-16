import 'package:home_service/Common/all_import.dart';
import 'package:home_service/Screens/homePage/Tabs/MyService/add_service.dart';
import 'package:home_service/Screens/homePage/Tabs/Notification/notification_screen.dart';

import 'my_service_details_screen.dart';

class MyServicesScreen extends StatefulWidget {
  const MyServicesScreen({super.key});

  @override
  State<MyServicesScreen> createState() => _MyServicesScreenState();
}

class _MyServicesScreenState extends State<MyServicesScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appMediumColor,
        body: Column(
          children: [
            customGradientContainer(
              context: context,
              title: Strings.myServices,
              trailingChild: Row(
                children: [
                  customRoundBtn(
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
                  SizedBox(
                    width: scalingQuery.scale(10),
                  ),
                  customRoundBtn(
                    context: context,
                    color: appColors.btnColor,
                    image: ImagePath.addWhiteBtn,
                    padding: 5,
                    onTap: () {
                      customNavigation(
                          context: context, widget: const AddService());
                    },
                    height: scalingQuery.scale(35),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
              child: ListView.builder(
                padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                shrinkWrap: true,
                itemCount: dummyItemList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      customNavigation(
                          context: context,
                          widget: MyServiceProviderDetails(
                            index: index,
                          ));
                    },
                    child: customServiceCard(
                      context: context,
                      list: dummyItemList,
                      index: index,
                    ),
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
