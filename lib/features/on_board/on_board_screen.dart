import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/on_board/on_board.dart';
import 'package:jambotaxi/features/on_board/widgets/final_screen.dart';
import 'package:jambotaxi/features/on_board/widgets/initial_screen.dart';
import 'package:jambotaxi/features/on_board/widgets/middle_screen.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(initialPage: 0);

    final OnBoardingController controller = Get.put(OnBoardingController());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                controller.changePage(page);
              },
              children: const [InitialScreen(), MiddleScreen(), FinalScreen()],
            ),
            Positioned(
              bottom: 35,
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(3, (int index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 5,
                      width: (index == controller.currentPage.value) ? 60 : 20,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == controller.currentPage.value)
                            ? AppColors.primeryColor
                            : AppColors.grey,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 20.0,
              child: TextButton(
                onPressed: () {
                  if (controller.currentPage.value == 2) {
                    Get.toNamed(AppRoute.login);
                  }
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text('Next',
                    style: Theme.of(context).textTheme.displayMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






// class OnBoardScreen extends StatelessWidget {
//   OnBoardScreen({super.key});
//   final controller = OnBoardingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: PageView.builder(
//           itemCount: controller.onboardingPages.length,
//           itemBuilder: (context, index) {
//             return SizedBox(
//               child: Container(
//                 height: 180,
//                 width: double.maxFinite,
//                 decoration: BoxDecoration(color: Colors.amber),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     CustomSvgImage(
//                       width: MediaQuery.of(context).size.width,
//                       imageName: controller.onboardingPages[index].imageAssets,
//                       boxFit: BoxFit.fitWidth,
//                     )
//                   ],
//                 ),
//               ),
//             );
//           }),
//     ));
//   }
// }
