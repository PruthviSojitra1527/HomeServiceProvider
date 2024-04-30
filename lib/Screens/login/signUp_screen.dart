import 'package:home_service/Screens/login/personal_details_screen.dart';

import '../../../../Common/all_import.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  ImagePath.signUp,
                ),
                fit: BoxFit.contain,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: scalingQuery.verticalScale(300),
                    ),
                    SizedBox(
                      height: scalingQuery.verticalScale(50),
                      child: Image.asset(
                        ImagePath.appLogo,
                        // height: height * 0.05,
                      ),
                    ),
                    Text(
                      Strings.pleaseFillTheDetails,
                      style: myText.regularText(
                          size: scalingQuery.fontSize(1.5),
                          color: appColors.white.withOpacity(0.7)),
                    ),
                  ],
                ),
                Container(
                  color: AppTheme.darkPrimaryColor.withOpacity(0.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: scalingQuery.moderateScale(25),
                            ),
                            child: Container(
                              width: scalingQuery.scale(300),
                              height: scalingQuery.verticalScale(175),
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
                                    height: scalingQuery.scale(5),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                      scalingQuery.moderateScale(15),
                                      vertical: scalingQuery.moderateScale(10),
                                    ),
                                    child: SizedBox(
                                      width: scalingQuery.scale(180),
                                      child: commonTextField(
                                        color: appColors.white.withOpacity(0.5),
                                        context: context,
                                        hintText: Strings.userName,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                      scalingQuery.moderateScale(15),
                                      vertical: scalingQuery.moderateScale(10),
                                    ),
                                    child: SizedBox(
                                      width: scalingQuery.scale(200),
                                      child: commonTextField(
                                        obscureText: true,
                                        color: appColors.white.withOpacity(0.5),
                                        context: context,
                                        hintText: Strings.email,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                      scalingQuery.moderateScale(15),
                                      vertical: scalingQuery.moderateScale(10),
                                    ),
                                    child: SizedBox(
                                      width: scalingQuery.scale(190),
                                      child: commonTextField(
                                        obscureText: true,
                                        color: appColors.white.withOpacity(0.5),
                                        context: context,
                                        hintText: Strings.password,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                      scalingQuery.moderateScale(15),
                                      vertical: scalingQuery.moderateScale(10),
                                    ),
                                    child: SizedBox(
                                      width: scalingQuery.scale(190),
                                      child: commonTextField(
                                        obscureText: true,
                                        color: appColors.white.withOpacity(0.5),
                                        context: context,
                                        hintText:
                                        "${Strings.confirm} ${Strings.password}",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: scalingQuery.scale(10),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Align(
                            heightFactor: 5,
                            alignment: const FractionalOffset(0.5, 0.95),
                            child: commonButton(
                                context: context,
                                title: Strings.signUp.toUpperCase(),
                                onTap: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarFunction(
                                      color: appColors.greenOpacity,
                                      content1: Strings.accountVerified,
                                      content2: Strings.tnqForSignUp,
                                      context: context,
                                    ),
                                  );
                                  customNavigationReplacement(
                                      context: context,
                                      widget: const PersonalDetailsScreen());
                                }),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scalingQuery.scale(12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: scalingQuery.scale(120),
                            height: scalingQuery.verticalScale(40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  scalingQuery.moderateScale(30)),
                              color: appColors.lightBackgroundColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(
                                scalingQuery.moderateScale(10),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          scalingQuery.moderateScale(10),
                                    ),
                                    child: Image.asset(ImagePath.googleLogo),
                                  ),
                                  Text(
                                    Strings.google,
                                    style: myText.boldText(
                                      size: scalingQuery.fontSize(2),
                                      color: appColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: scalingQuery.scale(120),
                            height: scalingQuery.verticalScale(40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  scalingQuery.moderateScale(30)),
                              color: appColors.lightBackgroundColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(
                                scalingQuery.moderateScale(10),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          scalingQuery.moderateScale(10),
                                    ),
                                    child: Image.asset(ImagePath.fbLogo),
                                  ),
                                  Text(
                                    Strings.facebook,
                                    style: myText.boldText(
                                      size: scalingQuery.fontSize(2),
                                      color: appColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scalingQuery.scale(10),
                      ),
                      Container(
                        color: AppTheme.darkPrimaryColor,
                        width: scalingQuery.scale(300),
                        child: Column(
                          children: [
                            Text(
                              Strings.doNotHaveAnAccount,
                              style: myText.regularText(
                                size: scalingQuery.fontSize(1.5),
                                color: appColors.white.withOpacity(0.5),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                customNavigationReplacement(
                                    context: context,
                                    widget: const LoginScreen());
                              },
                              child: Text(
                                Strings.login.toUpperCase(),
                                style: myText.boldText(
                                    size: scalingQuery.fontSize(2),
                                    color: appColors.blueTextColor),
                              ),
                            ),
                            SizedBox(
                              height: scalingQuery.scale(10),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
