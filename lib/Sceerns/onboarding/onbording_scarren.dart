import 'package:elancer2_ui_app/widgets/on_boarding_content.dart';
import 'package:elancer2_ui_app/widgets/page_view_indicl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onbording_scaeen extends StatefulWidget {
  const onbording_scaeen({super.key});

  @override
  State<onbording_scaeen> createState() => _onbording_scaeenState();
}

class _onbording_scaeenState extends State<onbording_scaeen> {
  late PageController _pageController;
  int _cuttentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: PageView وظيفتها الغاء المتابعة التي انشئت لاجلها على
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //    if(_cuttentPage <2)
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _cuttentPage < 2,
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/logen_screen');
                  },
                  child: Text('START'),
                ),
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2,
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  },
                  style: TextButton.styleFrom(
                      //  alignment: AlignmentDirectional.topEnd
                      ),
                  child: Text('SKIP'),
                ),
              ),
            ),
            //   if(_cuttentPage == 2)
            //    Align(
            //                 alignment: AlignmentDirectional.topEnd,
            //                 child: TextButton(
            //                   onPressed: () {},
            //                   style: TextButton.styleFrom(
            //                     //  alignment: AlignmentDirectional.topEnd
            //                   ),
            //                   child: Text('START'),
            //                 ),
            //               ),

            Expanded(
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int cuttentPage) {
                  print('CuttentPage $cuttentPage');
                  setState(() => _cuttentPage = cuttentPage);
                },
                children: const [
                  onBoadingContent(image1: 'img', title: 'Welcome!'),
                  onBoadingContent(image1: 'img_1', title: 'Add to cart'),
                  onBoadingContent(image1: 'img_3', title: 'Enjoy Puechase! '),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageViewLndical(
                  isCurrentPage: _cuttentPage == 0,
                  marginEnd: 15,
                ),
                PageViewLndical(
                    isCurrentPage: _cuttentPage == 1, marginEnd: 15),
                PageViewLndical(isCurrentPage: _cuttentPage == 2),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    if (_cuttentPage > 0) {
                      // (تتحكم في الرجوع من التطبيق)
                      _pageController.previousPage(
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOutCirc);
                    }
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                IconButton(
                  onPressed: () {
                    if (_cuttentPage < 2) {
                      // (تتحكم في التالي من التطبيق)
                      _pageController.nextPage(
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOutBack);
                    }
                  },
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),

            // شكل دائري // Row(
            const SizedBox(
              height: 25,
            ),
            Visibility(
              visible: _cuttentPage == 2,
              maintainState: true,
              maintainSize: true,
              maintainAnimation: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                // لكي اجيب لونأ
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 3),
                        blurRadius: 3
                      ),
                    ],
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffA6D1E6),
                        Color(0xffFEFBF6),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/logen_screen');
                    },
                    child: Text('START'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      minimumSize: Size(double.infinity, 50),
                      //        shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10)
                      //    )
                    ),
                  ),
                ),
              ),
            ),
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               TabPageSelectorIndicator(
            //                   backgroundColor:
            //                   _cuttentPage == 0 ? Colors.blue : Colors.grey,
            //                   borderColor: _cuttentPage == 0
            //                       ? Colors.orange
            //                       : Colors.transparent,
            //                   size: 10),
            //               TabPageSelectorIndicator(
            //                   backgroundColor: _cuttentPage == 1 ?  Colors.blue :Colors.grey ,
            //                   borderColor: _cuttentPage == 1 ?  Colors.orange : Colors.transparent,
            //                   size: 10),
            //               TabPageSelectorIndicator(
            //                   backgroundColor: _cuttentPage == 2 ?  Colors.blue :Colors.grey ,
            //                   borderColor:  _cuttentPage == 2 ?  Colors.orange : Colors.transparent,
            //                   size: 10),
            //             ],
            //           ),

            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
