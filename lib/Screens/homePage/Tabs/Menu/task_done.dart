import '../../../../Common/all_import.dart';

class TaskDoneScreen extends StatefulWidget {
  const TaskDoneScreen({super.key, this.title = ""});

  final String title;

  @override
  State<TaskDoneScreen> createState() => _TaskDoneScreenState();
}

class _TaskDoneScreenState extends State<TaskDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          body: Column(
            children: [
              customGradientContainer(
                context: context,
                title: widget.title,
                leadingChild: customRoundBtn(
                  context: context,
                  height: ResponsiveFlutter.of(context).scale(35),
                  color: appColors.white,
                  image: ImagePath.blueBack,
                ),
              ),
            ],
          ),
        ));
  }
}
