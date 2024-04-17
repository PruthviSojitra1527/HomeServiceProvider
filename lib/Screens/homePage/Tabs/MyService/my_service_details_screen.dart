import '../../../../Common/all_import.dart';
import 'edit_service.dart';

class MyServiceProviderDetails extends StatefulWidget {
  const MyServiceProviderDetails({super.key, required this.index});

  final int index;

  @override
  State<MyServiceProviderDetails> createState() => _ServiceState();
}

class _ServiceState extends State<MyServiceProviderDetails> {
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
              height: scalingQuery.scale(180),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: scalingQuery.scale(17),
                            ),
                            Image.asset(
                              dummyItemList[widget.index]['imageUrl'],
                              height: scalingQuery.scale(50),
                            ),
                            Text(
                              dummyItemList[widget.index]['name'],
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
                                      horizontal:
                                          scalingQuery.moderateScale(10)),
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
                                              color:
                                                  appColors.darkBlueTextColor,
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
                          color: appColors.appLightColor,
                          image: ImagePath.more,
                          onTap: () {
                            showCustomBottomSheet(
                                context: context,
                                child: customContainer(
                                    context: context,
                                    height: scalingQuery.scale(80),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          scalingQuery.moderateScale(12)),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              Navigator.of(context).pop();
                                              customNavigation(
                                                  context: context,
                                                  widget: const EditService());
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  ImagePath.editBlue,
                                                  height:
                                                      scalingQuery.scale(15),
                                                ),
                                                SizedBox(
                                                  width: scalingQuery.scale(10),
                                                ),
                                                Text(
                                                  Strings.edit.toUpperCase(),
                                                  style: myText.semiBoldText(
                                                      color: appColors
                                                          .darkBlueTextColor,
                                                      size: scalingQuery
                                                          .fontSize(2)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: scalingQuery.scale(10),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                ImagePath.dlt,
                                                height: scalingQuery.scale(15),
                                              ),
                                              SizedBox(
                                                width: scalingQuery.scale(10),
                                              ),
                                              Text(
                                                Strings.dlt.toUpperCase(),
                                                style: myText.semiBoldText(
                                                    color: appColors.red,
                                                    size: scalingQuery
                                                        .fontSize(2)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )));
                          },
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
                height: scalingQuery.hp(100) - scalingQuery.scale(200),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReviewRatingFunction(),
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
                      ),
                      customUploadContainer(context: context)
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

class ReviewRatingFunction extends StatefulWidget {
  const ReviewRatingFunction({
    super.key,
    this.scrolling = false,
    this.text = true,
    this.length = 2,
  });

  final bool scrolling;
  final bool text;
  final int length;

  @override
  State<ReviewRatingFunction> createState() => _ReviewRatingFunctionState();
}

class _ReviewRatingFunctionState extends State<ReviewRatingFunction> {
  int listLength = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listLength = widget.length;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          widget.text
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Strings.reviews,
                      style: myText.semiBoldText(
                          color: appColors.transactionText,
                          size: ResponsiveFlutter.of(context).fontSize(2.5)),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          listLength == 2
                              ? listLength = dummyReviewList.length
                              : listLength = 2;
                        });
                      },
                      child: Text(
                        listLength != 2 ? Strings.viewLess : Strings.viewAll,
                        style: myText.regularText(
                            isUnderline: true,
                            color: appColors.darkBlueTextColor,
                            size: ResponsiveFlutter.of(context).fontSize(1.7)),
                      ),
                    ),
                  ],
                )
              : Container(),
          widget.text
              ? SizedBox(
                  height: ResponsiveFlutter.of(context).scale(10),
                )
              : Container(),
          ListView.separated(
            padding:
                EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(0)),
            shrinkWrap: true,
            primary: false,
            physics: !widget.scrolling
                ? const NeverScrollableScrollPhysics()
                : const AlwaysScrollableScrollPhysics(),
            itemCount: listLength,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                                ResponsiveFlutter.of(context).scale(5)),
                            child: customUserImage(
                              context: context,
                              image: dummyReviewList[index]['imageUrl'],
                              height: ResponsiveFlutter.of(context).scale(30),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dummyReviewList[index]['name'],
                                style: myText.semiBoldText(
                                    color: appColors.darkBlueTextColor,
                                    size: ResponsiveFlutter.of(context)
                                        .fontSize(1.8)),
                              ),
                              Text(
                                dummyReviewList[index]['time'],
                                style: myText.regularText(
                                    color: appColors.darkBlueTextColor,
                                    size: ResponsiveFlutter.of(context)
                                        .fontSize(1.8)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right:
                                ResponsiveFlutter.of(context).moderateScale(8)),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: appColors.yellow.withOpacity(0.3)),
                          child: Padding(
                            padding: EdgeInsets.all(
                                ResponsiveFlutter.of(context).moderateScale(5)),
                            child: Row(
                              children: [
                                Image.asset(
                                  ImagePath.rating,
                                  height:
                                      ResponsiveFlutter.of(context).scale(12),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ResponsiveFlutter.of(context)
                                          .moderateScale(5)),
                                  child: Text(
                                    "4.5",
                                    style: myText.regularText(
                                        color: appColors.darkBlueTextColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        ResponsiveFlutter.of(context).moderateScale(12)),
                    child: Text(
                      dummyReviewList[index]['review'],
                      style: myText.regularText(
                          size: ResponsiveFlutter.of(context).fontSize(1.7)),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(ResponsiveFlutter.of(context).scale(8)),
                child: Divider(
                  height: ResponsiveFlutter.of(context).scale(1),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
