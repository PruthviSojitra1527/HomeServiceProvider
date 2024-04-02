import '../../../../Common/all_import.dart';
import '../../../../Utils/custom_bar_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      trailingChild: customRoundBtn(
                          context: context,
                          color: appColors.darkBlueTextColor,
                          image: ImagePath.whiteNotification,
                          padding: 12,
                      height: scalingQuery.scale(40)
                      )),
                  Align(
                      heightFactor: 2,
                      alignment: const FractionalOffset(0.5, 1.50),
                      child: customContainer(
                          context: context,
                          width: scalingQuery.wp(90),
                          height: scalingQuery.scale(50))),
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
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                              scalingQuery.moderateScale(15),
                                          horizontal:
                                              scalingQuery.moderateScale(30)),
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
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                              scalingQuery.moderateScale(15),
                                          horizontal:
                                              scalingQuery.moderateScale(30)),
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
                            )
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
