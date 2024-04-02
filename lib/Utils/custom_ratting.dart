import '../../../../Common/all_import.dart';

class CustomRating extends StatefulWidget {
  const CustomRating(
      {super.key, required this.maxRating, required this.onRatingChanged});

  final int maxRating;
  final Function(int) onRatingChanged;

  @override
  State<CustomRating> createState() => _CustomRatingState();
}

class _CustomRatingState extends State<CustomRating> {


  int _currentRating = 4;

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    List<Widget> stars = List.generate(widget.maxRating, (index) {
      return Padding(
        padding: EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(5)),
        child: Material(
          borderRadius: BorderRadius.circular(
              ResponsiveFlutter.of(context).moderateScale(15)),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _currentRating = index + 1;
                widget.onRatingChanged(_currentRating);
              });
            },
            child: index < _currentRating
                ? Container(
                    padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            ResponsiveFlutter.of(context).moderateScale(10)),
                        color: appColors.yellow.withOpacity(0.2)),
              child: Image.asset(ImagePath.rating,height: scalingQuery.scale(20),),
                  )
                : Container(
                    padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
                    decoration: BoxDecoration(
                      border: Border.all(color: appColors.dividerColor.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(
                            ResponsiveFlutter.of(context).moderateScale(10)),
                        color: appColors.appMediumColor),
              child: Image.asset(ImagePath.ratingGrey,height: scalingQuery.scale(20),),
                  ),
          ),
        ),
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: stars,
    );
  }
}
