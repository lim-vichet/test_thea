import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../logic/cubit/bottom_nav/bottom_nav_cubit.dart';
import '../../../utils/constants/app_colors.dart';

import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';

import '../../widgets/bottom_nav_icon.dart';

import '../homepage/homepage.dart';
import '../location/home_location.dart';
import '../notification/notification_screen.dart';


class MainScreen extends StatefulWidget {
  static const String routeName = "/MainScreen";
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(0),
      child: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return Scaffold(
            body: LazyLoadIndexedStack(
              index: BlocProvider.of<BottomNavCubit>(context).currentIndex,
              children: const [
                HomePage(),
                HomeLocation(),
                NotificationScreen(),
              ],
            ),
            // bottomNavigationBar: SizedBox(
            //   child: BottomNavigationBar(
            //     currentIndex:
            //     BlocProvider.of<BottomNavCubit>(context).currentIndex,
            //     onTap: (index) {
            //       // bool isNotLogin =
            //       //     SharedPreferencesService.instance?.token == "" ||
            //       //         SharedPreferencesService.instance?.token == null;
            //       BlocProvider.of<BottomNavCubit>(context)
            //           .onNavbarIndexChange(index);
            //       // if ((index == 1 || index == 2 || index == 3) &&
            //       //     isNotLogin) {
            //       //   Navigator.pushNamed(context, LoginScreen.routeName);
            //       // } else {
            //       //   BlocProvider.of<BottomNavCubit>(context)
            //       //       .onNavbarIndexChange(index);
            //       // }
            //     },
            //     backgroundColor: AppColors().white,
            //     unselectedItemColor: AppColors().black,
            //     unselectedFontSize: 12.px,
            //     selectedFontSize: 14.px,
            //     iconSize: 24.px,
            //     selectedItemColor: AppColors().primary,
            //     type: BottomNavigationBarType.fixed,
            //
            //     items: [
            //       BottomNavigationBarItem(
            //         icon: bottomNavIcon(icon: Icons.home, isActive: false),
            //         activeIcon: bottomNavIcon(icon: Icons.home, isActive: true),
            //         label: "Home",
            //       ),
            //       BottomNavigationBarItem(
            //         icon: bottomNavIcon(
            //             icon: Icons.location_on, isActive: false),
            //         activeIcon: bottomNavIcon(
            //             icon: Icons.location_on, isActive: true),
            //         label: "Location",
            //       ),
            //       BottomNavigationBarItem(
            //         icon: bottomNavIcon(
            //             icon: Icons.comment, isActive: false),
            //         activeIcon: bottomNavIcon(
            //             icon: Icons.comment, isActive: true),
            //         label: "Notification",
            //       ),
            //       BottomNavigationBarItem(
            //         icon: bottomNavIcon(
            //             icon: Icons.account_circle_outlined, isActive: false),
            //         activeIcon: bottomNavIcon(
            //             icon: Icons.account_circle_outlined, isActive: true),
            //         label: "My Account",
            //       ),
            //     ],
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
