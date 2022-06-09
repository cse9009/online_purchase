import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_purchase/components/drawer.dart';
import 'package:online_purchase/screens/agriculture.dart';
import 'package:online_purchase/screens/animals/animals.dart';
import 'package:online_purchase/screens/auth/login.dart';
import 'package:online_purchase/screens/home.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  SearchBar? searchBar;
  PageController? _pageController;
  int _drawerIndex = 0, _bottomNavIndex = 0;

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        title: const Text('Online purchase'),
        actions: [searchBar!.getSearchAction(context)]);
  }

  _LayoutState() {
    searchBar = SearchBar(
        inBar: false,
        setState: setState,
        onSubmitted: (searchText) {
          print(searchText);
        },
        buildDefaultAppBar: buildAppBar);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchBar!.build(context),
      drawer: MyDrawer(
        index: _drawerIndex,
        onTap: (ctx, index) {
          setState(() {
            _drawerIndex = index;
          });
          if (index == 3 || index == 4 || index == 5) {
            index = 1;
          }
          setState(() {
            _bottomNavIndex = index;
          });

          _pageController?.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          Navigator.pop(ctx);
        },
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          Home(),
          Animals(),
          Agriculture(),
          Login(),
        ],
        onPageChanged: (pageIndex) {
          setState(() {
            _drawerIndex = pageIndex;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
          _pageController?.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home), label: 'হোম'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cow), label: 'পশু'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.tree), label: 'কৃষি'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.signIn), label: 'লগইন'),
        ],
      ),
    );
  }
}
