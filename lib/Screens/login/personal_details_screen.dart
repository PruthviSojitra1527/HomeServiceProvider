import 'package:easy_stepper/easy_stepper.dart';
import 'package:home_service/Common/all_import.dart';
import 'package:home_service/Screens/homePage/Tabs/Account/bank_details.dart';
import 'package:home_service/Screens/homePage/homepage_screen.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  int activeStep = 0;
  int maxReachedStep = 0;
  bool isChecked = true;
  TextEditingController firstNameController =
      TextEditingController(text: Strings.dummy_5.split(' ')[0].toString());

  TextEditingController lastNameController =
      TextEditingController(text: Strings.dummy_5.split(' ')[1].toString());

  TextEditingController emailController =
      TextEditingController(text: Strings.dummy_12);

  TextEditingController phoneController =
      TextEditingController(text: Strings.dummy_13);

  TextEditingController availabilityDayController =
      TextEditingController(text: Strings.dummy_14);

  TextEditingController availabilityTimeController =
      TextEditingController(text: Strings.dummy_15);

  TextEditingController experienceController =
      TextEditingController(text: Strings.dummy_21);

  TextEditingController serviceAreaController =
      TextEditingController(text: Strings.dummy_6);

  TextEditingController costController =
      TextEditingController(text: Strings.dummy_11);

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
                  leadingChild: customRoundBtn(
                    height: scalingQuery.scale(35),
                    context: context,
                    image: ImagePath.blueBack,
                  ),
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
                    ? Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Strings.firstName,
                                        style: myText.regularText(),
                                      ),
                                      customContainer(
                                        context: context,
                                        padding: 0,
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              scalingQuery.scale(8)),
                                          child: commonTextField(
                                              context: context,
                                              controller: firstNameController,
                                              color:
                                                  appColors.darkBlueTextColor),
                                        ),
                                        color: appColors.appMediumColor,
                                        width: scalingQuery.wp(40),
                                        height: scalingQuery.scale(45),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Strings.lastName,
                                        style: myText.regularText(),
                                      ),
                                      customContainer(
                                        context: context,
                                        padding: 0,
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              scalingQuery.scale(8)),
                                          child: commonTextField(
                                              context: context,
                                              controller: lastNameController,
                                              color:
                                                  appColors.darkBlueTextColor),
                                        ),
                                        color: appColors.appMediumColor,
                                        width: scalingQuery.wp(40),
                                        height: scalingQuery.scale(45),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: scalingQuery.scale(5),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(5)),
                                    child: Text(
                                      "${Strings.email} ${Strings.address}",
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
                                          controller: emailController,
                                          color: appColors.darkBlueTextColor),
                                    ),
                                    color: appColors.appMediumColor,
                                    width: scalingQuery.wp(85),
                                    height: scalingQuery.scale(45),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: scalingQuery.scale(5),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(5)),
                                    child: Text(
                                      Strings.phoneNumber,
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
                                          controller: phoneController,
                                          color: appColors.darkBlueTextColor),
                                    ),
                                    color: appColors.appMediumColor,
                                    width: scalingQuery.wp(85),
                                    height: scalingQuery.scale(45),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: scalingQuery.scale(5),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(5)),
                                    child: Text(
                                      Strings.availability,
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
                                          controller: availabilityDayController,
                                          color: appColors.darkBlueTextColor),
                                    ),
                                    color: appColors.appMediumColor,
                                    width: scalingQuery.wp(85),
                                    height: scalingQuery.scale(45),
                                  ),
                                  customContainer(
                                    context: context,
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          scalingQuery.moderateScale(10)),
                                      child: commonTextField(
                                          context: context,
                                          controller:
                                              availabilityTimeController,
                                          color: appColors.darkBlueTextColor),
                                    ),
                                    color: appColors.appMediumColor,
                                    width: scalingQuery.wp(85),
                                    height: scalingQuery.scale(45),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: scalingQuery.scale(5),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(5)),
                                    child: Text(
                                      Strings.experience,
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
                                          controller: experienceController,
                                          color: appColors.darkBlueTextColor),
                                    ),
                                    color: appColors.appMediumColor,
                                    width: scalingQuery.wp(85),
                                    height: scalingQuery.scale(45),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: scalingQuery.scale(5),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(5)),
                                    child: Text(
                                      Strings.serviceArea,
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
                                          controller: serviceAreaController,
                                          color: appColors.darkBlueTextColor),
                                    ),
                                    color: appColors.appMediumColor,
                                    width: scalingQuery.wp(85),
                                    height: scalingQuery.scale(45),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: scalingQuery.scale(50),
                              ),
                            ],
                          ),
                        ),
                      )
                    : activeStep == 1
                        ? bankDetails(context: context)
                        : activeStep == 2
                            ? Expanded(
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        scalingQuery.moderateScale(8)),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: dummyItemList.length,
                                      itemBuilder: (context, index) {
                                        return Card(
                                          elevation: 1,
                                          child: customContainer(
                                              context: context,
                                              padding: 1,
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    scalingQuery
                                                        .moderateScale(5)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              right: scalingQuery
                                                                  .moderateScale(
                                                                      15)),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                isChecked =
                                                                    !isChecked;
                                                              });
                                                            },
                                                            child: Container(
                                                              width:
                                                                  scalingQuery
                                                                      .scale(
                                                                          20),
                                                              height:
                                                                  scalingQuery
                                                                      .scale(
                                                                          20),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: isChecked
                                                                    ? appColors
                                                                        .darkBlueTextColor
                                                                    : appColors
                                                                        .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            scalingQuery.scale(30) /
                                                                                2),
                                                                border: Border.all(
                                                                    color: isChecked
                                                                        ? appColors
                                                                            .darkBlueTextColor
                                                                        : appColors
                                                                            .dividerColor),
                                                              ),
                                                              child: isChecked
                                                                  ? Padding(
                                                                      padding: EdgeInsets.all(
                                                                          scalingQuery
                                                                              .moderateScale(5)),
                                                                      child: Image
                                                                          .asset(
                                                                        ImagePath
                                                                            .checkMark,
                                                                        height:
                                                                            scalingQuery.scale(15),
                                                                      ),
                                                                    )
                                                                  : null,
                                                            ),
                                                          ),
                                                        ),
                                                        Image.asset(
                                                          dummyItemList[index]
                                                              ['imageUrl'],
                                                          height: scalingQuery
                                                              .scale(25),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .all(scalingQuery
                                                                  .moderateScale(
                                                                      15)),
                                                          child: Text(
                                                            dummyItemList[index]
                                                                ['name'],
                                                            style: myText.semiBoldText(
                                                                color: appColors
                                                                    .darkBlueTextColor,
                                                                size: scalingQuery
                                                                    .fontSize(
                                                                        2)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    isChecked
                                                        ? customContainer(
                                                            context: context,
                                                            padding: 0,
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .all(scalingQuery
                                                                      .moderateScale(
                                                                          10)),
                                                              child: commonTextField(
                                                                  context:
                                                                      context,
                                                                  controller:
                                                                      experienceController,
                                                                  color: appColors
                                                                      .darkBlueTextColor),
                                                            ),
                                                            color: appColors
                                                                .appMediumColor,
                                                            width: scalingQuery
                                                                .wp(95),
                                                            height: scalingQuery
                                                                .scale(45),
                                                          )
                                                        : Container(),
                                                  ],
                                                ),
                                              )),
                                        );
                                      },
                                    ),
                                  ),
                                ),
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
