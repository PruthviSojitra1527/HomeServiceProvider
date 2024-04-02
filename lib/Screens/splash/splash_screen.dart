import '../../../../Common/all_import.dart';
import 'package:home_service/Screens/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  AppColors appColors = AppColors();

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
            (route) => false, // clear the navigation history
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var height = mediaQueryData.size.height;
    var width = mediaQueryData.size.width;
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: appColors.darkBackgroundColor,
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath.splash),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.contain,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height*0.6,
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom:mediaQueryData.padding.bottom),
                      child: Image.asset(ImagePath.appLogo,height: height*0.25,width: width*0.35,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
