import '../../../../Common/all_import.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController firstNameController =
      TextEditingController(text: Strings.dummy_5.split(' ')[0].toString());
  TextEditingController lastNameController =
      TextEditingController(text: Strings.dummy_5.split(' ')[1].toString());
  TextEditingController emailController =
      TextEditingController(text: Strings.dummy_12);

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
              child: Column(
                children: [
                  SizedBox(
                    height: scalingQuery.scale(130),
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      customUserImage(
                          context: context,
                          image: ImagePath.dummyUser3,
                          height: scalingQuery.scale(120)),
                      customRoundBtn(
                        context: context,
                        image: ImagePath.gallery,
                        padding: 12,
                        height: scalingQuery.scale(40),
                        onTap: () {
                          bottomSheet();
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: scalingQuery.scale(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            Strings.firstName,
                            style: myText.regularText(),
                          ),
                          customContainer(
                            context: context,
                            child: commonTextField(
                                textAlign: TextAlign.center,
                                context: context,
                                controller: firstNameController,
                                color: appColors.darkBlueTextColor),
                            color: appColors.appMediumColor,
                            width: scalingQuery.wp(40),
                            height: scalingQuery.scale(45),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            Strings.lastName,
                            style: myText.regularText(),
                          ),
                          customContainer(
                            context: context,
                            child: commonTextField(
                                textAlign: TextAlign.center,
                                context: context,
                                controller: lastNameController,
                                color: appColors.darkBlueTextColor),
                            color: appColors.appMediumColor,
                            width: scalingQuery.wp(40),
                            height: scalingQuery.scale(45),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: scalingQuery.scale(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(scalingQuery.moderateScale(5)),
                        child: Text(
                          "${Strings.email} ${Strings.address}",
                          style: myText.regularText(),
                        ),
                      ),
                      customContainer(
                        context: context,
                        child: Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(10)),
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
                    height: scalingQuery.scale(100),
                  ),
                  commonButton(
                    context: context,
                    title: Strings.update,
                  )
                ],
              ),
            ),
            customAppBar(context: context, title: Strings.editProfile),
          ],
        ),
      ),
    );
  }

  bottomSheet() {
    //  showModalBottomSheet(context: context, builder: (context) {
    //    return customContainer(context: context,child: Row(
    //      children: [
    //        customContainer(context: context,)
    //      ],
    //    ));
    //  },);
  }
}
