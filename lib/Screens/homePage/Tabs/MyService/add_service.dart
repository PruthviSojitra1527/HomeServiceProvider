import '../../../../Common/all_import.dart';

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Column(
          children: [
            customGradientContainer(
              context: context,
              leadingChild: customRoundBtn(
                context: context,
                height: scalingQuery.scale(35),
                color: appColors.white,
                image: ImagePath.blueBack,
              ),
              title: Strings.addServices,
            ),
          ],
        ),
      ),
    );
  }
}
