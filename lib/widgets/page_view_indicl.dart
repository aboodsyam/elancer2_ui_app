import 'package:flutter/material.dart';

class PageViewLndical extends StatelessWidget {
  const PageViewLndical({
    super.key,
   required this.isCurrentPage,
    this.marginEnd = 0,
  });


  final bool isCurrentPage;
  final double marginEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 4,
      width: 18,
      decoration: BoxDecoration(
        color:isCurrentPage ? Color(0xff6A90F2) :Color(0xffDDDDDD),
        borderRadius:BorderRadius.circular(2),
      ),
    );
  }
}
