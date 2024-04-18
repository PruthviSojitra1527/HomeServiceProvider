import '../../../../Common/all_import.dart';

class WorkingHoursScreen extends StatefulWidget {
  const WorkingHoursScreen({super.key});

  @override
  State<WorkingHoursScreen> createState() => _WorkingHoursScreenState();
}

class _WorkingHoursScreenState extends State<WorkingHoursScreen> {
  late List<List<bool>> isCheckedList;

  @override
  void initState() {
    super.initState();
    // Initialize isCheckedList with lists for each day
    isCheckedList = List.generate(days.length, (index) => List<bool>.generate(time.length, (index) => false));
  }
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
                    title: Strings.workingHours,
                    leadingChild: customRoundBtn(
                      context: context,
                      height: ResponsiveFlutter.of(context).scale(35),
                      color: appColors.white,
                      image: ImagePath.blueBack,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: days.length,
                      padding: EdgeInsets.zero,
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return customContainer(
                            context: context,
                            padding: 8,
                            color: appColors.appMediumColor,
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.all(scalingQuery.moderateScale(8)),
                                  child: Text(
                                    days[index],
                                    style: myText.semiBoldText(
                                        color: appColors.darkBlueTextColor,
                                        size: ResponsiveFlutter.of(context)
                                            .fontSize(2.2)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: scalingQuery.moderateScale(5)),
                                  child: customContainer(
                                    padding: 0,
                                    context: context,
                                    child: ListView.separated(
                                      itemBuilder: (context, subIndex) {
                                        return Padding(
                                          padding: EdgeInsets.all(
                                              scalingQuery.moderateScale(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: scalingQuery.wp(25),
                                                child: Text(
                                                  subTime[subIndex],
                                                  style: myText.semiBoldText(
                                                      color: appColors
                                                          .darkBlueTextColor,
                                                      size: ResponsiveFlutter.of(
                                                              context)
                                                          .fontSize(2)),
                                                ),
                                              ),
                                              SizedBox(
                                                width: scalingQuery.wp(30),
                                                child: Text(
                                                  time[subIndex],
                                                  style: myText.regularText(
                                                      color:
                                                          appColors.transactionText,
                                                      size: ResponsiveFlutter.of(
                                                              context)
                                                          .fontSize(2)),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isCheckedList[index][subIndex] = !isCheckedList[index][subIndex];
                                                  });
                                                },
                                                child: customCheckButton(
                                                  context: context,
                                                  isRadio: true,
                                                  activeColor: appColors.appLightColor,
                                                  borderColor: appColors.btnColor,
                                                  isChecked: isCheckedList[index][subIndex],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          color: appColors.appMediumColor,
                                          height: scalingQuery.scale(2),
                                        );
                                      },
                                      itemCount: time.length,
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                    ),
                                  ),
                                )
                              ],
                            ));
                      },
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                child: commonButton(
                  context: context,
                  width: scalingQuery.wp(90),
                  title: Strings.save.toUpperCase(),
                ),
              ),

            ],
          ),
        ));
  }
}
