import 'package:dotted_border/dotted_border.dart';
import 'package:home_service/Screens/homePage/Tabs/Menu/booking_details.dart';
import 'package:home_service/Screens/homePage/Tabs/MyService/edit_service.dart';
import '../../../../Common/all_import.dart';
import '../Screens/homePage/Tabs/Account/customer_details_screen.dart';

AppColors appColors = AppColors();
MyText myText = MyText();

Widget commonButton(
    {required BuildContext? context,
    String? title,
    Color? btnColor,
    Color? textColor,
    onTap,
    height,
    width,
    style}) {
  return InkWell(
    onTap: onTap ?? () {},
    child: SizedBox(
        width: width ?? ResponsiveFlutter.of(context).scale(250),
        height: height ?? ResponsiveFlutter.of(context).verticalScale(40),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: btnColor ?? appColors.btnColor,
          ),
          child: Center(
            child: Text(
              title ?? "",
              style: style ??
                  myText.boldText(
                    color: textColor ?? appColors.white,
                    size: ResponsiveFlutter.of(context).fontSize(2),
                  ),
            ),
          ),
        )),
  );
}

Widget commonTextField({
  required BuildContext context,
  color,
  bool? icon = false,
  String? image = "",
  String? hintText,
  bool? obscureText = false,
  TextInputType? keyboardType,
  TextEditingController? controller,
  textAlign = TextAlign.start,
  maxLines = 1,
  dismiss = false,
}) {
  return Row(
    children: [
      Visibility(
        visible: icon!,
        child: Container(
          height: ResponsiveFlutter.of(context).verticalScale(12),
          width: ResponsiveFlutter.of(context).verticalScale(12),
          margin:
              EdgeInsets.only(right: ResponsiveFlutter.of(context).scale(10)),
          alignment: Alignment.center,
          child: Image.asset(
            image!,
            color: color ?? appColors.iconColor,
          ),
        ),
      ),
      Expanded(
        child: TextField(
          obscureText: obscureText!,
          style: myText.regularText(
            size: ResponsiveFlutter.of(context).fontSize(2),
            color: color ?? appColors.transactionText,
          ),
          textAlign: textAlign,
          cursorColor: color ?? appColors.transactionText,
          onTapOutside: (v) {
            dismiss ? FocusScope.of(context).unfocus() : null;
          },
          keyboardType: keyboardType,
          controller: controller,
          scrollPadding: EdgeInsets.zero,
          expands: false,
          maxLines: maxLines,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: myText.regularText(
              size: ResponsiveFlutter.of(context).fontSize(2),
              color: color ?? appColors.transactionText,
            ),
            isDense: true,

            contentPadding:
                EdgeInsets.zero, //  to remove underline to input text
          ),
        ),
      ),
    ],
  );
}

Widget customRoundBtn({
  required context,
  height,
  image,
  color = AppTheme.white,
  onTap,
  shadow = false,
  double? padding,
  child,
}) {
  return InkWell(
    onTap: onTap ??
        () {
          Navigator.pop(context);
        },
    child: Container(
      alignment: Alignment.center,
      padding:
          EdgeInsets.all(ResponsiveFlutter.of(context).scale(padding ?? 10)),
      decoration: BoxDecoration(
        boxShadow: [
          shadow
              ? BoxShadow(
                  color: appColors.transactionText.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 0.5),
                )
              : BoxShadow(
                  color: color ?? appColors.lightBackgroundColor,
                ),
        ],
        shape: BoxShape.circle,
        color: color ?? appColors.lightBackgroundColor,
      ),
      height: height ?? ResponsiveFlutter.of(context).scale(45),
      width: height ?? ResponsiveFlutter.of(context).scale(45),
      child: child ??
          Image.asset(
            image ?? ImagePath.backBtn,
          ),
    ),
  );
}

