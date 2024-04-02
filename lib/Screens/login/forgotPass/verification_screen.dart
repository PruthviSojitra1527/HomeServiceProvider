import 'package:home_service/Screens/login/forgotPass/reset_pass_screen.dart';

import '../../../../Common/all_import.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  AppColors appColors = AppColors();
  MyText myText = MyText();
  OtpFieldController otpController = OtpFieldController();
  int _timeRemaining = 30;

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
                ImagePath.verification,
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
                      Strings.enterTheVerificationCode,
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
                  OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: scalingQuery.verticalScale(40),
                    margin: EdgeInsets.all(scalingQuery.moderateScale(5)),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: scalingQuery.moderateScale(12)),
                    keyboardType: TextInputType.number,
                    style: myText.regularText(
                        size: scalingQuery.fontSize(2.5),
                        color: appColors.white),
                    textFieldAlignment: MainAxisAlignment.center,
                    fieldStyle: FieldStyle.box,
                    otpFieldStyle: OtpFieldStyle(
                      backgroundColor: appColors.lightBackgroundColor,
                      // Set background color
                      borderColor:
                          appColors.lightBackgroundColor, // Remove border
                    ),
                    outlineBorderRadius: 15,
                    onCompleted: (pin) {
                      if (kDebugMode) {
                        print("Completed: $pin");
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                      scalingQuery.moderateScale(5),
                    ),
                    child: Text(
                      _getFormattedTime(_timeRemaining).toString(),
                      style: myText.boldText(
                          size: scalingQuery.fontSize(1.5),
                          color: appColors.yellow),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                      scalingQuery.moderateScale(25),
                    ),
                    child: commonButton(
                        context: context,
                        title: Strings.verify.toUpperCase(),
                        onTap: () {
                          customNavigationReplacement(
                              context: context,
                              widget: const ResetPassScreen());
                        }),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.symmetric(
                      vertical: scalingQuery.moderateScale(25),
                    ),
                    height: scalingQuery.scale(120),
                    color: appColors.darkBackgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        Strings.resend.toUpperCase(),
                        style: myText.boldText(
                            size: scalingQuery.fontSize(2),
                            color: appColors.blueTextColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeRemaining > 0) {
        setState(() {
          _timeRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  String _getFormattedTime(int seconds) {
    final duration = Duration(seconds: seconds);
    final minutes = duration.inMinutes.remainder(60);
    final remainingSeconds = duration.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
}
