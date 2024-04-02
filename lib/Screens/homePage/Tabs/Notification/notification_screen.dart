import '../../../../Common/all_import.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  AppColors appColors = AppColors();
  MyText myText = MyText();

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return Scaffold(
      backgroundColor: appColors.appMediumColor,
      appBar: AppBar(
        backgroundColor: appColors.transparent,
        elevation: 0,
        title: Text(
          Strings.notification,
          style: myText.boldText(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
            child: InkWell(
              onTap: () {},
              child: Text(
                Strings.clear,
                style: myText.semiBoldText(),
              ),
            ),
          )
        ],
        centerTitle: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: AppTheme.primaryGradient,
          ),
        ),
      ),
      body: dummyNotification.isNotEmpty
          ? SizedBox(
              height: scalingQuery.hp(85),
              child: ListView.builder(
                itemCount: dummyNotification.length,
                itemBuilder: (context, index) {
                  List i = dummyNotification[index]['notifications'];

                  return Padding(
                    padding: EdgeInsets.all(
                        ResponsiveFlutter.of(context).moderateScale(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dummyNotification[index]['time'],
                          style: myText.boldText(
                              color: appColors.transactionText,
                              size: scalingQuery.fontSize(2.5)),
                        ),
                        Container(
                            color: appColors.appMediumColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: i
                                  .map((e) =>customContainer(context: context, child: Padding(
                                padding: EdgeInsets.all(
                                    ResponsiveFlutter.of(context)
                                        .moderateScale(8)),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(
                                              scalingQuery
                                                  .moderateScale(
                                                  5)),
                                          child: customRoundBtn(
                                            onTap: (){},
                                            context: context,
                                            image: e['icon'],
                                            height: scalingQuery
                                                .scale(20),
                                            color: appColors
                                                .appDarkColor
                                                .withOpacity(0.5),
                                            padding: 5,
                                          ),
                                        ),
                                        Text(
                                          e['msg'].toString(),
                                          style: myText.regularText(
                                              color: appColors
                                                  .darkBlueTextColor),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      e['time'].toString(),
                                      style: myText.regularText(
                                          size: scalingQuery
                                              .fontSize(1.5)),
                                    ),
                                  ],
                                ),
                              ),))
                                  .toList(),
                            )),
                      ],
                    ),
                  );
                },
              ),
            )
          : customNoData(
              context: context,
              image: ImagePath.noNotification,
              str1: Strings.noNotification,
              str2: Strings.somethingWrong,
            ),
    );
  }
}
