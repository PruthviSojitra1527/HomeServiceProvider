
import '../../../../Common/all_import.dart';
import '../../homePage/Tabs/Home/home_screen.dart';
import '../personal_details_screen.dart';

class ResetPassScreen extends StatefulWidget {
  const ResetPassScreen({super.key});

  @override
  State<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
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
                ImagePath.resetPass,
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
                          height: scalingQuery.verticalScale(110),
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
                                    hintText: Strings.newPassword,
                                    obscureText: true,
                                  ),
                                ),
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
                                    obscureText: true,
                                    hintText:
                                        "${Strings.confirm} ${Strings.password}",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: scalingQuery.scale(20),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          heightFactor: 4,
                          alignment: const FractionalOffset(0.5, 0.75),
                          child: commonButton(
                              context: context,
                              title: Strings.setPassword.toUpperCase(),
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  snackBarFunction(
                                    color: appColors.greenOpacity,
                                    content1: Strings.accountVerified,
                                    content2: Strings.tnqForSignUp,
                                    context: context,
                                  ),
                                );
                                Navigator.of(context).popUntil((route) => route.isFirst);
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                ); }),
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
