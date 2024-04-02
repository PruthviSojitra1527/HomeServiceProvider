import '../../../../Common/all_import.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  AppColors appColors = AppColors();
  MyText myText = MyText();
  Map<String, dynamic>? selectedItem;
  bool isChecked = false;

  List dummyCards = [
    ImagePath.dummyCard1,
    ImagePath.dummyCard2,
  ];
  List paymentMethods = [
    {
      'title': 'Debit/Credit',
      'name': 'Debit or Credit Card',
      'imageUrl': '',
    },
    {
      'title': 'Pay',
      'name': 'Google Pay',
      'imageUrl': ImagePath.googleLogo,
    },
    {
      'title': '',
      'name': 'PayPal',
      'imageUrl': ImagePath.paypalLogo,
    }
  ];

  @override
  void initState() {
    super.initState();
    selectedItem = paymentMethods.first;
  }

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appLightColor,
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Container(
                    height: scalingQuery.scale(100),
                    decoration: const BoxDecoration(
                      gradient: AppTheme.primaryGradient,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                              ),
                              SizedBox(
                                width: scalingQuery.scale(85),
                              ),
                              Text(
                                Strings.payment,
                                style: myText.semiBoldText(
                                  color: appColors.darkBlueTextColor,
                                  size: scalingQuery.fontSize(2.5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: scalingQuery.moderateScale(10)),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: scalingQuery.moderateScale(10)),
                            child: Text(
                              Strings.savedCards,
                              style: myText.semiBoldText(
                                  size: scalingQuery.fontSize(2.5),
                                  color: appColors.transactionText),
                            ),
                          ),
                          SizedBox(
                            height: scalingQuery.scale(150),
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: dummyCards.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: scalingQuery.moderateScale(10),
                                      horizontal:
                                          scalingQuery.moderateScale(5)),
                                  child: Image.asset(
                                    dummyCards[index],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: scalingQuery.moderateScale(10)),
                            child: Text(
                              Strings.paymentMethod,
                              style: myText.semiBoldText(
                                  size: scalingQuery.fontSize(2.5),
                                  color: appColors.transactionText),
                            ),
                          ),
                          Wrap(
                            spacing: scalingQuery.moderateScale(8),
                            runSpacing: scalingQuery.moderateScale(8),
                            children: paymentMethods.map((item) {
                              bool isSelected = selectedItem == item;
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (selectedItem == item) {
                                      selectedItem =
                                          null; // Deselect the item if already selected
                                    } else {
                                      selectedItem = item; // Select the item
                                    }
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: scalingQuery.scale(100),
                                  height: scalingQuery.scale(50),
                                  padding: EdgeInsets.all(
                                      scalingQuery.moderateScale(10)),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? appColors.darkBlueTextColor
                                        : AppTheme.primaryColor,
                                    borderRadius: BorderRadius.circular(
                                        scalingQuery.moderateScale(10)),
                                    border: Border.all(
                                        color: isSelected
                                            ? appColors.darkBlueTextColor
                                            : appColors.dividerColor),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      item['imageUrl'] != ''
                                          ? Image.asset(
                                              item['imageUrl'],
                                              height: scalingQuery.scale(15),
                                            )
                                          : Container(),
                                      Text(
                                        item['title'],
                                        style: myText.semiBoldText(
                                          size: scalingQuery.fontSize(1.5),
                                          color: isSelected
                                              ? appColors.white
                                              : appColors.darkBlueTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: scalingQuery.moderateScale(10)),
                            child: Text(
                              selectedItem != null ? selectedItem!['name'] : '',
                              style: myText.semiBoldText(
                                color: appColors.transactionText,
                                size: scalingQuery.fontSize(2.5),
                              ),
                            ),
                          ),
                          selectedItem == paymentMethods.first
                              ? Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: appColors.appMediumColor),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal:
                                              scalingQuery.moderateScale(12),
                                          vertical: scalingQuery.scale(15),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: scalingQuery.scale(250),
                                              child: commonTextField(
                                                  context: context,
                                                  hintText: Strings.dummy_2,
                                                  color: appColors
                                                      .darkBlueTextColor),
                                            ),
                                            Image.asset(
                                              ImagePath.visa,
                                              height: scalingQuery.scale(15),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: appColors.appMediumColor),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: scalingQuery
                                                  .moderateScale(12),
                                              vertical: scalingQuery.scale(15),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: scalingQuery.scale(90),
                                                  child: commonTextField(
                                                      context: context,
                                                      hintText: Strings.dummy_3,
                                                      color: appColors
                                                          .darkBlueTextColor),
                                                ),
                                                Text(
                                                  Strings.expDate,
                                                  style: myText.semiBoldText(
                                                      color: appColors
                                                          .transactionText),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: scalingQuery
                                                  .moderateScale(15)),
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color:
                                                    appColors.appMediumColor),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: scalingQuery
                                                    .moderateScale(12),
                                                vertical:
                                                    scalingQuery.scale(15),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width:
                                                        scalingQuery.scale(90),
                                                    child: commonTextField(
                                                        context: context,
                                                        hintText:
                                                            Strings.dummy_4,
                                                        color: appColors
                                                            .darkBlueTextColor),
                                                  ),
                                                  Text(
                                                    Strings.cvv,
                                                    style: myText.semiBoldText(
                                                        color: appColors
                                                            .transactionText),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: appColors.appMediumColor),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal:
                                              scalingQuery.moderateScale(12),
                                          vertical: scalingQuery.scale(15),
                                        ),
                                        child: SizedBox(
                                          width: scalingQuery.scale(250),
                                          child: commonTextField(
                                              context: context,
                                              hintText: Strings.dummy_5,
                                              color:
                                                  appColors.darkBlueTextColor),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(
                                              scalingQuery.moderateScale(15)),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                            child: Container(
                                              width: scalingQuery.scale(20),
                                              height: scalingQuery.scale(20),
                                              decoration: BoxDecoration(
                                                color: isChecked
                                                    ? appColors.yellow
                                                    : appColors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        scalingQuery.scale(30) /
                                                            2),
                                                border: Border.all(
                                                    color: isChecked
                                                        ? appColors.yellow
                                                        : appColors
                                                            .dividerColor),
                                              ),
                                              child: isChecked
                                                  ? Padding(
                                                      padding: EdgeInsets.all(
                                                          scalingQuery
                                                              .moderateScale(
                                                                  5)),
                                                      child: Image.asset(
                                                        ImagePath.checkMark,
                                                        height: scalingQuery
                                                            .scale(15),
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          Strings.saveAsCard,
                                          style: myText.regularText(
                                              size: scalingQuery.fontSize(2),
                                              color:
                                                  appColors.darkBlueTextColor),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              : selectedItem == paymentMethods[1]
                                  ? Container(
                                      alignment: Alignment.topLeft,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: appColors.appMediumColor),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal:
                                              scalingQuery.moderateScale(12),
                                          vertical: scalingQuery.scale(15),
                                        ),
                                        child: SizedBox(
                                          width: scalingQuery.scale(250),
                                          child: commonTextField(
                                              context: context,
                                              hintText: Strings.upiId,
                                              color:
                                                  appColors.darkBlueTextColor),
                                        ),
                                      ),
                                    )
                                  : Container(
                                      alignment: Alignment.topLeft,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: appColors.appMediumColor),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal:
                                              scalingQuery.moderateScale(12),
                                          vertical: scalingQuery.scale(15),
                                        ),
                                        child: SizedBox(
                                          width: scalingQuery.scale(250),
                                          child: commonTextField(
                                              context: context,
                                              hintText: Strings.email,
                                              color:
                                                  appColors.darkBlueTextColor),
                                        ),
                                      ),
                                    ),
                          selectedItem != paymentMethods.first
                              ? SizedBox(
                                  height: scalingQuery.scale(178),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scalingQuery.hp(15),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
                child: commonButton(
                  width: scalingQuery.wp(90),
                  context: context,
                  title: Strings.pay,
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('selectedItem', selectedItem));
  }
}