Widget customUserImage({required context, required image, height}) {
  return Container(
    decoration: BoxDecoration(
        color: appColors.appLightColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: appColors.transactionText.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 0.5),
          )
        ]),
    child: Padding(
      padding: EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(3)),
      child: ClipOval(
        child: Container(
          height: height ?? ResponsiveFlutter.of(context).scale(75),
          width: height ?? ResponsiveFlutter.of(context).scale(75),
          decoration: BoxDecoration(
            color: appColors.white,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}

Widget customBookingCard(
    {required context,
    required list,
    required index,
    isCompletedScreen = false,
    isCanceledScreen = false,
    child,
    isCustomerDetailScreen = false,
    onTap}) {
  return InkWell(
      onTap: onTap ??
          () {
            customNavigation(
              context: context,
              widget: BookingDetails(
                list: list,
                index: index,
                isCompletedScreen: isCompletedScreen,
                isCanceledScreen: isCanceledScreen,
              ),
            );
          },
      child: customContainer(
        context: context,
        child: Padding(
          padding:
              EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(10)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                            ResponsiveFlutter.of(context).moderateScale(15)),
                        child: Image.asset(
                          list[index]['imageUrl'],
                          height: ResponsiveFlutter.of(context).scale(35),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index]['serviceName'],
                            style: myText.semiBoldText(
                                color: appColors.darkBlueTextColor,
                                size: ResponsiveFlutter.of(context)
                                    .fontSize(2.2)),
                          ),
                          Row(
                            children: [
                              customUserImage(
                                  context: context,
                                  image: list[index]['customerImage'],
                                  height:
                                      ResponsiveFlutter.of(context).scale(10)),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: ResponsiveFlutter.of(context)
                                        .moderateScale(5)),
                                child: Text(
                                  list[index]['customerName'],
                                  style: myText.regularText(),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  child ?? Container(),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ResponsiveFlutter.of(context).moderateScale(10)),
                child: Divider(
                  height: ResponsiveFlutter.of(context).scale(5),
                  color: appColors.dividerColor.withOpacity(0.2),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                ResponsiveFlutter.of(context).moderateScale(5)),
                        child: Image.asset(
                          ImagePath.calender,
                          height: ResponsiveFlutter.of(context).scale(15),
                        ),
                      ),
                      Text(
                        list[index]['time'],
                        style: myText.semiBoldText(
                            color: appColors.transactionText,
                            size: ResponsiveFlutter.of(context).fontSize(1.5)),
                      ),
                    ],
                  ),
                  isCustomerDetailScreen
                      ? Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ResponsiveFlutter.of(context)
                                      .moderateScale(5)),
                              child: Image.asset(
                                ImagePath.location,
                                height: ResponsiveFlutter.of(context).scale(15),
                              ),
                            ),
                            Text(
                              Strings.dummy_23,
                              style: myText.semiBoldText(
                                  color: appColors.transactionText,
                                  size: ResponsiveFlutter.of(context)
                                      .fontSize(1.5)),
                            ),
                          ],
                        )
                      : Text(
                          list[index]['rate'],
                          style: myText.semiBoldText(
                              color: appColors.darkBlueTextColor,
                              size: ResponsiveFlutter.of(context).fontSize(2)),
                        ),
                ],
              )
            ],
          ),
        ),
      ));
}

Widget customUserCard({
  required context,
  required list,
  required index,
  isBookingDetailsScreen = false,
}) {
  return customContainer(
    context: context,
    child: Padding(
      padding: EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    ResponsiveFlutter.of(context).moderateScale(10)),
                child: customUserImage(
                    context: context,
                    image: ImagePath.dummyUser,
                    height: ResponsiveFlutter.of(context).scale(50)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    list[index]['booking Id'],
                    style: myText.regularText(),
                  ),
                  Text(
                    list[index]['customerName'],
                    style: myText.semiBoldText(
                        color: appColors.darkBlueTextColor,
                        size: ResponsiveFlutter.of(context).fontSize(2.2)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            ResponsiveFlutter.of(context).moderateScale(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: appColors.yellow.withOpacity(0.3)),
                          child: Padding(
                            padding: EdgeInsets.all(
                                ResponsiveFlutter.of(context).moderateScale(5)),
                            child: Row(
                              children: [
                                Image.asset(
                                  ImagePath.rating,
                                  height:
                                      ResponsiveFlutter.of(context).scale(12),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ResponsiveFlutter.of(context)
                                          .moderateScale(5)),
                                  child: Text(
                                    "4.5",
                                    style: myText.regularText(
                                        color: appColors.darkBlueTextColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveFlutter.of(context).scale(10),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: appColors.btnColor.withOpacity(0.2)),
                          child: Padding(
                              padding: EdgeInsets.all(
                                  ResponsiveFlutter.of(context)
                                      .moderateScale(5)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: ResponsiveFlutter.of(context)
                                        .moderateScale(5)),
                                child: Text(
                                  list[index]['serviceName'],
                                  style: myText.regularText(
                                      color: appColors.darkBlueTextColor),
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          isBookingDetailsScreen
              ? customRoundBtn(
                  context: context,
                  color: appColors.green,
                  image: ImagePath.call,
                  onTap: () {
                    launchURL();
                  },
                  height: ResponsiveFlutter.of(context).scale(35),
                  padding: 10)
              : Container(),
        ],
      ),
    ),
  );
}

Widget customNoData({required context, required image, str1 = "", str2 = ""}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding:
            EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(10)),
        child: Center(
          child: Image.asset(
            image,
            height: ResponsiveFlutter.of(context).scale(150),
          ),
        ),
      ),
      Text(
        str1,
        style: myText.semiBoldText(
            color: appColors.darkBlueTextColor,
            size: ResponsiveFlutter.of(context).fontSize(2.5)),
      ),
      Text(
        str2,
        style: myText.regularText(),
      ),
    ],
  );
}

Widget customContainer({
  required context,
  child,
  height,
  width,
  color,
  gradient,
  double padding = 5,
  alignment,
}) {
  return Padding(
    padding:
        EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(padding)),
    child: Material(
      borderRadius: BorderRadius.circular(
          ResponsiveFlutter.of(context).moderateScale(10)),
      child: Container(
        alignment: alignment ?? Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              ResponsiveFlutter.of(context).moderateScale(10)),
          color: color ?? appColors.appLightColor,
          gradient: gradient,
        ),
        child: child ?? Container(),
      ),
    ),
  );
}

