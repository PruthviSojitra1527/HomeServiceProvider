import '../../../../Common/all_import.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key, required this.list, required this.index});

  final List list;
  final int index;

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  AppColors appColors = AppColors();
  MyText myText = MyText();

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appMediumColor,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: scalingQuery.scale(85),
                  decoration: const BoxDecoration(
                    gradient: AppTheme.primaryGradient,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: scalingQuery.moderateScale(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: scalingQuery.scale(17),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                customRoundBtn(
                                  context: context,
                                  height: scalingQuery.scale(35),
                                  color: appColors.white,
                                  image: ImagePath.blueBack,
                                ),
                                SizedBox(
                                  width: scalingQuery.scale(17),
                                ),
                                Text(
                                  Strings.bookingDetails,
                                  style: myText.semiBoldText(
                                    color: appColors.darkBlueTextColor,
                                    size: scalingQuery.fontSize(2.5),
                                  ),
                                ),
                              ],
                            ),
                            customRoundBtn(
                                context: context,
                                height: scalingQuery.scale(35),
                                color: appColors.btnColor,
                                image: ImagePath.whiteMassage)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: scalingQuery.scale(15),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    scalingQuery.moderateScale(10),
                  ),
                  child: customUserCard(
                    context: context,
                    list: widget.list,
                    index: widget.index,
                    isBookingDetailsScreen: true,
                  ),
                ),
                customContainer(
                  context: context,
                  color: appColors.darkBlueTextColor,
                  width: scalingQuery.wp(90),
                  child: Padding(
                    padding: EdgeInsets.all(scalingQuery.scale(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.serviceLocationAddress,
                          style: myText.regularText(),
                        ),
                        SizedBox(
                          height: scalingQuery.scale(3),
                        ),
                        Text(
                          Strings.dummy_6,
                          style: myText.semiBoldText(
                              color: appColors.white,
                              size: scalingQuery.fontSize(2)),
                        ),
                      ],
                    ),
                  ),
                ),
                customContainer(
                  context: context,
                  child: Padding(
                    padding: EdgeInsets.all(scalingQuery.scale(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.selectedServices,
                          style: myText.regularText(),
                        ),
                        SizedBox(
                          height: scalingQuery.scale(10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ImagePath.washAndFold,
                                  height: scalingQuery.scale(40),
                                ),
                                SizedBox(
                                  width: scalingQuery.scale(10),
                                ),
                                Text(
                                  Strings.washAndFold,
                                  style: myText.semiBoldText(
                                    color: appColors.darkBlueTextColor,
                                    size: scalingQuery.fontSize(2),
                                  ),
                                ),
                              ],
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "\$",
                                  style: myText.regularText(
                                      color: appColors.blueTextColor,
                                      size: scalingQuery.fontSize(2.5)),
                                  children: [
                                    TextSpan(
                                      text: "20",
                                      style: myText.semiBoldText(
                                          color: appColors.darkBlueTextColor,
                                          size: scalingQuery.fontSize(2.5)),
                                    ),
                                    TextSpan(
                                      text: "/h",
                                      style: myText.regularText(
                                          size: scalingQuery.fontSize(2.5)),
                                    ),
                                  ]),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                customContainer(
                  context: context,
                  child: Padding(
                    padding: EdgeInsets.all(scalingQuery.scale(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.bookingConfirmDateTime,
                          style: myText.regularText(),
                        ),
                        SizedBox(
                          height: scalingQuery.scale(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.dummy_7,
                              style: myText.semiBoldText(
                                color: appColors.blueTextColor,
                                size: scalingQuery.fontSize(2),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Strings.dummy_8,
                                  style: myText.semiBoldText(
                                    color: appColors.darkBlueTextColor,
                                    size: scalingQuery.fontSize(1.8),
                                  ),
                                ),
                                Text(
                                  Strings.dummy_9,
                                  style: myText.semiBoldText(
                                    color: appColors.darkBlueTextColor,
                                    size: scalingQuery.fontSize(1.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: scalingQuery.moderateScale(20),
                      vertical: scalingQuery.moderateScale(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Strings.dummy_10,
                        style: myText.semiBoldText(
                          color: appColors.darkBlueTextColor,
                          size: scalingQuery.fontSize(2),
                        ),
                      ),
                      Text(
                        Strings.dummy_11,
                        style: myText.semiBoldText(
                          color: appColors.darkBlueTextColor,
                          size: scalingQuery.fontSize(2),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: scalingQuery.moderateScale(20),
                      vertical: scalingQuery.moderateScale(20)),
                  child: Text(
                    "${Strings.totalPayable} ${Strings.dummy_11}",
                    style: myText.semiBoldText(
                      color: appColors.blueTextColor,
                      size: scalingQuery.fontSize(2.2),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
              child: commonButton(
                  context: context,
                  title: Strings.cancelBooking,
                  width: scalingQuery.wp(90)),
            )
          ],
        ),
      ),
    );
  }
}
