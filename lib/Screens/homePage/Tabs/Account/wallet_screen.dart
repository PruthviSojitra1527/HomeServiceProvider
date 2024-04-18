import 'package:home_service/Common/all_import.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
                title: Strings.wallet,
                leadingChild: customRoundBtn(
                  context: context,
                  height: ResponsiveFlutter.of(context).scale(35),
                  color: appColors.white,
                  image: ImagePath.blueBack,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                     
                      SizedBox(
                        height: scalingQuery.scale(15),
                      ),
                      Text(
                        Strings.yourBalance,
                        style: myText.semiBoldText(
                            color: appColors.transactionText,
                            size: ResponsiveFlutter.of(context).fontSize(2.5)),
                      ),
                      Text(
                        Strings.dummy_22,
                        style: myText.semiBoldText(
                            color: appColors.darkBlueTextColor,
                            size: ResponsiveFlutter.of(context).fontSize(4)),
                      ),
                      SizedBox(
                        height: scalingQuery.scale(15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer(
                              context: context,
                              width: scalingQuery.scale(155),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                    scalingQuery.moderateScale(15),
                                    horizontal:
                                    scalingQuery.moderateScale(15)),
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
                              width: scalingQuery.scale(155),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                    scalingQuery.moderateScale(15),
                                    horizontal:
                                    scalingQuery.moderateScale(15)),
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
                      SizedBox(
                        height: scalingQuery.scale(15),
                      ),
                      Padding(
                        padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                        child: commonButton(
                          context: context,
                          width: scalingQuery.wp(90),
                          title: Strings.withdraw.toUpperCase(),
                        ),
                      ),
                      SizedBox(
                        height: scalingQuery.scale(15),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(horizontal:scalingQuery.moderateScale(12)),
                        child: Text(
                          Strings.recentActivity,
                          style: myText.semiBoldText(
                              color: appColors.transactionText,
                              size: ResponsiveFlutter.of(context).fontSize(2.5)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                        child: ListView.builder(
                          padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                          shrinkWrap: true,
                          primary: false,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: dummyWalletList.length,
                          itemBuilder: (context, index) {
                            return customWalletCard(
                              context: context,
                              list: dummyWalletList,
                              index: index,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
