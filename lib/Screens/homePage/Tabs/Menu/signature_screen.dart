import 'package:flutter/gestures.dart';
import 'package:home_service/Common/all_import.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignatureScreen extends StatefulWidget {
  const SignatureScreen({super.key});

  @override
  State<SignatureScreen> createState() => _SignatureScreenState();
}

class _SignatureScreenState extends State<SignatureScreen> {
  final GlobalKey<SfSignaturePadState> _signatureKey = GlobalKey();
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("$isActive img1");
    }
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
                    title: Strings.signature,
                    leadingChild: customRoundBtn(
                      context: context,
                      height: ResponsiveFlutter.of(context).scale(35),
                      color: appColors.white,
                      image: ImagePath.blueBack,
                    ),
                    trailingChild: Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(10)),
                      child: InkWell(
                        onTap: () async {
                          if (kDebugMode) {
                            print("$isActive img2");
                          }
                          setState(() {
                            isActive = true;
                          });
                          if (kDebugMode) {
                            print("$isActive img3");
                          }
                          _signatureKey.currentState?.clear();
                          if (kDebugMode) {
                            print("$isActive img4");
                          }
                        },
                        child: Text(
                          Strings.clear,
                          style: myText.semiBoldText(),
                        ),
                      ),
                    ),
                  ),
                  isActive
                      ? Expanded(
                          child: SfSignaturePad(
                            key: _signatureKey,
                            backgroundColor: Colors.transparent,
                            strokeColor: appColors.darkBlueTextColor,
                            minimumStrokeWidth: scalingQuery.scale(2),
                            maximumStrokeWidth: scalingQuery.scale(5),
                          ),
                        )
                      : GestureDetector(
                      dragStartBehavior:DragStartBehavior.start,
                        onTap: () {
                            if (kDebugMode) {
                              print("$isActive img5 ");
                            }
                            setState(() {
                              isActive = true;
                            });
                          },
                        child: Container(
                          height: scalingQuery.hp(85),
                          width: scalingQuery.wp(100),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(
                              scalingQuery.moderateScale(120),
                            ),
                          child: Image.asset(ImagePath.signatureHint),
                        ),
                      ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                child: commonButton(
                  context: context,
                  width: scalingQuery.wp(90),
                  title: Strings.submit.toUpperCase(),
                ),
              ),
            ],
          ),
        ));
  }
}
