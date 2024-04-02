import 'package:flutter/cupertino.dart';
import 'package:home_service/Screens/homePage/Tabs/Home/payment_screen.dart';
import 'package:intl/intl.dart';

import '../../../../Common/all_import.dart';

class BookingOrderScreen extends StatefulWidget {
  const BookingOrderScreen({super.key, required this.index});

  final int index;

  @override
  State<BookingOrderScreen> createState() => _BookingOrderScreenState();
}

class _BookingOrderScreenState extends State<BookingOrderScreen> {
  AppColors appColors = AppColors();
  MyText myText = MyText();

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime = TimeOfDay.now();

  String _selectedItem =
      dummyItemList.isNotEmpty ? dummyItemList.first['name'] : '';
  List selectedItems = [];

  List<String> timeDuration = [
    'Once',
    'Daily',
    'Yearly',
  ];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    String formatDate(DateTime date) {
      final formatter = DateFormat('dd/MM/yyyy');
      return formatter.format(date);
    }

    String formatTime(TimeOfDay time) {
      return '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
    }

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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: scalingQuery.scale(210),
                    decoration: const BoxDecoration(
                      gradient: AppTheme.primaryGradient,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: scalingQuery.scale(17),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customRoundBtn(
                                context: context,
                                height: scalingQuery.scale(35),
                                color: appColors.white,
                                image: ImagePath.blueBack,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: scalingQuery.scale(17),
                                  ),
                                  customUserImage(
                                      context: context,
                                      image: dummyUserList[widget.index]
                                          ['imageUrl']),
                                  Text(
                                    dummyUserList[widget.index]['name'],
                                    style: myText.semiBoldText(
                                        size: scalingQuery.fontSize(3),
                                        color: appColors.darkBlueTextColor),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        ImagePath.rating,
                                        height: scalingQuery.scale(15),
                                      ),
                                      SizedBox(
                                        width: scalingQuery.scale(5),
                                      ),
                                      Text(
                                        "5.0",
                                        style: myText.regularText(
                                            color: appColors.darkBlueTextColor,
                                            size: scalingQuery.fontSize(2)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                scalingQuery.moderateScale(10)),
                                        child: Text(
                                          "|",
                                          style: myText.regularText(
                                              color:
                                                  appColors.darkBlueTextColor,
                                              size: scalingQuery.fontSize(2)),
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: "\$",
                                            style: myText.regularText(
                                                color: appColors.blueTextColor,
                                                size:
                                                    scalingQuery.fontSize(2.5)),
                                            children: [
                                              TextSpan(
                                                text: "15",
                                                style: myText.regularText(
                                                    color: appColors
                                                        .darkBlueTextColor,
                                                    size: scalingQuery
                                                        .fontSize(2.5)),
                                              ),
                                              TextSpan(
                                                text: "/h",
                                                style: myText.regularText(
                                                    size: scalingQuery
                                                        .fontSize(2.5)),
                                              ),
                                            ]),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              customRoundBtn(
                                context: context,
                                height: scalingQuery.scale(35),
                                color: appColors.btnColor,
                                image: ImagePath.whiteMassage,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: scalingQuery.scale(15)),
                      child: SizedBox(
                        height: scalingQuery.scale(530),
                        child: CustomScrollView(
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: scalingQuery.moderateScale(10)),
                                    child: Text(
                                      Strings.enterAddress,
                                      style: myText.regularText(
                                        size: scalingQuery.fontSize(2),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
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
                                                hintText: dummyUserList
                                                    .first['address'],
                                                color: appColors
                                                    .darkBlueTextColor),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: scalingQuery
                                                    .moderateScale(8)),
                                            child: Text(
                                              "|",
                                              style: myText.regularText(
                                                size: scalingQuery.fontSize(2),
                                              ),
                                            ),
                                          ),
                                          Image.asset(
                                            ImagePath.location,
                                            height: scalingQuery.scale(15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            scalingQuery.moderateScale(10)),
                                    child: Text(
                                      Strings.selectServices,
                                      style: myText.regularText(
                                        size: scalingQuery.fontSize(2),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: appColors.appMediumColor,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal:
                                            scalingQuery.moderateScale(10),
                                        vertical: scalingQuery.moderateScale(5),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            _selectedItem,
                                            style: myText.regularText(
                                              color:
                                                  appColors.darkBlueTextColor,
                                              size: scalingQuery.fontSize(2),
                                            ),
                                          ),
                                          PopupMenuButton(
                                            position: PopupMenuPosition.under,
                                            color: appColors.appLightColor,
                                            icon: ClipOval(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      appColors.greyTextColor,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      scalingQuery
                                                          .moderateScale(10)),
                                                  child: Image.asset(
                                                    ImagePath.dropdown,
                                                    height:
                                                        scalingQuery.scale(8),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            itemBuilder:
                                                (BuildContext context) {
                                              return dummyItemList.map((item) {
                                                return PopupMenuItem(
                                                  value: item['name'],
                                                  child: SizedBox(
                                                    width: scalingQuery.wp(100),
                                                    child: Text(
                                                      item['name'],
                                                      style: myText.regularText(
                                                        color: appColors
                                                            .darkBlueTextColor,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }).toList();
                                            },
                                            offset: const Offset(-50, 8),
                                            onSelected: (newValue) {
                                              setState(() {
                                                _selectedItem =
                                                    newValue as String;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            scalingQuery.moderateScale(10)),
                                    child: Text(
                                      Strings.whichClean,
                                      style: myText.regularText(
                                        size: scalingQuery.fontSize(2),
                                      ),
                                    ),
                                  ),
                                  Wrap(
                                    spacing: scalingQuery.moderateScale(8),
                                    runSpacing: scalingQuery.moderateScale(8),
                                    children: dummyCleanArea.map((item) {
                                      bool isSelected =
                                          selectedItems.contains(item);
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (isSelected) {
                                              selectedItems.remove(item);
                                            } else {
                                              selectedItems.add(item);
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: scalingQuery.scale(100),
                                          height: scalingQuery.scale(85),
                                          padding: EdgeInsets.all(
                                              scalingQuery.moderateScale(10)),
                                          decoration: BoxDecoration(
                                              color: isSelected
                                                  ? appColors.yellow
                                                  : appColors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      scalingQuery
                                                          .moderateScale(10)),
                                              border: Border.all(
                                                  color: isSelected
                                                      ? appColors.yellow
                                                      : appColors
                                                          .dividerColor)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(
                                                    scalingQuery.scale(5)),
                                                child: Image.asset(
                                                  isSelected
                                                      ? item['imageUrl']
                                                          ['enable']
                                                      : item['imageUrl']
                                                          ['disable'],
                                                  height:
                                                      scalingQuery.scale(30),
                                                ),
                                              ),
                                              Text(
                                                item['name'],
                                                style: myText.regularText(
                                                    color: isSelected
                                                        ? appColors.white
                                                        : appColors
                                                            .darkBlueTextColor,
                                                    size: scalingQuery
                                                        .fontSize(2)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            scalingQuery.moderateScale(20)),
                                    child: Text(
                                      Strings.howMuchTime,
                                      style: myText.semiBoldText(
                                        color: appColors.transactionText
                                            .withOpacity(0.7),
                                        size: scalingQuery.fontSize(3),
                                      ),
                                    ),
                                  ),
                                  Wrap(
                                    spacing: scalingQuery.moderateScale(8),
                                    runSpacing: scalingQuery.moderateScale(8),
                                    children: timeDuration.map((item) {
                                      bool isSelected = selectedItem == item;
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (selectedItem == item) {
                                              selectedItem =
                                                  null; // Deselect the item if already selected
                                            } else {
                                              selectedItem =
                                                  item; // Select the item
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
                                                : appColors.white,
                                            borderRadius: BorderRadius.circular(
                                                scalingQuery.moderateScale(10)),
                                            border: Border.all(
                                                color: isSelected
                                                    ? appColors
                                                        .darkBlueTextColor
                                                    : appColors.dividerColor),
                                          ),
                                          child: Text(
                                            item,
                                            style: myText.regularText(
                                              size: scalingQuery.fontSize(2),
                                              color: isSelected
                                                  ? appColors.white
                                                  : appColors.darkBlueTextColor,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            scalingQuery.moderateScale(10)),
                                    child: Text(
                                      Strings.startDate,
                                      style: myText.regularText(
                                        size: scalingQuery.fontSize(2),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: appColors.appMediumColor),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              scalingQuery.moderateScale(10),
                                          vertical:
                                              scalingQuery.moderateScale(15)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            formatDate(startDate),
                                            style: myText.regularText(
                                                size:
                                                    scalingQuery.fontSize(2.3),
                                                color: appColors
                                                    .darkBlueTextColor),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              _selectDate(context, true);
                                            },
                                            child: Image.asset(
                                              ImagePath.calender,
                                              height: scalingQuery.scale(20),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  selectedItem != timeDuration.first
                                      ? Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: scalingQuery
                                                  .moderateScale(10)),
                                          child: Text(
                                            Strings.endDate,
                                            style: myText.regularText(
                                              size: scalingQuery.fontSize(2),
                                            ),
                                          ),
                                        )
                                      : Container(),
                                  selectedItem != timeDuration.first
                                      ? Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: appColors.appMediumColor),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: scalingQuery
                                                    .moderateScale(10),
                                                vertical: scalingQuery
                                                    .moderateScale(15)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  formatDate(endDate),
                                                  style: myText.regularText(
                                                      size: scalingQuery
                                                          .fontSize(2.3),
                                                      color: appColors
                                                          .darkBlueTextColor),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _selectDate(context, false);
                                                  },
                                                  child: Image.asset(
                                                    ImagePath.calender,
                                                    height:
                                                        scalingQuery.scale(20),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      : Container(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(
                                                scalingQuery.moderateScale(10)),
                                            child: Text(
                                              Strings.startTime,
                                              style: myText.regularText(
                                                size: scalingQuery.fontSize(2),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: scalingQuery.scale(150),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color:
                                                    appColors.appMediumColor),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: scalingQuery
                                                      .moderateScale(10),
                                                  vertical: scalingQuery
                                                      .moderateScale(15)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    formatTime(startTime),
                                                    style: myText.regularText(
                                                        size: scalingQuery
                                                            .fontSize(2.3),
                                                        color: appColors
                                                            .darkBlueTextColor),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      _selectTime(
                                                          context, true);
                                                    },
                                                    child: Image.asset(
                                                      ImagePath.clock,
                                                      height: scalingQuery
                                                          .scale(20),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: scalingQuery
                                                    .moderateScale(10)),
                                            child: Text(
                                              Strings.endTime,
                                              style: myText.regularText(
                                                size: scalingQuery.fontSize(2),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: scalingQuery.scale(150),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color:
                                                    appColors.appMediumColor),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: scalingQuery
                                                      .moderateScale(10),
                                                  vertical: scalingQuery
                                                      .moderateScale(15)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    formatTime(endTime),
                                                    style: myText.regularText(
                                                        size: scalingQuery
                                                            .fontSize(2.3),
                                                        color: appColors
                                                            .darkBlueTextColor),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      _selectTime(
                                                          context, false);
                                                    },
                                                    child: Image.asset(
                                                      ImagePath.clock,
                                                      height: scalingQuery
                                                          .scale(20),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: scalingQuery.scale(50),
                                  )
                                ],
                              ),
                            ]))
                          ],
                        ),
                      )),
                  SizedBox(
                    height: scalingQuery.scale(20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: scalingQuery.moderateScale(10)),
                child: commonButton(
                  width: scalingQuery.wp(95),
                  context: context,
                  title: Strings.proceedToPay,
                  onTap: () {
                    customNavigation(
                        context: context, widget: const PaymentScreen());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: appColors.darkBlueTextColor,
              onPrimary: appColors.white,
              surface: appColors.appMediumColor,
              onSurface: appColors.darkBlueTextColor,
            ),
            dialogBackgroundColor: appColors.darkBlueTextColor,
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        if (isStartDate) {
          startDate = picked;
        } else {
          endDate = picked;
        }
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: appColors.darkBlueTextColor,
              onPrimary: appColors.white,
              surface: appColors.white,
              onSurface: appColors.darkBlueTextColor,
              secondary: appColors.darkBlueTextColor,
              onSecondary: appColors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        if (isStartTime) {
          startTime = picked;
        } else {
          endTime = picked;
        }
      });
    }
  }
}
