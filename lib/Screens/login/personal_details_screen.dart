import 'package:easy_stepper/easy_stepper.dart';
import 'package:home_service/Common/all_import.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/bank_details.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/edit_profile.dart';
import 'package:home_service/Screens/homePage/homepage_screen.dart';

import '../homePage/Tabs/MyService/add_service.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  int activeStep = 0;
  int maxReachedStep = 0;

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
                  title: Strings.personalDetails,
                ),
                customContainer(
                    context: context,
                    color: appColors.appLightColor,
                    child: EasyStepper(
                      alignment: Alignment.center,
                      activeStep: activeStep,
                      padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                      showTitle: false,
                      stepRadius: scalingQuery.scale(15),
                      finishedStepBackgroundColor: appColors.btnColor,
                      maxReachedStep: maxReachedStep,
                      lineStyle: LineStyle(
                        lineLength: scalingQuery.scale(100),
                        unreachedLineColor:
                            appColors.transactionText.withOpacity(0.3),
                        defaultLineColor:
                            appColors.transactionText.withOpacity(0.3),
                        finishedLineColor: appColors.btnColor,
                        lineType: LineType.normal,
                        lineSpace: scalingQuery.scale(0),
                        lineThickness: scalingQuery.scale(3),
                      ),
                      internalPadding: 0,
                      showLoadingAnimation: false,
                      showStepBorder: false,
                      enableStepTapping: false,
                      steps: [
                        EasyStep(
                          customStep: CircleAvatar(
                            radius: scalingQuery.scale(15),
                            backgroundColor: activeStep >= 0
                                ? appColors.btnColor
                                : appColors.transactionText.withOpacity(0.3),
                            child: Text(
                              "01",
                              style: myText.regularText(
                                  color: activeStep >= 0
                                      ? appColors.white
                                      : appColors.darkBlueTextColor),
                            ),
                          ),
                          title: '',
                        ),
                        EasyStep(
                          customStep: CircleAvatar(
                            radius: scalingQuery.scale(15),
                            backgroundColor: activeStep >= 1
                                ? appColors.btnColor
                                : appColors.transactionText.withOpacity(0.3),
                            child: Text(
                              "02",
                              style: myText.regularText(
                                  color: activeStep >= 1
                                      ? appColors.white
                                      : appColors.darkBlueTextColor),
                            ),
                          ),
                          title: '',
                          topTitle: true,
                        ),
                        EasyStep(
                          customStep: CircleAvatar(
                            radius: scalingQuery.scale(15),
                            backgroundColor: activeStep >= 2
                                ? appColors.btnColor
                                : appColors.transactionText.withOpacity(0.3),
                            child: Text(
                              "03",
                              style: myText.regularText(
                                  color: activeStep >= 2
                                      ? appColors.white
                                      : appColors.darkBlueTextColor),
                            ),
                          ),
                          title: '',
                        ),
                      ],
                      onStepReached: (index) =>
                          setState(() => activeStep = index),
                    )),
                SizedBox(
                  height: scalingQuery.scale(15),
                ),
                activeStep == 0
                    ? editProfile(context: context)
                    : activeStep == 1
                        ? bankDetails(context: context)
                        : activeStep == 2
                            ? AddServiceFunction(
                                length: dummyItemList.length,
                              )
                            : Container(),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
              child: commonButton(
                  context: context,
                  width: scalingQuery.wp(90),
                  title: Strings.submit.toUpperCase(),
                  onTap: () {
                    setState(() {
                      if (activeStep < 2 && maxReachedStep < 2) {
                        activeStep == activeStep++;
                        maxReachedStep == maxReachedStep++;
                      } else {
                        customNavigation(
                            context: context, widget: const HomePage());
                      }
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
