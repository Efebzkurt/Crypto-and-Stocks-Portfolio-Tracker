import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio_app/constants/colors.dart';
import 'package:portfolio_app/screens/genelbakis_screen.dart';
import 'package:portfolio_app/screens/hedef_screen.dart';
import 'package:portfolio_app/screens/islemekle_screen.dart';
import 'package:portfolio_app/screens/portfoyum_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  final List<Widget> _screens = [
    const GenelBakisScreen(),
    const PortfoyumScreen(),
    const IslemekleScreen(),
    const HedefScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(currentPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                  color: HexColor(grayComponentText),
                  const AssetImage(
                    "lib/assets/images/genelbakislogo.png",
                  ),
                  size: 60),
              label: 'Genel Bakış',
              activeIcon: ImageIcon(
                  size: 60,
                  color: HexColor(grayComponentText),
                  const AssetImage("lib/assets/images/genelbakistiklogo.png"))),
          BottomNavigationBarItem(
              icon: ImageIcon(
                color: HexColor(grayComponentText),
                const AssetImage("lib/assets/images/portfoyumlogo.png"),
              ),
              label: 'Portföyüm',
              activeIcon: ImageIcon(
                  color: HexColor(grayComponentText),
                  const AssetImage("lib/assets/images/portfoyumtiklogo.png"))),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'İşlem Ekle',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                color: HexColor(grayComponentText),
                const AssetImage("lib/assets/images/hedeflogo.png"),
              ),
              label: 'Hedef',
              activeIcon: ImageIcon(
                  color: HexColor(grayComponentText),
                  const AssetImage("lib/assets/images/hedeftiklogo.png"))),
          BottomNavigationBarItem(
              icon: ImageIcon(
                color: HexColor(grayComponentText),
                const AssetImage("lib/assets/images/genelbakislogo.png"),
              ),
              label: 'Tüm Portföy',
              activeIcon: ImageIcon(
                  color: HexColor(grayComponentText),
                  const AssetImage("lib/assets/images/genelbakistiklogo.png"))),
        ],
        currentIndex: currentPageIndex,
        onTap: _onItemTapped,
        iconSize: 50,
        selectedItemColor: HexColor(mainColorDark),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: HexColor(grayComponentText),
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: HexColor(grayComponentText)),
      ),
    );
  }
}
