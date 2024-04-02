import '../../../../Common/all_import.dart';

class ServiceProviderDetails extends StatefulWidget {
  const ServiceProviderDetails({super.key, required this.index});

  final int index;

  @override
  State<ServiceProviderDetails> createState() => _ServiceState();
}

class _ServiceState extends State<ServiceProviderDetails> {
  AppColors appColors = AppColors();
  MyText myText = MyText();

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appLightColor,
        body: Column(
          children: [
            Container(
              height: scalingQuery.scale(210),
              decoration: const BoxDecoration(
                gradient: AppTheme.primaryGradient,
              ),
              child: Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: scalingQuery.scale(17),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customRoundBtn(
                          context: context,
                          height: scalingQuery.scale(35),
                          color: appColors.white,
                          image: ImagePath.blueBack,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scalingQuery.scale(17),
                            ),
                            customUserImage(
                                context: context,
                                image: dummyUserList[widget.index]['imageUrl']),
                            Text(
                              dummyUserList[widget.index]['name'],
                              style: myText.semiBoldText(
                                  size: scalingQuery.fontSize(3),
                                  color: appColors.darkBlueTextColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ImagePath.rating,
                                  height: scalingQuery.scale(15),
                                ),
                                SizedBox(
                                  width: scalingQuery.scale(5),
                                ),
                                Text(
                                  "5.0",
                                  style: myText.regularText(
                                      color: appColors.darkBlueTextColor,
                                      size: scalingQuery.fontSize(2)),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: scalingQuery.moderateScale(10)),
                                  child: Text(
                                    "|",
                                    style: myText.regularText(
                                        color: appColors.darkBlueTextColor,
                                        size: scalingQuery.fontSize(2)),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: "\$",
                                      style: myText.regularText(
                                          color: appColors.blueTextColor,
                                          size: scalingQuery.fontSize(2.5)),
                                      children: [
                                        TextSpan(
                                          text: "15",
                                          style: myText.regularText(
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
                        customRoundBtn(
                          context: context,
                          height: scalingQuery.scale(35),
                          color: appColors.btnColor,
                          image: ImagePath.whiteMassage,
                          onTap: (){},
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
              child: SizedBox(
                height: scalingQuery.scale(530),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: scalingQuery.scale(160),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(
                                          scalingQuery.moderateScale(8)),
                                      child: Image.asset(
                                        ImagePath.location,
                                        height: scalingQuery.scale(15),
                                      ),
                                    ),
                                    Text(
                                      Strings.location,
                                      style: myText.regularText(),
                                    )
                                  ],
                                ),
                                Text(
                                  dummyUserList[widget.index]['address'],
                                  style: myText.regularText(
                                      color: appColors.darkBlueTextColor),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(
                                          scalingQuery.moderateScale(8)),
                                      child: Image.asset(
                                        ImagePath.email,
                                        height: scalingQuery.scale(15),
                                      ),
                                    ),
                                    Text(
                                      Strings.email,
                                      style: myText.regularText(),
                                    )
                                  ],
                                ),
                                Text(
                                  dummyUserList[widget.index]['email'],
                                  style: myText.regularText(
                                      color: appColors.darkBlueTextColor),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(
                                          scalingQuery.moderateScale(8)),
                                      child: Image.asset(
                                        ImagePath.calender,
                                        height: scalingQuery.scale(15),
                                      ),
                                    ),
                                    Text(
                                      dummyUserList[widget.index]['available']
                                          ['day'],
                                      style: myText.regularText(),
                                    )
                                  ],
                                ),
                                Text(
                                  dummyUserList[widget.index]['available']
                                      ['time'],
                                  style: myText.regularText(
                                      color: appColors.darkBlueTextColor),
                                )
                              ],
                            ),
                            SizedBox(
                              height: scalingQuery.scale(10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                commonButton(
                                    context: context,
                                    width: scalingQuery.scale(150),
                                    btnColor: appColors.yellow,
                                    title: Strings.bookNow,
                                    style: myText.regularText(
                                      color: appColors.white,
                                      size: ResponsiveFlutter.of(context)
                                          .fontSize(2),
                                    ),
                                    onTap: () {
                                      customNavigation(
                                          context: context,
                                          widget: BookingOrderScreen(
                                              index: widget.index));
                                    }),
                                commonButton(
                                  context: context,
                                  width: scalingQuery.scale(150),
                                  title: Strings.callNow,
                                  style: myText.regularText(
                                    color: appColors.white,
                                    size: ResponsiveFlutter.of(context)
                                        .fontSize(2),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        Strings.service,
                        style: myText.semiBoldText(
                            color: appColors.transactionText,
                            size: scalingQuery.fontSize(2.5)),
                      ),
                      SizedBox(
                        height: scalingQuery.scale(10),
                      ),
                      SizedBox(
                        height: scalingQuery.scale(150),
                        child: ListView.builder(
                            shrinkWrap: true,
                            primary: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: dummyItemList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(
                                    scalingQuery.moderateScale(5)),
                                child: Container(
                                  width: scalingQuery.scale(100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: appColors.appMediumColor,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(5)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(
                                              scalingQuery.moderateScale(15)),
                                          child: Image.asset(
                                            dummyItemList[index]['imageUrl'],
                                            height: scalingQuery.scale(30),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          // width:scalingQuery.scale(80),
                                          scrollDirection: Axis.horizontal,
                                          child: Text(
                                            dummyItemList[index]['name'],
                                            style: myText.regularText(
                                                size:
                                                    scalingQuery.fontSize(1.8)),
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: "\$",
                                              style: myText.regularText(
                                                  color:
                                                      appColors.blueTextColor,
                                                  size: scalingQuery
                                                      .fontSize(2.5)),
                                              children: [
                                                TextSpan(
                                                  text: "15",
                                                  style: myText.regularText(
                                                      color: appColors
                                                          .darkBlueTextColor,
                                                      size: scalingQuery
                                                          .fontSize(2.5)),
                                                ),
                                                TextSpan(
                                                  text: "/h",
                                                  style: myText.regularText(
                                                      size: scalingQuery
                                                          .fontSize(2.5)),
                                                ),
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: scalingQuery.scale(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Strings.reviews,
                            style: myText.semiBoldText(
                                color: appColors.transactionText,
                                size: scalingQuery.fontSize(2.5)),
                          ),
                          Text(
                            Strings.viewAll,
                            style: myText.regularText(
                              isUnderline: true,
                                color: appColors.darkBlueTextColor,
                                size: scalingQuery.fontSize(1.7)),
                          ),
                        ],
                      ),
                    
                      SizedBox(
                        child: ListView.separated(
                          padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                            shrinkWrap: true,
                            primary: false,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(
                                            scalingQuery.scale(5)),
                                        child: customUserImage(
                                          context: context,
                                          image: dummyReviewList[index]
                                              ['imageUrl'],
                                          height: scalingQuery.scale(30),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            dummyReviewList[index]['name'],
                                            style: myText.semiBoldText(
                                                color:
                                                    appColors.darkBlueTextColor,
                                                size:
                                                    scalingQuery.fontSize(1.8)),
                                          ),
                                          Text(
                                            dummyReviewList[index]['time'],
                                            style: myText.regularText(
                                                color:
                                                    appColors.darkBlueTextColor,
                                                size:
                                                    scalingQuery.fontSize(1.8)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    dummyReviewList[index]['review'],
                                    style: myText.regularText(
                                        size: scalingQuery.fontSize(1.5)),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(scalingQuery.scale(8)),
                                child: Divider(
                                  height: scalingQuery.scale(1),
                                ),
                              );
                            },
                            itemCount: dummyReviewList.length),
                      ),
                      SizedBox(
                        height: scalingQuery.scale(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Strings.myWork,
                            style: myText.semiBoldText(
                                color: appColors.transactionText,
                                size: scalingQuery.fontSize(2.5)),
                          ),
                          Text(
                            Strings.viewAll,
                            style: myText.regularText(
                                isUnderline: true,
                                color: appColors.darkBlueTextColor,
                                size: scalingQuery.fontSize(1.7)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scalingQuery.scale(10),
                      ),
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        shrinkWrap: true,
                        primary: false,
                        padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: dummyImageList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: scalingQuery.moderateScale(5)),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    scalingQuery.moderateScale(20)),
                                color: appColors.appLightColor,
                              ),
                              child: Image.asset(
                                  dummyImageList[index]['imageUrl']),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
