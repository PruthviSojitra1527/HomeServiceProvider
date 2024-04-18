import 'package:home_service/Screens/homePage/Tabs/Account/faqs_tab.dart';

import '../../../../Common/all_import.dart';
import 'contact_us_tab.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final List<Widget> _tabs = [
    const FAQs(),
    const ContactUs(),
  ];

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: DefaultTabController(
        length:  _tabs.length,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: appColors.appMediumColor,
              elevation: 0,
              leading: Container(),
              flexibleSpace: customGradientContainer(context: context, title: Strings.help,leadingChild: customRoundBtn(
                context: context,
                height: ResponsiveFlutter.of(context).scale(35),
                color: appColors.white,
                image: ImagePath.blueBack,
              ),)),
          body: Column(
            children: [
              TabBar(
                onTap: (_) {
                  FocusScope.of(context).unfocus();
                },
                indicatorColor: appColors.blueTextColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: scalingQuery.scale(2),
                unselectedLabelColor: appColors.darkBlueTextColor,
                labelColor: appColors.blueTextColor,
                labelStyle: myText.semiBoldText(),
                dividerColor: appColors.dividerColor.withOpacity(0.3),
                enableFeedback: true,
                automaticIndicatorColorAdjustment: true,
                tabs: const [
                  Tab(
                    child: Text(
                      Strings.faqs,
                    ),
                  ),
                  Tab(
                    child: Text(
                      Strings.contactUs,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: _tabs,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
