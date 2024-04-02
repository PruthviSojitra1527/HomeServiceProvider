import 'package:home_service/Utils/custom_switch_button.dart';

import '../../../../Common/all_import.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  List list = [
    {"title": "Near by", "isSwitch": true},
    {"title": "Messages", "isSwitch": true},
    {"title": "From Clean", "isSwitch": true},
    {"title": "Others", "isSwitch": false},
  ];
  bool switchValue = false;

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
            customAppBar(context: context, title: Strings.notificationSettings),
            SizedBox(
              height: scalingQuery.scale(20),
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.pauseAll,
                    style: myText.semiBoldText(
                        color: appColors.transactionText,
                        size: scalingQuery.fontSize(2.5)),
                  ),
                  CustomSwitch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return customContainer(
                  context: context,
                  child: Padding(
                    padding: EdgeInsets.all(scalingQuery.moderateScale(17)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          list[index]['title'],
                          style: myText.regularText(
                              color: appColors.darkBlueTextColor,
                              size: scalingQuery.fontSize(1.8)),
                        ),
                        CustomSwitch(
                          value: list[index]["isSwitch"],
                          onChanged: (value) {
                            setState(() {
                              list[index]["isSwitch"] = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
