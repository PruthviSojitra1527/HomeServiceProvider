import '../../../../Common/all_import.dart';
import '../../../../Utils/search_screen.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: appColors.appMediumColor,
          body: Column(
            children: [
              customGradientContainer(
                context: context,
                title: Strings.customer,
                leadingChild: customRoundBtn(
                  context: context,
                  height: ResponsiveFlutter.of(context).scale(35),
                  color: appColors.white,
                  image: ImagePath.blueBack,
                ),
                trailingChild: customRoundBtn(
                  context: context,
                  height: ResponsiveFlutter.of(context).scale(35),
                  color: appColors.btnColor,
                  image: ImagePath.search,
                  onTap: (){
                    customNavigation(
                        context: context,
                        widget: const SearchScreen(
                          hintText: Strings.customer,
                        ));
                  }
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                  shrinkWrap: true,
                  primary: false,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: dummyCustomerList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                      child: customCustomerCard(
                        context: context,
                        list: dummyCustomerList,
                        index: index,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
