import '../../../../Common/all_import.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  AppColors appColors = AppColors();
  MyText myText = MyText();

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.darkBackgroundColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: AppTheme.darkPrimaryColor,
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage(
                ImagePath.forgotPass,
              ),
              fit: BoxFit.contain,
            ),
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: scalingQuery.moderateScale(50),
                    horizontal: scalingQuery.moderateScale(20),
                  ),
                  child: customRoundBtn(
                    context: context,
                    shadow: true,
                      color: appColors.darkBlueTextColor)),
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: scalingQuery.verticalScale(300),
                    ),
                    SizedBox(
                      height: scalingQuery.verticalScale(50),
                      child: Image.asset(
                        ImagePath.appLogo,
                      ),
                    ),
                    Text(
                      Strings.pleaseFillYourEmail,
                      style: myText.regularText(
                          size: scalingQuery.fontSize(1.5),
                          color: appColors.white.withOpacity(0.7)),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                      scalingQuery.moderateScale(25),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: scalingQuery.scale(300),
                          height: scalingQuery.verticalScale(80),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                scalingQuery.moderateScale(15)),
                            color: appColors.lightBackgroundColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: scalingQuery.scale(10),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: scalingQuery.moderateScale(15),
                                  vertical: scalingQuery.moderateScale(10),
                                ),
                                child: SizedBox(
                                  width: scalingQuery.scale(210),
                                  child: commonTextField(
                                    color: appColors.white.withOpacity(0.5),
                                    context: context,
                                    hintText: Strings.enterEmailOrMobile,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: scalingQuery.scale(10),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          heightFactor: 4,
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: commonButton(
                              context: context,
                              title: Strings.submit.toUpperCase(),
                              onTap: () {
                                customNavigation(
                                    context: context,
                                    widget: const VerificationScreen());
                              }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: scalingQuery.scale(130),
                    color: appColors.darkBackgroundColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
