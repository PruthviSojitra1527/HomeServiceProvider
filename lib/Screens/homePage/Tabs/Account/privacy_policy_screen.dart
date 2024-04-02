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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.all(scalingQuery.moderateScale(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: scalingQuery.scale(100),),

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
            customAppBar(
                context: context, title: Strings.termsConditionScreen),

          ],
        ),
      ),
    );
  }
}
