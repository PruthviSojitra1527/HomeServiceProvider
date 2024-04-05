import 'package:home_service/Common/all_import.dart';

class ChatPageScreen extends StatefulWidget {
  const ChatPageScreen({super.key, required this.userName});

  final String userName;

  @override
  ChatPageScreenState createState() => ChatPageScreenState();
}

class ChatPageScreenState extends State<ChatPageScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return Scaffold(
      backgroundColor: appColors.appLightColor,
      body: Column(
        children: [
          customAppBar(context: context, title: widget.userName),
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Align(
                    alignment: _messages[index].startsWith('You~')
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(8)),
                      decoration: BoxDecoration(
                        gradient: _messages[index].startsWith('You~')
                            ? AppTheme.chatGradient
                            : null,
                        color: _messages[index].startsWith('You~')
                            ? null
                            : appColors.chatReceiverContainerColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: _messages[index].startsWith('You~')
                              ? Radius.zero
                              : Radius.circular(
                                  scalingQuery.moderateScale(10),
                                ),
                          bottomLeft: _messages[index].startsWith('You~')
                              ? Radius.circular(
                                  scalingQuery.moderateScale(10),
                                )
                              : Radius.zero,
                          topRight: Radius.circular(
                            scalingQuery.moderateScale(10),
                          ),
                          topLeft: Radius.circular(
                            scalingQuery.moderateScale(10),
                          ),
                        ),
                      ),
                      child: Text(
                        _messages[index].split('~').last,
                        style: _messages[index].startsWith('You~')
                            ? myText.regularText(
                                color: appColors.white,
                                size: scalingQuery.fontSize(2))
                            : myText.regularText(
                                color: appColors.darkBlueTextColor,
                                size: scalingQuery.fontSize(2)),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(scalingQuery.moderateScale(12)),
            child: Row(
              children: [
                Expanded(
                    child: customContainer(
                  color: appColors.appMediumColor,
                  child: Padding(
                    padding: EdgeInsets.all(scalingQuery.moderateScale(12)),
                    child: commonTextField(
                      color: appColors.darkBlueTextColor,
                      context: context,
                      controller: _messageController,
                      hintText: Strings.typeMsg,
                    ),
                  ),
                  context: context,
                )),
                InkWell(
                  onTap: () {
                    _sendMessage(_messageController.text.trim());
                  },
                  child: Container(
                    height: scalingQuery.scale(45),
                    width: scalingQuery.scale(45),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: AppTheme.darkGradient,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(scalingQuery.moderateScale(15)),
                      // Adjusted padding
                      child: Image.asset(ImagePath.sendBtn),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add('You~ $message');
      });
      _messageController.clear();
      _receiveResponse();
    }
  }

  void _receiveResponse() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _messages.add('${widget.userName}~ This is a dummy response.');
      });
    });
  }
}
