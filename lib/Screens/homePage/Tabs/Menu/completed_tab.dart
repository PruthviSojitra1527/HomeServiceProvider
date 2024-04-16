import '../../../../Common/all_import.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});
  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {

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
                    isCompletedScreen: true,
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
