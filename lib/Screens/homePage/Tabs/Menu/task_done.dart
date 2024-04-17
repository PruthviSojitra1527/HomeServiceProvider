import 'package:home_service/Screens/homePage/Tabs/Menu/signature_screen.dart';

import '../../../../Common/all_import.dart';

class TaskDoneScreen extends StatefulWidget {
  const TaskDoneScreen({super.key, this.title = ""});

  final String title;

  @override
  State<TaskDoneScreen> createState() => _TaskDoneScreenState();
}

class _TaskDoneScreenState extends State<TaskDoneScreen> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customGradientContainer(
                    context: context,
                    title: widget.title,
                    leadingChild: customRoundBtn(
                      context: context,
                      height: ResponsiveFlutter.of(context).scale(35),
                      color: appColors.white,
                      image: ImagePath.blueBack,
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(15)),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        Strings.pictureBefore,
                                        style: myText.boldText(
                                            size: scalingQuery.fontSize(2.5)),
                                      ),
                                      Text(
                                        Strings.uploadImage,
                                        style: myText.regularText(
                                            size: scalingQuery.fontSize(1.8)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.all(scalingQuery.moderateScale(12)),
                                    child: Text(
                                      "0/5",
                                      style: myText.regularText(
                                          size: scalingQuery.fontSize(1.8)),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: scalingQuery.scale(15),
                              ),
                              customUploadContainer(context: context,padding: 0),
                              SizedBox(
                                height: scalingQuery.scale(15),
                              ),
                              SizedBox(
                                height: scalingQuery.scale(100),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      physics: const AlwaysScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            customContainer(
                                                context: context,
                                                child: Image.asset(
                                                  dummyImageList[index]['imageUrl'],
                                                  height: scalingQuery.scale(60),
                                                  width: scalingQuery.scale(60),
                                                )),
                                            Image.asset(
                                              ImagePath.cancelGrey,
                                              height: scalingQuery.scale(12),
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          scalingQuery.moderateScale(12)),
                                      child: Text(
                                        "0/5",
                                        style: myText.regularText(
                                            size: scalingQuery.fontSize(1.8)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: scalingQuery.scale(20),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        Strings.pictureAfter,
                                        style: myText.boldText(
                                            size: scalingQuery.fontSize(2.5)),
                                      ),
                                      Text(
                                        Strings.uploadImage,
                                        style: myText.regularText(
                                            size: scalingQuery.fontSize(1.8)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.all(scalingQuery.moderateScale(12)),
                                    child: Text(
                                      "0/5",
                                      style: myText.regularText(
                                          size: scalingQuery.fontSize(1.8)),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: scalingQuery.scale(15),
                              ),
                              customUploadContainer(context: context,padding: 0),
                              SizedBox(
                                height: scalingQuery.scale(15),
                              ),
                              SizedBox(
                                height: scalingQuery.scale(100),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      physics: const AlwaysScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            customContainer(
                                                context: context,
                                                child: Image.asset(
                                                  dummyImageList[index]['imageUrl'],
                                                  height: scalingQuery.scale(60),
                                                  width: scalingQuery.scale(60),
                                                )),
                                            Image.asset(
                                              ImagePath.cancelGrey,
                                              height: scalingQuery.scale(12),
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          scalingQuery.moderateScale(12)),
                                      child: Text(
                                        "0/5",
                                        style: myText.regularText(
                                            size: scalingQuery.fontSize(1.8)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ))
                ],
              ),
              Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                child: commonButton(
                  context: context,
                  width: scalingQuery.wp(90),
                  title: Strings.submit.toUpperCase(),
                  onTap: (){
                    customNavigation(context: context, widget: const SignatureScreen());
                  }
                ),
              ),
            ],
          ),
        ));
  }
}