Widget customAlertDialog({required context}) {
  return AlertDialog(
    title: Text(
      Strings.leave,
      style: myText.semiBoldText(
          color: appColors.darkBlueTextColor,
          size: ResponsiveFlutter.of(context).fontSize(2.5)),
    ),
    content: Text(
      Strings.leave,
      style: myText.regularText(
          color: appColors.transactionText,
          size: ResponsiveFlutter.of(context).fontSize(2)),
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.of(context).pop(false),
        child: Text(
          Strings.no,
          style: myText.semiBoldText(color: appColors.darkBlueTextColor),
        ),
      ),
      TextButton(
        onPressed: () => Navigator.of(context).pop(true),
        child: Text(
          Strings.yes,
          style: myText.semiBoldText(color: appColors.darkBlueTextColor),
        ),
      ),
    ],
  );
}

Widget customGradientContainer(
    {required context,
    leadingChild,
    String title = "",
    trailingChild,
    double? height,
    centerChild}) {
  List<Widget> widgets = [
    Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveFlutter.of(context).moderateScale(15)),
      child: centerChild ??
          Text(
            title,
            style: myText.boldText(
                size: ResponsiveFlutter.of(context).fontSize(3)),
          ),
    ),
    trailingChild ??
        SizedBox(
          height: ResponsiveFlutter.of(context).scale(8),
          width: ResponsiveFlutter.of(context).scale(30),
        ),
  ];
  if (leadingChild != null) {
    widgets.insert(0, leadingChild);
  }

  return Container(
    height: ResponsiveFlutter.of(context).scale(height ?? 90),
    decoration: const BoxDecoration(
      gradient: AppTheme.primaryGradient,
    ),
    child: Padding(
      padding: EdgeInsets.all(ResponsiveFlutter.of(context).scale(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: ResponsiveFlutter.of(context).scale(25),
          ),
          Row(
              mainAxisAlignment:
                  ((leadingChild != null && widgets.length == 3) ||
                          (leadingChild == null))
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.start,
              children: widgets),
        ],
      ),
    ),
  );
}

Widget customServiceCard({
  required context,
  list,
  index = 0,
}) {
  return customContainer(
      context: context,
      child: Padding(
        padding:
            EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          ResponsiveFlutter.of(context).moderateScale(15)),
                  child: Image.asset(
                    list != null ? list[index]['imageUrl'] : ImagePath.cleaning,
                    height: ResponsiveFlutter.of(context).scale(35),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list != null ? list[index]['name'] : Strings.cleaning,
                      style: myText.semiBoldText(
                          color: appColors.darkBlueTextColor,
                          size: ResponsiveFlutter.of(context).fontSize(2)),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$15/h",
                          style: myText.regularText(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ResponsiveFlutter.of(context)
                                  .moderateScale(5)),
                          child: Text(
                            "|",
                            style: myText.regularText(
                                color:
                                    appColors.transactionText.withOpacity(0.3)),
                          ),
                        ),
                        Image.asset(
                          ImagePath.rating,
                          height: ResponsiveFlutter.of(context).scale(10),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ResponsiveFlutter.of(context)
                                  .moderateScale(5)),
                          child: Text(
                            "4.5",
                            style: myText.regularText(
                              color: appColors.darkBlueTextColor,
                            ),
                          ),
                        ),
                        Text(
                          "(258 Reviews)",
                          style: myText.regularText(
                            color: appColors.transactionText,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            customRoundBtn(
              child: Image.asset(
                ImagePath.more,
                height: ResponsiveFlutter.of(context).scale(15),
              ),
              context: context,
              onTap: () {
                customNavigation(context: context, widget: const EditService());
              },
            ),
          ],
        ),
      ));
}

