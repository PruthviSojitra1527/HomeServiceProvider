import '../../../../Common/all_import.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key, this.index, required this.isSearch});

  final int? index;
  final bool isSearch;

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.white,
        body: Column(
          children: [
            !widget.isSearch
                ? Container(
                    height: scalingQuery.scale(220),
                    decoration: const BoxDecoration(
                      gradient: AppTheme.primaryGradient,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: scalingQuery.scale(17),
                          ),
                          Row(
                            children: [
                              customRoundBtn(
                                context: context,
                                height: scalingQuery.scale(35),
                                color: appColors.white,
                                image: ImagePath.blueBack,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              customRoundBtn(
                                  context: context,
                                  height: scalingQuery.scale(80),
                                  color: appColors.white,
                                  image: dummyItemList[widget.index ?? 0]
                                      ['imageUrl'],
                                  padding: 20.0,
                              onTap: (){}),
                              Text(
                                dummyItemList[widget.index ?? 0]['name'],
                                style: myText.semiBoldText(
                                    size: scalingQuery.fontSize(3),
                                    color: appColors.darkBlueTextColor),
                              ),
                              Text(
                                dummyItemList[widget.index ?? 0]['title'],
                                style: myText.regularText(
                                    size: scalingQuery.fontSize(1.5)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox(
                    height: scalingQuery.scale(155),
                    child: Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: scalingQuery.scale(5),
                          ),
                          Row(
                            children: [
                              customRoundBtn(
                                  context: context,
                                  height: scalingQuery.scale(35),
                                  color: appColors.white,
                                  image: ImagePath.blueBack,
                                  shadow: true),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: scalingQuery.moderateScale(12)),
                                child: Text(
                                  Strings.search,
                                  style: myText.semiBoldText(
                                      size: scalingQuery.fontSize(3),
                                      color: appColors.darkBlueTextColor),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: scalingQuery.scale(20),
                          ),
                          customContainer(
                              color: appColors.appMediumColor,
                              context: context,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    scalingQuery.moderateScale(12)),
                                child: commonTextField(
                                    context: context,
                                    icon: true,
                                    image: ImagePath.search,
                                    hintText: Strings.searchExpert,
                                    color: appColors.darkBlueTextColor),
                              ))
                        ],
                      ),
                    ),
                  ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: scalingQuery.scale(10)),
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: dummyUserList.length,
                  padding: EdgeInsets.all(scalingQuery.scale(5)),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        customNavigation(
                          context: context,
                          widget: ServiceProviderDetails(index: index),
                        );
                      },
                      child: Container(
                        height: scalingQuery.scale(170),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: appColors.white,
                          image: const DecorationImage(
                            image: AssetImage(
                              ImagePath.bgShape,
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                customUserImage(
                                    context: context,
                                    image: dummyUserList[index]['imageUrl']),
                                SizedBox(
                                  width: scalingQuery.scale(10),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      dummyUserList[index]['name'],
                                      style: myText.semiBoldText(
                                          color: appColors.darkBlueTextColor,
                                          size: scalingQuery.fontSize(2.5)),
                                    ),
                                    Text(
                                      "2.5km away",
                                      style: myText.regularText(
                                          size: scalingQuery.fontSize(2)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: scalingQuery.scale(10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ratings",
                                      style: myText.regularText(
                                          size: scalingQuery.fontSize(2)),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          ImagePath.rating,
                                          height: scalingQuery.scale(20),
                                        ),
                                        SizedBox(
                                          width: scalingQuery.scale(5),
                                        ),
                                        Text(
                                          "5.0",
                                          style: myText.regularText(
                                              color:
                                                  appColors.darkBlueTextColor,
                                              size: scalingQuery.fontSize(2.5)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Price",
                                      style: myText.regularText(
                                          size: scalingQuery.fontSize(2)),
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
                                              style: myText.semiBoldText(
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
                                commonButton(
                                    context: context,
                                    width: scalingQuery.scale(100),
                                    title: Strings.bookNow,
                                    btnColor: appColors.yellow,
                                    onTap: () {
                                      customNavigation(
                                        context: context,
                                        widget: BookingOrderScreen(
                                          index: widget.index ?? 0,
                                        ),
                                      );
                                    })
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
