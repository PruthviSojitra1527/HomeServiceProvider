import '../../../../Common/all_import.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    var width = scalingQuery.scale(35);
    return SizedBox(
      width: width,
      child: Stack(
        alignment: Alignment.centerRight,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: scalingQuery.scale(20),
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.all(scalingQuery.moderateScale(3)),
              child: Container(
                height: scalingQuery.scale(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(scalingQuery.scale(20)),
                  color: appColors.dividerColor.withOpacity(0.3),
                ),
              ),
            ),
          ),
          // Active track
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left:
                value ? width - scalingQuery.scale(20) : scalingQuery.scale(0),
            child: InkWell(
              splashColor: appColors.transparent,
              onTap: () {
                onChanged(!value);
              },
              child: Container(
                width: scalingQuery.scale(22), // Size of thumb
                height: scalingQuery.scale(22),

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: appColors.appMediumColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(scalingQuery.moderateScale(2)),
                  child: Container(
                    alignment: Alignment.center,
                    width: scalingQuery.scale(20),
                    height: scalingQuery.scale(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: value ? AppTheme.mediumGradient : null,
                      color: !value
                          ? appColors.dividerColor.withOpacity(0.3)
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
