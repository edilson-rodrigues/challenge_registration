import 'package:flutter/material.dart';

import 'package:challenge_registration/app/core/core.dart';

class BottomWidget extends StatelessWidget {
  final Widget child;

  const BottomWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppImages.bottomLogin,
          ),
          alignment: Alignment(-1.0, 1.0),
        ),
      ),
      height: 200,
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
