import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/navbar_cubit.dart';
import 'custom_bottom_nav_bar3.dart';
import 'custom_bottom_nav_bar.dart';
import 'custom_bottom_nav_bar2.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: BlocConsumer<NavbarCubit, NavbarState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NavbarCubit.get(context);

          return Scaffold(
            bottomNavigationBar: CustomBottomNavBar3(
              onChange: (index) {
                cubit.changeBottomNavBar(index);
              },
              defaultSelectedIndex: 0,
              backgroundColor: Colors.grey.shade100,
              radius: 25,
              showLabel: true,
              textList: [
                'Home',
                'Camera',
                'Messenger',
                'User',
              ],
              iconList: [
                Icons.home_outlined,
                Icons.camera,
                Icons.mail_outline,
                Icons.person_outline,
              ],
            ),
            appBar: AppBar(
              title: Text('Custom Nav bar'),
            ),
            extendBody: true,
            body: Container(
              color: Colors.grey.shade300,
              child: Center(
                child: Text('Hello from Item ${cubit.currentIndex}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
