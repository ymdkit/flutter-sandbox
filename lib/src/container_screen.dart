import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/src/app_route.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ItemsRouter(),
        ItemsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          ],
        );
      },
    );
  }
}