Widget customUploadContainer({required context, double padding = 8}) {
  return Padding(
    padding:
        EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(padding)),
    child: DottedBorder(
      color: appColors.btnColor,
      strokeWidth: ResponsiveFlutter.of(context).scale(1.5),
      dashPattern: [
        ResponsiveFlutter.of(context).scale(5),
        ResponsiveFlutter.of(context).scale(3)
      ],
      borderType: BorderType.RRect,
      radius: Radius.circular(ResponsiveFlutter.of(context).scale(10)),
      child: SizedBox(
        width: ResponsiveFlutter.of(context).wp(90),
        child: Padding(
          padding:
              EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.uploadWorkPhoto,
                style: myText.semiBoldText(
                  color: appColors.darkBlueTextColor,
                  size: ResponsiveFlutter.of(context).fontSize(2.25),
                ),
              ),
              SizedBox(
                height: ResponsiveFlutter.of(context).scale(10),
              ),
              commonButton(
                context: context,
                width: ResponsiveFlutter.of(context).scale(100),
                height: ResponsiveFlutter.of(context).scale(40),
                btnColor: appColors.btnColor.withOpacity(0.1),
                title: Strings.browse.toUpperCase(),
                textColor: appColors.btnColor,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

showCustomBottomSheet({required context, child, index = 0}) {
  int selectedValue = 1;
  ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
  return showModalBottomSheet<void>(
    context: context,
    constraints:
        BoxConstraints(maxHeight: ResponsiveFlutter.of(context).hp(85)),
    scrollControlDisabledMaxHeightRatio: ResponsiveFlutter.of(context).hp(85),
    shape: Border.all(color: appColors.appMediumColor),
    backgroundColor: appColors.appMediumColor,
    builder: (BuildContext context) {
      return child ??
          StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                padding: EdgeInsets.all(scalingQuery.scale(12)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                customRoundBtn(
                                  context: context,
                                  height:
                                      ResponsiveFlutter.of(context).scale(35),
                                  color: appColors.btnColor,
                                  image: ImagePath.cancelWhite,
                                ),
                              ],
                            ),
                            Text(
                              Strings.cancelOrder,
                              style: myText.boldText(
                                size: scalingQuery.fontSize(3),
                                color: appColors.darkBlueTextColor,
                              ),
                            ),
                            Text(
                              Strings.cancelReasonText,
                              style: myText.boldText(
                                size: scalingQuery.fontSize(2),
                                color: appColors.transactionText,
                              ),
                            ),
                            SizedBox(
                              height: scalingQuery.scale(10),
                            ),
                            customBookingCard(
                                context: context,
                                list: dummyBooking,
                                index: index,
                                onTap: () {}),
                            SizedBox(
                              height: scalingQuery.scale(10),
                            ),
                            customContainer(
                              context: context,
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            scalingQuery.moderateScale(8),
                                        vertical:
                                            scalingQuery.moderateScale(5)),
                                    child: Text(
                                      Strings.selectReason,
                                      style: myText.boldText(
                                        size: scalingQuery.fontSize(2.5),
                                        color: appColors.darkBlueTextColor,
                                      ),
                                    ),
                                  ),
                                  for (RadioOption option in radioOptions)
                                    Row(
                                      children: [
                                        Radio(
                                          splashRadius: scalingQuery.scale(10),
                                          activeColor: appColors.btnColor,
                                          value: option.value,
                                          groupValue: selectedValue,
                                          onChanged: (value) => setState(() =>
                                              selectedValue = value as int),
                                        ),
                                        Text(
                                          option.label,
                                          style: selectedValue == option.value
                                              ? myText.semiBoldText(
                                                  color: appColors
                                                      .darkBlueTextColor,
                                                  size:
                                                      scalingQuery.fontSize(2))
                                              : myText.regularText(
                                                  color: appColors
                                                      .darkBlueTextColor,
                                                  size:
                                                      scalingQuery.fontSize(2)),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: scalingQuery.scale(60),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                      child: commonButton(
                          context: context,
                          width: scalingQuery.wp(90),
                          title: Strings.submit.toUpperCase(),
                          onTap: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ],
                ),
              );
            },
          );
    },
  );
}

customCheckButton(
    {required context,
    bool isChecked = false,
    activeColor = AppTheme.darkSecondaryColor,
    color,
    isRadio = false,
    borderColor}) {
  return Container(
    width: ResponsiveFlutter.of(context).scale(20),
    height: ResponsiveFlutter.of(context).scale(20),
    decoration: BoxDecoration(
      color: isChecked ? activeColor : color,
      borderRadius:
          BorderRadius.circular(ResponsiveFlutter.of(context).scale(30) / 2),
      border: Border.all(
          color: isChecked
              ? borderColor ?? activeColor
              : appColors.transactionText),
    ),
    child: isChecked
        ? Padding(
            padding:
                EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(5)),
            child: Image.asset(
              isRadio ? ImagePath.radioCenter : ImagePath.checkMark,
              height: ResponsiveFlutter.of(context).scale(15),
            ),
          )
        : null,
  );
}

