import '../../../../Common/all_import.dart';

class ActiveScreen extends StatefulWidget {
  const ActiveScreen({super.key});

  @override
  State<ActiveScreen> createState() => _ActiveScreenState();
}

class _ActiveScreenState extends State<ActiveScreen> {
  AppColors appColors = AppColors();
  MyText myText = MyText();

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
                            padding: 10,onTap: (){},
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
                            padding: 11,onTap: (){},
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
