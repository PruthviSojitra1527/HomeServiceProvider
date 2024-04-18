import '../../../../Common/all_import.dart';

class CustomerDetailsScreen extends StatefulWidget {
  const CustomerDetailsScreen({super.key});

  @override
  State<CustomerDetailsScreen> createState() => _CustomerDetailsScreenState();
}

class _CustomerDetailsScreenState extends State<CustomerDetailsScreen> {
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
                ),
              ),
              Padding(
                padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                child: SizedBox(
                  height: scalingQuery.hp(85),
                  child: ListView.builder(
                    padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
                    shrinkWrap: true,
                    primary: false,
                    physics: const AlwaysScrollableScrollPhysics(),

                    itemCount: dummyBooking.length,
                    itemBuilder: (context, index) {
                      return customBookingCard(
                        context: context,
                        list: dummyBooking,
                        index: index,
                        isCustomerDetailScreen:true,
                        child: Text(
                          dummyBooking[index]['rate'],
                          style: myText.semiBoldText(
                              color: appColors.btnColor,
                              size: ResponsiveFlutter.of(context).fontSize(2.5)),

                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
