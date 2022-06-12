import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_purchase/components/drawer.dart';
import 'package:online_purchase/sate_management/app_settings.dart';
import 'package:online_purchase/sate_management/preferences_settings.dart';
import 'package:online_purchase/screens/agriculture.dart';
import 'package:online_purchase/screens/animals/animals.dart';
import 'package:online_purchase/screens/auth/login.dart';
import 'package:online_purchase/screens/home.dart';
import 'package:provider/provider.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  SearchBar? searchBar;
  PageController? _pageController;
  int _drawerIndex = 0, _bottomNavIndex = 0;
  late StreamingSharedPreferencesSettings _streamingSharedPreferencesSettings;

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _streamingSharedPreferencesSettings =
        Provider.of<AppSettings>(context).streamingSharedPreferencesSettings;
  }

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
        children: [
          const Home(),
          const Animals(),
          const Agriculture(),
          Login(
            onStateChange: () {
              setState(() {});
            },
          ),
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
          if (index == 3 &&
              _streamingSharedPreferencesSettings.token.getValue().isNotEmpty) {
            //Sign Out
            _streamingSharedPreferencesSettings.token.setValue('');
            _streamingSharedPreferencesSettings.fullName.setValue('');
            setState(() {});
            return;
          }
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
        items: [
          const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home), label: 'হোম'),
          const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cow), label: 'পশু'),
          const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.tree), label: 'কৃষি'),
          _streamingSharedPreferencesSettings.token.getValue().isEmpty
              ? const BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.signIn), label: 'লগইন')
              : const BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.signOut), label: 'লগ আউট'),
        ],
      ),
    );
  }
}
