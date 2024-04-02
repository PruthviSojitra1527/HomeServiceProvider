import '../../../../Common/all_import.dart';

class MyText {
  AppColors appColors = AppColors();

  boldText({color, size}) {
    return TextStyle(
      fontFamily: 'Product Sans',
      fontWeight: FontWeight.w800,
      fontSize: size,
      color: color ?? appColors.darkBlueTextColor,
    );
  }

  regularText({color, size, isUnderline = false}) {
    return TextStyle(
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
      decorationColor: color ?? appColors.transactionText,
      fontFamily: 'Product Sans',
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: color ?? appColors.transactionText,
    );
  }

  lightText({color, size}) {
    return TextStyle(
        fontFamily: 'Product Sans',
        fontWeight: FontWeight.w400,
        fontSize: size,
        color: color ?? appColors.transactionText);
  }

  semiBoldText({color, size}) {
    return TextStyle(
        fontFamily: 'Product Sans',
        fontWeight: FontWeight.w700,
        fontSize: size,
        color: color ?? appColors.blueTextColor);
  }
}
