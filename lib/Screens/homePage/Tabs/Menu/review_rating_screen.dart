import '../../../../Common/all_import.dart';
import '../../../../Utils/custom_ratting.dart';

class ReviewAndRatingScreen extends StatefulWidget {
  const ReviewAndRatingScreen({
    super.key,
    required this.list,
    required this.index,
  });

  final List list;
  final int index;

  @override
  State<ReviewAndRatingScreen> createState() => _ReviewAndRatingScreenState();
}

class _ReviewAndRatingScreenState extends State<ReviewAndRatingScreen> {
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
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                customAppBar(context: context, title: Strings.reviewAndRating),
                SizedBox(
                  height: scalingQuery.scale(30),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    scalingQuery.moderateScale(10),
                  ),
                  child: customUserCard(
                    context: context,
                    list: widget.list,
                    index: widget.index,
                  ),
                ),
                customContainer(
                  context: context,
                  child: Padding(
                    padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: scalingQuery.moderateScale(20),
                              vertical: scalingQuery.moderateScale(5)),
                          child: Text(
                            Strings.askReview,
                            style: myText.semiBoldText(
                                color: appColors.darkBlueTextColor,
                                size: scalingQuery.fontSize(2)),
                          ),
                        ),
                        CustomRating(
                          maxRating: 5,
                          onRatingChanged: (rating) {
                            if (kDebugMode) {
                              print('Selected rating: $rating');
                            }
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: scalingQuery.moderateScale(20)),
                              child: Text(
                                Strings.notSatisfied,
                                style: myText.regularText(
                                    color: appColors.transactionText),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: scalingQuery.moderateScale(20)),
                              child: Text(
                                Strings.verySatisfied,
                                style: myText.regularText(
                                    color: appColors.transactionText),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  padding: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(
                    scalingQuery.moderateScale(10),
                  ),
                  child: commonTextField(
                      context: context,
                      hintText: Strings.reviewHint,
                      maxLines: 12),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
              child: commonButton(
                  context: context,
                  width: scalingQuery.wp(95),
                  title: Strings.submit,
                  onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
