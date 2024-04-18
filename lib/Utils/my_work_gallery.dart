import 'package:home_service/Common/all_import.dart';

class MyWorkGallery extends StatefulWidget {
  const MyWorkGallery({super.key});

  @override
  State<MyWorkGallery> createState() => _MyWorkGalleryState();
}

class _MyWorkGalleryState extends State<MyWorkGallery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: appColors.appLightColor,
          body: Column(
            children: [
              customGradientContainer(
                context: context,
                title: Strings.myWork,
                leadingChild: customRoundBtn(
                  context: context,
                  height: ResponsiveFlutter.of(context).scale(35),
                  color: appColors.white,
                  image: ImagePath.blueBack,
                ),
              ),
              const MyWork(),
            ],
          ),
        ));
  }
}

class MyWork extends StatefulWidget {
  const MyWork({super.key});

  @override
  State<MyWork> createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  @override
  Widget build(BuildContext context) {
    ScalingQuery scalingQuery = ResponsiveFlutter.of(context);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.all(scalingQuery.moderateScale(0)),
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dummyImageList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: scalingQuery.moderateScale(5)),
          child: GestureDetector(
            onTap: () {
              customNavigation(
                  context: context,
                  widget: GalleryView(
                    index: index,
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(scalingQuery.moderateScale(20)),
                color: appColors.appLightColor,
              ),
              child: Image.asset(dummyImageList[index]['imageUrl']),
            ),
          ),
        );
      },
    );
  }
}

class GalleryView extends StatefulWidget {
  const GalleryView({super.key, required this.index});

  final int index;

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appColors.appLightColor,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: dummyImageList.length,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  dummyImageList[index]['imageUrl'],
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                );
              },
            ),
            customGradientContainer(
              context: context,
              title: Strings.myWork,
              leadingChild: customRoundBtn(
                context: context,
                height: ResponsiveFlutter.of(context).scale(35),
                color: appColors.white,
                image: ImagePath.blueBack,
              ),
            )
          ],
        ),
      ),
    );
  }
}
