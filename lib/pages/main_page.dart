import 'package:astrogpt/pages/tabs/add_page.dart';
import 'package:astrogpt/pages/tabs/chatList.dart';
import 'package:astrogpt/pages/tabs/home.dart';
import 'package:astrogpt/pages/tabs/notification.dart';
import 'package:astrogpt/pages/tabs/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    ChatlistPage(),
    const SearchPage(),
    const NotificationPage(),
    const AddPage(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: BottomNavigationBar(
            unselectedFontSize: 0,
            selectedFontSize: 0,
            type:BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white30.withOpacity(0.5),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    currentIndex == 0 ? Colors.white : Colors.white30.withOpacity(0.5),
                    BlendMode.srcIn,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/home-smile.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    currentIndex == 1 ? Colors.white : Colors.white30.withOpacity(0.5),
                    BlendMode.srcIn,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/list.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'list',
              ),
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    currentIndex == 2 ? Colors.white : Colors.white30.withOpacity(0.5),
                    BlendMode.srcIn,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/Search.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      currentIndex == 3? Colors.white : Colors.white30.withOpacity(0.5),
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      'assets/icons/notification_icon.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  label: "notification"),
              BottomNavigationBarItem(
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      currentIndex == 4? Colors.white : Colors.white30.withOpacity(0.5),
                      BlendMode.srcIn,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/add.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  label: 'add'),
            ],
          ),
        ),
      ),
    );
  }
}