Widget customWalletCard({
  required context,
  list,
  index = 0,
}) {
  return customContainer(
      context: context,
      child: Padding(
        padding:
            EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          ResponsiveFlutter.of(context).moderateScale(15)),
                  child: Image.asset(
                    list != null ? list[index]['imageUrl'] : ImagePath.cleaning,
                    height: ResponsiveFlutter.of(context).scale(35),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list != null ? list[index]['name'] : Strings.cleaning,
                      style: myText.semiBoldText(
                          color: appColors.darkBlueTextColor,
                          size: ResponsiveFlutter.of(context).fontSize(2)),
                    ),
                    Text(
                      list != null ? list[index]['time'] : "",
                      style: myText.regularText(),
                    )
                  ],
                ),
              ],
            ),
            Text(
              list != null ? list[index]['rate'] : "",
              style: myText.boldText(
                  color: appColors.btnColor,
                  size: ResponsiveFlutter.of(context).fontSize(2.5)),
            )
          ],
        ),
      ));
}

Widget customCustomerCard({
  required context,
  list,
  index = 0,
}) {
  return InkWell(
    onTap: () {
      customNavigation(context: context, widget: const CustomerDetailsScreen());
    },
    child: customContainer(
        context: context,
        child: Padding(
          padding:
              EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(15)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ResponsiveFlutter.of(context)
                                .moderateScale(10)),
                        child: customUserImage(
                            context: context,
                            image: list[index]['imageUrl'],
                            height: ResponsiveFlutter.of(context).scale(50)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list != null
                                ? list[index]['name']
                                : Strings.dummy_5,
                            style: myText.semiBoldText(
                                color: appColors.darkBlueTextColor,
                                size:
                                    ResponsiveFlutter.of(context).fontSize(2)),
                          ),
                          Row(
                            children: [
                              Text(
                                list[index]['email'],
                                style: myText.regularText(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ResponsiveFlutter.of(context).moderateScale(5)),
                child: Divider(
                  height: ResponsiveFlutter.of(context).scale(5),
                  color: appColors.dividerColor.withOpacity(0.2),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      launchURL(number: list[index]['phone']);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  ResponsiveFlutter.of(context).moderateScale(5)),
                          child: Image.asset(
                            ImagePath.callBlue,
                            height: ResponsiveFlutter.of(context).scale(12),
                          ),
                        ),
                        Text(
                          list[index]['phone'],
                          style: myText.regularText(
                              color: appColors.darkBlueTextColor,
                              size: ResponsiveFlutter.of(context).fontSize(1.5)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "See 25 of booking history",
                    style: myText.regularText(
                        color: appColors.red,
                        isUnderline: true,
                        size: ResponsiveFlutter.of(context).fontSize(1.5)),
                  ),
                ],
              ),
            ],
          ),
        )),
  );
}

class RadioOption {
  final int value;
  final String label;

  RadioOption({required this.value, required this.label});
}

List<RadioOption> radioOptions = [
  RadioOption(value: 1, label: Strings.reason1),
  RadioOption(value: 2, label: Strings.reason2),
  RadioOption(value: 3, label: Strings.reason3),
  RadioOption(value: 4, label: Strings.reason4),
  RadioOption(value: 5, label: Strings.reason5),
];
