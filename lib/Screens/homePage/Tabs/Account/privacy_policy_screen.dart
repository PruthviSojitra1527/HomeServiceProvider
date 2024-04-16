import '../../../../Common/all_import.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
                context: context, title: Strings.privacyPolicy,leadingChild:customRoundBtn(
              context: context,
              height: ResponsiveFlutter.of(context).scale(35),
              color: appColors.white,
              image: ImagePath.blueBack,
            ),),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:  EdgeInsets.all(scalingQuery.moderateScale(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        child: Text(Strings.dummyPP_1,
                            style: myText.semiBoldText(
                                size: scalingQuery.fontSize(2.2),
                               )),
                      ),
              
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: scalingQuery.moderateScale(10)),
                        child: Text(
                          Strings.dummyTC_2,
                          style: myText.regularText(
                            size: scalingQuery.fontSize(2),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: scalingQuery.moderateScale(10)),
                        child: Text(
                          Strings.dummyTC_2,
                          style: myText.regularText(
                            size: scalingQuery.fontSize(2.2),
                            color: appColors.darkBlueTextColor
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
