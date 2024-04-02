import '../../../../Common/all_import.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  List<bool> showDetailsList = List.filled(dummyFAQs.length, false);

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appMediumColor,
        body: Padding(
          padding: EdgeInsets.all(
            scalingQuery.moderateScale(10),
          ),
          child: ListView.builder(
            itemCount: dummyFAQs.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                child: Stack(
                  children: [
                    if (showDetailsList[index])
                      Container(
                        alignment: Alignment.bottomCenter,
                        width: scalingQuery.wp(95),
                        decoration: BoxDecoration(
                          color: appColors.dividerColor.withOpacity(0.2),
                          border: Border.all(
                            width: scalingQuery.scale(1),
                            color: appColors.dividerColor.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(
                            scalingQuery.moderateScale(15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                            scalingQuery.moderateScale(17),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: scalingQuery.scale(60),
                              ),
                              Text(
                                dummyFAQs[index]['str2'],
                                style: myText.regularText(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    customContainer(
                      padding: 0,
                      context: context,
                      child: Padding(
                        padding: EdgeInsets.all(
                          scalingQuery.moderateScale(17),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              dummyFAQs[index]['str1'],
                              style: myText.regularText(),
                            ),
                            customRoundBtn(
                              context: context,
                              height: scalingQuery.scale(30),
                              image: ImagePath.dropdown,
                              color: appColors.appMediumColor,
                              onTap: () {
                                setState(() {
                                  showDetailsList[index] =
                                      !showDetailsList[index];
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
