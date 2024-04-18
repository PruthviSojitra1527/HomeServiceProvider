import 'package:home_service/Screens/homePage/Tabs/Menu/task_done.dart';
import 'package:home_service/Screens/homePage/Tabs/Notification/notification_screen.dart';

import '../../../../Common/all_import.dart';
import '../../../../Utils/custom_bar_chart.dart';
import '../../../../Utils/custom_switch_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchValue = true;

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
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  customGradientContainer(
                      context: context,
                      height: 120,
                      title: Strings.dashboard,
                      trailingChild: Padding(
                        padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                        child: customRoundBtn(
                            context: context,
                            color: appColors.darkBlueTextColor,
                            image: ImagePath.whiteNotification,
                            padding: 12,
                            height: scalingQuery.scale(40),
                            onTap: () {
                              customNavigation(
                                  context: context,
                                  widget: const NotificationScreen());
                            }),
                      )),
                  Align(
                    heightFactor: 2,
                    alignment: const FractionalOffset(0.5, 1.50),
                    child: customContainer(
                        context: context,
                        width: scalingQuery.wp(90),
                        height: scalingQuery.scale(50),
                        child: Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Strings.iAmAvailable,
                                style: myText.semiBoldText(
                                    color: appColors.darkBlueTextColor,
                                    size: scalingQuery.fontSize(2)),
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
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: scalingQuery.scale(35),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: scalingQuery.moderateScale(12)),
                        child: Column(
                          children: [
                            customBookingCard(
                              context: context,
                              list: dummyBooking,
                              index: 0,
                              child: customContainer(
                                  context: context,
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(10)),
                                    child: Text(
                                      Strings.running.toUpperCase(),
                                      style: myText.semiBoldText(),
                                    ),
                                  ),
                                  color: appColors.btnColor.withOpacity(0.2)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                customContainer(
                                    context: context,
                                    width: scalingQuery.scale(152),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                              scalingQuery.moderateScale(15),
                                           ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "\$5,231",
                                            style: myText.semiBoldText(
                                                color:
                                                    appColors.yellowTextColor,
                                                size: scalingQuery.fontSize(3)),
                                          ),
                                          Text(
                                            Strings.totalEarning,
                                            style: myText.regularText(
                                                color: appColors
                                                    .darkBlueTextColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    color: AppTheme.mediumSecondaryColor
                                        .withOpacity(0.3)),
                                customContainer(
                                    context: context,
                                    width: scalingQuery.scale(152),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                              scalingQuery.moderateScale(15),
                                          ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "512",
                                            style: myText.semiBoldText(
                                                color: appColors.green,
                                                size: scalingQuery.fontSize(3)),
                                          ),
                                          Text(
                                            Strings.completedJob,
                                            style: myText.regularText(
                                                color: appColors
                                                    .darkBlueTextColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    color: appColors.greenOpacity
                                        .withOpacity(0.5)),
                              ],
                            ),


                          ],
                        ),
                      ),
                      customContainer(
                        context: context,
                        padding: 12,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  scalingQuery.moderateScale(15)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    Strings.earnings,
                                    style: myText.boldText(
                                        color: appColors.transactionText,
                                        size: scalingQuery.fontSize(2.5)),
                                  ),
                                  Row(
                                    children: [
                                      customContainer(
                                        context: context,
                                        color: appColors.darkBlueTextColor,
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              scalingQuery.moderateScale(8)),
                                          child: Text(
                                            "\$812",
                                            style: myText.semiBoldText(
                                              color: appColors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "This Week",
                                        style: myText.semiBoldText(
                                            color: appColors.darkBlueTextColor,
                                            size: scalingQuery.fontSize(2)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(
                                            scalingQuery.moderateScale(8)),
                                        child: Image.asset(
                                          ImagePath.dropdown,
                                          height: scalingQuery.scale(6),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                  scalingQuery.moderateScale(12)),
                              child: const BarChartContainer(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(scalingQuery.moderateScale(12)),
                        child: Text(
                          "New Booking Request - 03",
                          style: myText.boldText(
                              color: appColors.transactionText,
                              size: scalingQuery.fontSize(2.5)),
                        ),
                      ),
                      ListView.builder(
                        padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: dummyBooking.length,
                        itemBuilder: (context, index) {
                          return customBookingCard(
                              context: context,
                              list: dummyBooking,
                              index: index,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(5)),
                                    child: customRoundBtn(
                                      context: context,
                                      color: appColors.green,
                                      image: ImagePath.checkMark,
                                      padding: 10,
                                      onTap: () {
                                        customNavigation(
                                            context: context,
                                            widget: TaskDoneScreen(
                                                title: dummyBooking[index]
                                                    ['serviceName']));
                                      },
                                      height: scalingQuery.scale(35),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(5)),
                                    child: customRoundBtn(
                                      context: context,
                                      color: appColors.red,
                                      image: ImagePath.cancelWhite,
                                      padding: 11,
                                      onTap: () {
                                        int selectedValue = 1;
                                        showCustomBottomSheet(
                                            context: context,
                                            child: StatefulBuilder(
                                              builder: (context, setState) {
                                                return Padding(
                                                  padding: EdgeInsets.all(
                                                      scalingQuery.scale(12)),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  customRoundBtn(
                                                                    context:
                                                                        context,
                                                                    height: ResponsiveFlutter.of(
                                                                            context)
                                                                        .scale(
                                                                            35),
                                                                    color: appColors
                                                                        .btnColor,
                                                                    image: ImagePath
                                                                        .cancelWhite,
                                                                  ),
                                                                ],
                                                              ),
                                                              Text(
                                                                Strings
                                                                    .cancelOrder,
                                                                style: myText
                                                                    .boldText(
                                                                  size: scalingQuery
                                                                      .fontSize(
                                                                          3),
                                                                  color: appColors
                                                                      .darkBlueTextColor,
                                                                ),
                                                              ),
                                                              Text(
                                                                Strings
                                                                    .cancelReasonText,
                                                                style: myText
                                                                    .boldText(
                                                                  size: scalingQuery
                                                                      .fontSize(
                                                                          2),
                                                                  color: appColors
                                                                      .transactionText,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    scalingQuery
                                                                        .scale(
                                                                            10),
                                                              ),
                                                              customBookingCard(
                                                                context:
                                                                    context,
                                                                list:
                                                                    dummyBooking,
                                                                index: index,
                                                                onTap: (){}

                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    scalingQuery
                                                                        .scale(
                                                                            10),
                                                              ),
                                                              customContainer(
                                                                context:
                                                                    context,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: scalingQuery.moderateScale(
                                                                              8),
                                                                          vertical:
                                                                              scalingQuery.moderateScale(5)),
                                                                      child:
                                                                          Text(
                                                                        Strings
                                                                            .selectReason,
                                                                        style: myText
                                                                            .boldText(
                                                                          size:
                                                                              scalingQuery.fontSize(2.5),
                                                                          color:
                                                                              appColors.darkBlueTextColor,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    for (RadioOption option
                                                                        in radioOptions)
                                                                      Row(
                                                                        children: [
                                                                          Radio(
                                                                            splashRadius:
                                                                                scalingQuery.scale(10),
                                                                            activeColor:
                                                                                appColors.btnColor,
                                                                            value:
                                                                                option.value,
                                                                            groupValue:
                                                                                selectedValue,
                                                                            onChanged: (value) =>
                                                                                setState(() => selectedValue = value as int),
                                                                          ),
                                                                          Text(
                                                                            option.label,
                                                                            style: selectedValue == option.value
                                                                                ? myText.semiBoldText(color: appColors.darkBlueTextColor, size: scalingQuery.fontSize(2))
                                                                                : myText.regularText(color: appColors.darkBlueTextColor, size: scalingQuery.fontSize(2)),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    scalingQuery
                                                                        .scale(
                                                                            60),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            scalingQuery
                                                                .moderateScale(
                                                                    8)),
                                                        child: commonButton(
                                                          context: context,
                                                          width: scalingQuery
                                                              .wp(90),
                                                          title: Strings.submit
                                                              .toUpperCase(),
                                                          onTap: (){
                                                            Navigator.pop(context);
                                                          }
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ));
                                      },
                                      height: scalingQuery.scale(35),
                                    ),
                                  ),
                                ],
                              ));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class RadioOption {
  final int value;
  final String label;

  RadioOption({required this.value, required this.label});
}

List<RadioOption> radioOptions = [
  RadioOption(value: 1, label: Strings.reason1),
  RadioOption(value: 2, label: Strings.reason2),
  RadioOption(value: 3, label: Strings.reason3),
  RadioOption(value: 4, label: Strings.reason4),
  RadioOption(value: 5, label: Strings.reason5),
];
