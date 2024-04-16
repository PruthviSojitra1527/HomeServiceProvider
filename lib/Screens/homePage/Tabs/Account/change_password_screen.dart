import '../../../../Common/all_import.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmNewPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appLightColor,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                customGradientContainer(
                  context: context,
                  title: Strings.changePasswordScreen,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.all(scalingQuery.moderateScale(5)),
                              child: Text(
                                "${Strings.old} ${Strings.password}",
                                style: myText.regularText(),
                              ),
                            ),
                            customContainer(
                              context: context,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    scalingQuery.moderateScale(10)),
                                child: commonTextField(
                                  context: context,
                                  controller: currentPassController,
                                  color: appColors.darkBlueTextColor,
                                  obscureText: true,
                                ),
                              ),
                              color: appColors.appMediumColor,
                              width: scalingQuery.wp(85),
                              height: scalingQuery.scale(45),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: scalingQuery.scale(30),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.all(scalingQuery.moderateScale(5)),
                              child: Text(
                                Strings.newPassword,
                                style: myText.regularText(),
                              ),
                            ),
                            customContainer(
                              context: context,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    scalingQuery.moderateScale(10)),
                                child: commonTextField(
                                  context: context,
                                  controller: newPassController,
                                  obscureText: true,
                                  color: appColors.darkBlueTextColor,
                                ),
                              ),
                              color: appColors.appMediumColor,
                              width: scalingQuery.wp(85),
                              height: scalingQuery.scale(45),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: scalingQuery.scale(30),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.all(scalingQuery.moderateScale(5)),
                              child: Text(
                                Strings.newPassword,
                                style: myText.regularText(),
                              ),
                            ),
                            customContainer(
                              context: context,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    scalingQuery.moderateScale(10)),
                                child: commonTextField(
                                  context: context,
                                  controller: confirmNewPassController,
                                  obscureText: true,
                                  color: appColors.darkBlueTextColor,
                                ),
                              ),
                              color: appColors.appMediumColor,
                              width: scalingQuery.wp(85),
                              height: scalingQuery.scale(45),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: scalingQuery.scale(100),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
              child: commonButton(
                width: scalingQuery.wp(95),
                context: context,
                title: Strings.save.toUpperCase(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
