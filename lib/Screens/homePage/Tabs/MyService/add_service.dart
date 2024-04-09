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
                  title: Strings.addServices,
                ),
                const AddServiceFunction(length: 3,),
                Padding(
                  padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                  child: commonButton(
                    context: context,
                    width: scalingQuery.wp(90),
                    title: Strings.update.toUpperCase(),
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

class AddServiceFunction extends StatefulWidget {
  const AddServiceFunction({super.key, required this.length});
final int length;
  @override
  State<AddServiceFunction> createState() => _AddServiceFunctionState();
}

class _AddServiceFunctionState extends State<AddServiceFunction> {
  List<bool> isCheckedList = List.filled(dummyItemList.length, false);
  List<TextEditingController> costControllers = List.generate(
      dummyItemList.length,
      (index) => TextEditingController(text: Strings.dummy_11));

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(8)),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 1,
                child: customContainer(
                  context: context,
                  padding: 1,
                  child: Padding(
                    padding: EdgeInsets.all(
                        ResponsiveFlutter.of(context).moderateScale(5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right: ResponsiveFlutter.of(context)
                                      .moderateScale(15)),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isCheckedList[index] =
                                        !isCheckedList[index];
                                  });
                                },
                                child: Container(
                                  width:
                                      ResponsiveFlutter.of(context).scale(20),
                                  height:
                                      ResponsiveFlutter.of(context).scale(20),
                                  decoration: BoxDecoration(
                                    color: isCheckedList[index]
                                        ? appColors.darkBlueTextColor
                                        : appColors.white,
                                    borderRadius: BorderRadius.circular(
                                        ResponsiveFlutter.of(context)
                                                .scale(30) /
                                            2),
                                    border: Border.all(
                                      color: isCheckedList[index]
                                          ? appColors.darkBlueTextColor
                                          : appColors.dividerColor,
                                    ),
                                  ),
                                  child: isCheckedList[index]
                                      ? Padding(
                                          padding: EdgeInsets.all(
                                              ResponsiveFlutter.of(context)
                                                  .moderateScale(5)),
                                          child: Image.asset(
                                            ImagePath.checkMark,
                                            height:
                                                ResponsiveFlutter.of(context)
                                                    .scale(15),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            Image.asset(
                              dummyItemList[index]['imageUrl'],
                              height: ResponsiveFlutter.of(context).scale(25),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                  ResponsiveFlutter.of(context)
                                      .moderateScale(15)),
                              child: Text(
                                dummyItemList[index]['name'],
                                style: myText.semiBoldText(
                                  color: appColors.darkBlueTextColor,
                                  size:
                                      ResponsiveFlutter.of(context).fontSize(2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        isCheckedList[index]
                            ? customContainer(
                                context: context,
                                padding: 0,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      ResponsiveFlutter.of(context)
                                          .moderateScale(10)),
                                  child: commonTextField(
                                    context: context,
                                    controller: costControllers[index],
                                    color: appColors.darkBlueTextColor,
                                  ),
                                ),
                                color: appColors.appMediumColor,
                                width: ResponsiveFlutter.of(context).wp(95),
                                height: ResponsiveFlutter.of(context).scale(45),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
