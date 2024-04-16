import '../../../../Common/all_import.dart';

class CanceledScreen extends StatefulWidget {
  const CanceledScreen({super.key});

  @override
  State<CanceledScreen> createState() => _CanceledScreenState();
}

class _CanceledScreenState extends State<CanceledScreen> {
  AppColors appColors = AppColors();
  MyText myText = MyText();

  @override
  Widget build(BuildContext context) {
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
                    isCanceledScreen: true,
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
