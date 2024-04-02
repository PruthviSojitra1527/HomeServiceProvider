import '../../../../Common/all_import.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController nameController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

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
                  SizedBox(
                    height: scalingQuery.scale(30),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(scalingQuery.moderateScale(5)),
                        child: Text(
                          Strings.fullName,
                          style: myText.regularText(
                              size: scalingQuery.fontSize(1.8)),
                        ),
                      ),
                      customContainer(
                        context: context,
                        child: Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(10)),
                          child: commonTextField(
                            context: context,
                            controller: nameController,
                            color: appColors.darkBlueTextColor,
                            hintText: Strings.dummy_5,
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
                        padding: EdgeInsets.all(scalingQuery.moderateScale(5)),
                        child: Text(
                          Strings.subject,
                          style: myText.regularText(
                              size: scalingQuery.fontSize(1.8)),
                        ),
                      ),
                      customContainer(
                        context: context,
                        child: Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(10)),
                          child: commonTextField(
                            context: context,
                            controller: subjectController,
                            hintText: Strings.writeSubject,
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
                        padding: EdgeInsets.all(scalingQuery.moderateScale(5)),
                        child: Text(
                          Strings.description,
                          style: myText.regularText(
                              size: scalingQuery.fontSize(1.8)),
                        ),
                      ),
                      customContainer(
                        context: context,
                        height: scalingQuery.scale(200),
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(10)),
                          child: commonTextField(
                            context: context,
                            controller: descriptionController,
                            hintText: Strings.writeHere,
                            textAlign: TextAlign.start,
                            maxLines: 10,
                          ),
                        ),
                        color: appColors.appMediumColor,
                        width: scalingQuery.wp(85),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
                child: commonButton(
                  width: scalingQuery.wp(95),
                  context: context,
                  title: Strings.send.toUpperCase(),
                ),
              )
            ],
          )),
    );
  }
}
