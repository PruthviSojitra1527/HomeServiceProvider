import '../Common/all_import.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, this.hintText = ""});

  final String hintText;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
              SizedBox(
                height: scalingQuery.scale(170),
                child: Padding(
                  padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: scalingQuery.scale(17),
                      ),
                      Row(
                        children: [
                          customRoundBtn(
                              context: context,
                              height: scalingQuery.scale(35),
                              color: appColors.white,
                              image: ImagePath.blueBack,
                              shadow: true),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: scalingQuery.moderateScale(12)),
                            child: Text(
                              Strings.search,
                              style: myText.semiBoldText(
                                  size: scalingQuery.fontSize(3),
                                  color: appColors.darkBlueTextColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scalingQuery.scale(20),
                      ),
                      customContainer(
                          color: appColors.appMediumColor,
                          context: context,
                          child: Padding(
                            padding:
                                EdgeInsets.all(scalingQuery.moderateScale(12)),
                            child: commonTextField(
                                context: context,
                                icon: true,
                                image: ImagePath.search,
                                hintText: widget.hintText,
                                color: appColors.darkBlueTextColor),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
