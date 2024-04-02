import '../../../../Common/all_import.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
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
                    child: customContainer(
                        context: context,
                        child: Padding(
                          padding: EdgeInsets.all(
                              scalingQuery.moderateScale(10)),
                          child: Text(
                            Strings.cancel.toUpperCase(),
                            style: myText.semiBoldText(color: appColors.white),
                          ),
                        ),
                        color: appColors.red),
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
