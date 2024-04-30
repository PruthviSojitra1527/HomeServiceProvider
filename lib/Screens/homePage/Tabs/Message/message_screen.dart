import '../../../../Common/all_import.dart';
import '../../../../Utils/search_screen.dart';
import 'chat_page.dart';

class MsgScreen extends StatefulWidget {
  const MsgScreen({super.key});

  @override
  State<MsgScreen> createState() => _MsgScreenState();
}

class _MsgScreenState extends State<MsgScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return Scaffold(
      backgroundColor: appColors.appMediumColor,
      body: dummyChatList.isNotEmpty
          ? Column(
              children: [
                customGradientContainer(
                  context: context,
                  title: Strings.chat,
                  trailingChild: customRoundBtn(
                      context: context,
                      height: scalingQuery.scale(35),
                      color: appColors.btnColor,
                      image: ImagePath.search,
                      onTap: () {
                        customNavigation(
                            context: context,
                            widget: const SearchScreen(
                              hintText: Strings.chat,
                            ));
                      }),
                ),
                Expanded(
                  child: Container(
                    height: scalingQuery.hp(95),
                    decoration:
                        const BoxDecoration(gradient: AppTheme.primaryGradient),
                    child: ListView.separated(
                      itemCount: dummyChatList.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        var unseen = dummyChatList[index]['unseen'];
                        return InkWell(
                          onTap: () {
                            customNavigation(
                              context: context,
                              widget: ChatPageScreen(
                                  userName: dummyChatList[index]['name']),
                            );
                          },
                          child: Container(
                              color: appColors.appLightColor,
                              padding:
                                  EdgeInsets.all(scalingQuery.moderateScale(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      customUserImage(
                                          context: context,
                                          image: dummyChatList[index]['img'],
                                          height: scalingQuery.scale(60)),
                                      SizedBox(
                                        width: scalingQuery.scale(10),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            dummyChatList[index]['name'],
                                            style: myText.semiBoldText(
                                                color:
                                                    appColors.darkBlueTextColor,
                                                size: scalingQuery.fontSize(2.3)),
                                          ),
                                          Text(
                                            dummyChatList[index]['msg'],
                                            style: myText.regularText(
                                              color: unseen == null
                                                  ? appColors.transactionText
                                                  : appColors.darkBlueTextColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dummyChatList[index]['time'],
                                        style: myText.regularText(),
                                      ),
                                      SizedBox(
                                        height: scalingQuery.scale(12),
                                      ),
                                      unseen == null
                                          ? Container()
                                          : customRoundBtn(
                                              context: context,
                                              color: appColors.btnColor,
                                              height: scalingQuery.scale(30),
                                              padding: 0,
                                              onTap: () {},
                                              child: Text(
                                                unseen.toString(),
                                                style: myText.boldText(
                                                  color: appColors.white,
                                                ),
                                              ),
                                            )
                                    ],
                                  ),
                                ],
                              )),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: scalingQuery.scale(5),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          : customNoData(
              context: context,
              image: ImagePath.noChat,
              str1: Strings.noChat,
              str2: Strings.tryAgainOrLeave,
            ),
    );
  }
}
