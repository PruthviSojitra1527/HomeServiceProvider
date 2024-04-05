import 'package:home_service/Common/all_import.dart';

class BankDetailsScreen extends StatefulWidget {
  const BankDetailsScreen({super.key});

  @override
  State<BankDetailsScreen> createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appLightColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customGradientContainer(
              context: context,
              title: Strings.bankDetails,
              leadingChild: customRoundBtn(
                height: scalingQuery.scale(35),
                context: context,
                image: ImagePath.blueBack,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                scalingQuery.moderateScale(8),
              ),
              child: bankDetails(context: context),
            ),
          ],
        ),
      ),
    );
  }
}

bankDetails({
  required context,
}) {
  TextEditingController bankNameController =
      TextEditingController(text: Strings.dummy_16);
  TextEditingController acNameController =
      TextEditingController(text: Strings.dummy_17);
  TextEditingController acNumberController =
      TextEditingController(text: Strings.dummy_18);
  TextEditingController ifscCodeController =
      TextEditingController(text: Strings.dummy_19);
  TextEditingController upiController =
      TextEditingController(text: Strings.dummy_20);
  return Expanded(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.bankName,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: bankNameController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.acName,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: acNumberController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.acNumber,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: acNameController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.ifscCode,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: ifscCodeController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(5)),
                child: Text(
                  Strings.upi,
                  style: myText.regularText(),
                ),
              ),
              customContainer(
                context: context,
                child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(10)),
                  child: commonTextField(
                      context: context,
                      controller: upiController,
                      color: appColors.darkBlueTextColor),
                ),
                color: appColors.appMediumColor,
                width: ResponsiveFlutter.of(context).wp(85),
                height: ResponsiveFlutter.of(context).scale(45),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(100),
          ),
        ],
      ),
    ),
  );
}
