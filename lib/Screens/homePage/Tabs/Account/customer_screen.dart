import '../../../../Common/all_import.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
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
                  leadingChild: customRoundBtn(
                    context: context,
                    height: scalingQuery.scale(35),
                    color: appColors.white,
                    image: ImagePath.blueBack,
                  ),
                  title: Strings.editPrice,
                ),
                Padding(
                  padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                  child: commonButton(
                    context: context,
                    width: scalingQuery.wp(90),
                    title: Strings.save.toUpperCase(),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}