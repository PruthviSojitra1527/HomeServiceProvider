import 'package:home_service/Screens/homePage/homepage_screen.dart';
import 'package:home_service/Screens/login/signUp_screen.dart';

import '../../../../Common/all_import.dart';
import 'forgotPass/forgot_pass_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  ImagePath.login,
                ),
                fit: BoxFit.contain,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      Strings.loginToContinue,
                      style: myText.regularText(
                          size: scalingQuery.fontSize(1.5),
                          color: appColors.white.withOpacity(0.7)),
                    ),
                  ],
                ),
                Column(
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
                            height: scalingQuery.verticalScale(135),
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
                                  height: scalingQuery.scale(15),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          scalingQuery.moderateScale(15),
                                      vertical:
                                          scalingQuery.moderateScale(10)),
                                  child: SizedBox(
                                    width: scalingQuery.scale(200),
                                    child: commonTextField(
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
                                      vertical:
                                          scalingQuery.moderateScale(10)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: scalingQuery.scale(190),
                                        child: commonTextField(
                                          obscureText: true,
                                          color: appColors.white
                                              .withOpacity(0.5),
                                          context: context,
                                          hintText: Strings.password,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          customNavigation(
                                              context: context,
                                              widget:
                                                  const ForgotPasswordScreen());
                                        },
                                        child: Container(
                                          width: scalingQuery.scale(75),
                                          height:
                                              scalingQuery.verticalScale(30),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(
                                                    scalingQuery
                                                        .moderateScale(30)),
                                            color:
                                                appColors.darkBackgroundColor,
                                          ),
                                          child: Center(
                                            child: Text(
                                              Strings.forgotPassword,
                                              style: myText.boldText(
                                                size: scalingQuery
                                                    .fontSize(1.5),
                                                color: appColors.yellow,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Align(
                          heightFactor: 4,
                          alignment: const FractionalOffset(0.5, 0.95),
                          child: commonButton(
                              context: context,
                              title: Strings.login.toUpperCase(),
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
                                    widget: const HomePage());
                              }),
                        ),
                      ],
                    ),
                    Container(
                      color: AppTheme.darkPrimaryColor,
                      width: scalingQuery.scale(300),
                      child: Column(
                        children: [
                          SizedBox(
                            height: scalingQuery.scale(30),
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
                                        child:
                                            Image.asset(ImagePath.googleLogo),
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
                            height: scalingQuery.scale(30),
                          ),
                          Text(
                            Strings.doNotHaveAnAccount,
                            style: myText.regularText(
                              size: scalingQuery.fontSize(1.6),
                              color: appColors.white.withOpacity(0.5),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              customNavigation(
                                  context: context,
                                  widget: const SignUpScreen());
                            },
                            child: Text(
                              Strings.signUp.toUpperCase(),
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

              ],
            ),
          ),
        ));
  }
}
