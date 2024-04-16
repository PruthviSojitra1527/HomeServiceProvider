import '../../../../Common/all_import.dart';
import 'add_service.dart';

class EditService extends StatefulWidget {
  const EditService({super.key});

  @override
  State<EditService> createState() => _EditServiceState();
}

class _EditServiceState extends State<EditService> {
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
              leadingChild: customRoundBtn(
                context: context,
                height: scalingQuery.scale(35),
                color: appColors.white,
                image: ImagePath.blueBack,
              ),
              title: Strings.editPrice,
            ),
            const AddServiceFunction(
              length: 1,
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
      ),
    );
  }
}
