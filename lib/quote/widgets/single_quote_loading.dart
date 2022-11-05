import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SingleQuoteLoading extends StatelessWidget {
  const SingleQuoteLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xffE0E0E0),
      highlightColor: const Color(0xfff5f5f5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: Colors.white,
        ),
        height: 200,
        width: 400,
      ),
    );
  }
}
