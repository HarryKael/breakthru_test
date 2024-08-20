import 'package:breakthru_test/screens/desktop/home_page_desktop.dart';
import 'package:breakthru_test/screens/mobile/home_page_mobile.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    Size size = Size(
        MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height);
    if (size.height <= 1280 && size.width <= 768) {
      return const PruebaAppMobile();
    } else {
      return const PruebaAppDesktop();
    }
  }
}
