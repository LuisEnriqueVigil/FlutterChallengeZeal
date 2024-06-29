import 'package:flutter/material.dart';


class LoadingProgressAppWidget extends StatelessWidget {
  const LoadingProgressAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 40.0,width: 40.0,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
