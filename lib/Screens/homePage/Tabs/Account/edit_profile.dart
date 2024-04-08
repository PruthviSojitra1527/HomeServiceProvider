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
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                customGradientContainer(
                  context: context,
                  title: Strings.editProfile,
                  leadingChild: customRoundBtn(
                    height: scalingQuery.scale(35),
                    context: context,
                    image: ImagePath.blueBack,
                  ),
                ),
                SizedBox(
                  height: scalingQuery.scale(50),
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
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: scalingQuery.scale(40),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(
                      scalingQuery.moderateScale(8),
                    ),
                    child: editProfile(context: context),
                  ),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
              child: commonButton(
                width: scalingQuery.wp(90),
                context: context,
                title: Strings.update,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

editProfile({required context}) {
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
  return Expanded(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          ResponsiveFlutter.of(context).scale(8)),
                      child: commonTextField(
                          context: context,
                          controller: firstNameController,
                          color: appColors.darkBlueTextColor),
                    ),
                    color: appColors.appMediumColor,
                    width: ResponsiveFlutter.of(context).wp(40),
                    height: ResponsiveFlutter.of(context).scale(45),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          ResponsiveFlutter.of(context).scale(8)),
                      child: commonTextField(
                          context: context,
                          controller: lastNameController,
                          color: appColors.darkBlueTextColor),
                    ),
                    color: appColors.appMediumColor,
                    width: ResponsiveFlutter.of(context).wp(40),
                    height: ResponsiveFlutter.of(context).scale(45),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  "${Strings.email} ${Strings.address}",
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: emailController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.phoneNumber,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: phoneController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.availability,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: availabilityDayController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: availabilityTimeController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.experience,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: experienceController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.serviceArea,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: serviceAreaController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(50),
          ),
        ],
      ),
    ),
  );
}
