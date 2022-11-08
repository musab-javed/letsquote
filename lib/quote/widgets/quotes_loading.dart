import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AllQuotesLoading extends StatelessWidget {
  const AllQuotesLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: ((context, index) => const SizedBox(
              height: 10,
            )),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5.0),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Shimmer.fromColors(
            baseColor: const Color(0xffE0E0E0),
            highlightColor: const Color(0xfff5f5f5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ),
              height: 100,
              width: double.infinity,
            ),
          );
        });
  }
}
