import 'package:home_service/Screens/homePage/Tabs/Menu/task_done.dart';

import '../../../../Common/all_import.dart';
import '../Home/home_screen.dart';

class ActiveScreen extends StatefulWidget {
  const ActiveScreen({super.key});

  @override
  State<ActiveScreen> createState() => _ActiveScreenState();
}

class _ActiveScreenState extends State<ActiveScreen> {


  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appMediumColor,
        body: dummyBooking.isNotEmpty
            ? ListView.builder(
                itemCount: dummyBooking.length,
                itemBuilder: (context, index) {
                  return customBookingCard(
                    context: context,
                    list: dummyBooking,
                    index: index,
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(5)),
                          child: customRoundBtn(
                            context: context,
                            color: appColors.green,
                            image: ImagePath.checkMark,
                            padding: 10,onTap: (){
                            customNavigation(
                                context: context,
                                widget: TaskDoneScreen(
                                    title: dummyBooking[index]
                                    ['serviceName']));
                          },
                            height: scalingQuery.scale(35),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.all(scalingQuery.moderateScale(5)),
                          child: customRoundBtn(
                            context: context,
                            color: appColors.red,
                            image: ImagePath.cancelWhite,
                            padding: 11,onTap: (){
                            int selectedValue = 1;
                            showCustomBottomSheet(
                                context: context,
                                child: StatefulBuilder(
                                  builder: (context, setState) {
                                    return Padding(
                                      padding: EdgeInsets.all(
                                          scalingQuery.scale(12)),
                                      child: Stack(
                                        alignment:
                                        Alignment.bottomCenter,
                                        children: [
                                          Expanded(
                                            child:
                                            SingleChildScrollView(
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .end,
                                                    children: [
                                                      customRoundBtn(
                                                        context:
                                                        context,
                                                        height: ResponsiveFlutter.of(
                                                            context)
                                                            .scale(
                                                            35),
                                                        color: appColors
                                                            .btnColor,
                                                        image: ImagePath
                                                            .cancelWhite,
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    Strings
                                                        .cancelOrder,
                                                    style: myText
                                                        .boldText(
                                                      size: scalingQuery
                                                          .fontSize(
                                                          3),
                                                      color: appColors
                                                          .darkBlueTextColor,
                                                    ),
                                                  ),
                                                  Text(
                                                    Strings
                                                        .cancelReasonText,
                                                    style: myText
                                                        .boldText(
                                                      size: scalingQuery
                                                          .fontSize(
                                                          2),
                                                      color: appColors
                                                          .transactionText,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                    scalingQuery
                                                        .scale(
                                                        10),
                                                  ),
                                                  customBookingCard(
                                                    context:
                                                    context,
                                                    list:
                                                    dummyBooking,
                                                    index: index,
                                                    onTap: (){}
                                                  ),
                                                  SizedBox(
                                                    height:
                                                    scalingQuery
                                                        .scale(
                                                        10),
                                                  ),
                                                  customContainer(
                                                    context:
                                                    context,
                                                    alignment:
                                                    Alignment
                                                        .topLeft,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.symmetric(
                                                              horizontal: scalingQuery.moderateScale(
                                                                  8),
                                                              vertical:
                                                              scalingQuery.moderateScale(5)),
                                                          child:
                                                          Text(
                                                            Strings
                                                                .selectReason,
                                                            style: myText
                                                                .boldText(
                                                              size:
                                                              scalingQuery.fontSize(2.5),
                                                              color:
                                                              appColors.darkBlueTextColor,
                                                            ),
                                                          ),
                                                        ),
                                                        for (RadioOption option
                                                        in radioOptions)
                                                          Row(
                                                            children: [
                                                              Radio(
                                                                splashRadius:
                                                                scalingQuery.scale(10),
                                                                activeColor:
                                                                appColors.btnColor,
                                                                value:
                                                                option.value,
                                                                groupValue:
                                                                selectedValue,
                                                                onChanged: (value) =>
                                                                    setState(() => selectedValue = value as int),
                                                              ),
                                                              Text(
                                                                option.label,
                                                                style: selectedValue == option.value
                                                                    ? myText.semiBoldText(color: appColors.darkBlueTextColor, size: scalingQuery.fontSize(2))
                                                                    : myText.regularText(color: appColors.darkBlueTextColor, size: scalingQuery.fontSize(2)),
                                                              ),
                                                            ],
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                    scalingQuery
                                                        .scale(
                                                        60),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                scalingQuery
                                                    .moderateScale(
                                                    8)),
                                            child: commonButton(
                                              context: context,
                                              width: scalingQuery
                                                  .wp(90),
                                              title: Strings.submit
                                                  .toUpperCase(),
                                              onTap: (){
                                                Navigator.pop(context);
                                              }
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ));
                          },
                            height: scalingQuery.scale(35),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            : customNoData(
                context: context,
                image: ImagePath.noBooking,
                str1: Strings.noOrder,
                str2: Strings.somethingWrong,
              ),
      ),
    );
  }
}
