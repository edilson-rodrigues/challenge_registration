import 'package:flutter/material.dart';
import '../../../../../app/core/core.dart';
import '../../../../../app/shared/shared.dart';

class TopWidget extends PreferredSize {
  TopWidget(BuildContext context)
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.rightLogin,
                ),
                alignment: Alignment(1.0, 0.0),
              ),
            ),
            height: 250,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                LogoWidget(),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: Theme.of(context).textTheme.headline1!.merge(
                              TextStyle(
                                color: AppColors.blueShade,
                              ),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
