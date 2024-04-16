import '../../../../Common/all_import.dart';
import '../MyService/my_service_details_screen.dart';

class ReviewRatings extends StatefulWidget {
  const ReviewRatings({super.key});

  @override
  State<ReviewRatings> createState() => _ReviewRatingsState();
}

class _ReviewRatingsState extends State<ReviewRatings> {
  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appLightColor,
        body: Column(
          children: [
            customGradientContainer(
              context: context,
              title: Strings.reviewAndRating,
              leadingChild: customRoundBtn(
                height: scalingQuery.scale(35),
                context: context,
                image: ImagePath.blueBack,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                  child: ReviewRatingFunction(
                    text: false,
                    length: dummyReviewList.length,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
