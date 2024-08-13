
import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_font_styles.dart';

AppBar defaultAppBar(
    BuildContext context, {
      String? title = '',
      Widget? centerWidget,
      Color? titleColor,
      double elevation = 1.5,
      List<Widget>? actions,
      Widget? backIcon,
      VoidCallback? onBackIconPress,
      Color? backIconColor,
      bool centerTitle = true,
      bool isHasButtonBack=false
    }) =>
    AppBar(
      title: centerWidget ?? Text(title??"",style: AppFontStyle().titleM(color: titleColor??AppColors().white,fontSize: 17),),
      leading: !isHasButtonBack?SizedBox.shrink():IconButton(
        icon: isHasButtonBack?backIcon ?? const Icon(Icons.arrow_back):const SizedBox.shrink(),
        color: backIconColor??AppColors().white,
        onPressed: onBackIconPress??() => Navigator.of(context).pop(),
      ),
      centerTitle: centerTitle,
      elevation: elevation,
      actions: actions ?? [],
    );