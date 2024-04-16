import '../../../../Common/all_import.dart';

class TermsConditionScreen extends StatefulWidget {
  const TermsConditionScreen({super.key});

  @override
  State<TermsConditionScreen> createState() => _TermsConditionScreenState();
}

class _TermsConditionScreenState extends State<TermsConditionScreen> {
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
            customGradientContainer(
              context: context,
              title: Strings.termsConditionScreen,
              leadingChild: customRoundBtn(
                context: context,
                height: ResponsiveFlutter.of(context).scale(35),
                color: appColors.white,
                image: ImagePath.blueBack,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: scalingQuery.moderateScale(10)),
                        child: Text(Strings.dummyTC_1,
                            style: myText.semiBoldText(
                                size: scalingQuery.fontSize(2.5),
                                color: appColors.darkBlueTextColor)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: scalingQuery.moderateScale(10)),
                        child: Text(
                          Strings.dummyTC_2,
                          style: myText.regularText(
                            size: scalingQuery.fontSize(2.3),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: scalingQuery.moderateScale(10)),
                        child: Text(Strings.dummyTC_3,
                            style: myText.semiBoldText(
                                size: scalingQuery.fontSize(2.5),
                                color: appColors.darkBlueTextColor)),
                      ),
                      customContainer(
                        context: context,
                        padding: 0,
                        gradient: AppTheme.primaryGradient,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 5,
                          padding: EdgeInsets.all(scalingQuery.scale(0)),
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Image.asset(
                                  ImagePath.gradientDesign,
                                  height: scalingQuery.scale(30),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: scalingQuery.moderateScale(10)),
                                  child: Text(
                                    Strings.dummyTC_4,
                                    style: myText.regularText(
                                      size: scalingQuery.fontSize(2),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: scalingQuery.moderateScale(10)),
                        child: Text(
                          Strings.dummyTC_2,
                          style: myText.regularText(
                            size: scalingQuery.fontSize(2.3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
