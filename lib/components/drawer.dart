import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  final int index;
  static const _iconSize = 16.0;
  const MyDrawer({Key? key, required this.onTap, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiLevelDrawer(
      backgroundColor: Colors.white,
      rippleColor: Colors.white,
      subMenuBackgroundColor: Colors.grey.shade100,
      header: SizedBox(
        // Header for Drawer
        height: MediaQuery.of(context).size.height * 0.25,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAw2dirxt2b6khFMgjYnsfLBuiE9189KrGAEBnPLOevFnX3OU0x9KRoeJP0A6vEbQiPRk&usqp=CAU',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Apps Name')
          ],
        )),
      ),
      children: [
        // Child Elements for Each Drawer Item
        MLMenuItem(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: FaIcon(
              FontAwesomeIcons.home,
              size: _iconSize,
              color: index == 0 ? Theme.of(context).primaryColor : Colors.black,
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'হোম',
              style: TextStyle(
                color:
                    index == 0 ? Theme.of(context).primaryColor : Colors.black,
              ),
            ),
          ),
          onClick: () {
            onTap(context, 0);
          },
        ),
        MLMenuItem(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: FaIcon(
              FontAwesomeIcons.cow,
              size: _iconSize,
              color: index == 1 || index == 3 || index == 4 || index == 5
                  ? Theme.of(context).primaryColor
                  : Colors.black,
            ),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: index == 1 || index == 3 || index == 4 || index == 5
                ? Theme.of(context).primaryColor
                : Colors.black,
          ),
          content: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "পশু",
              style: TextStyle(
                color: index == 1 || index == 3 || index == 4 || index == 5
                    ? Theme.of(context).primaryColor
                    : Colors.black,
              ),
            ),
          ),
          subMenuItems: [
            MLSubmenu(
                onClick: () {
                  onTap(context, 3);
                },
                submenuContent: Text(
                  'গরু',
                  style: TextStyle(
                    color: index == 3
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  ),
                )),
            MLSubmenu(
                onClick: () {
                  onTap(context, 4);
                },
                submenuContent: Text(
                  'ছাগল',
                  style: TextStyle(
                    color: index == 4
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  ),
                )),
            MLSubmenu(
                onClick: () {
                  onTap(context, 5);
                },
                submenuContent: Text(
                  'ভেড়া',
                  style: TextStyle(
                    color: index == 5
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  ),
                )),
          ],
          onClick: () {
            // onTap(context, 1);
          },
        ),

        MLMenuItem(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: FaIcon(
              FontAwesomeIcons.tree,
              size: _iconSize,
              color: index == 2 ? Theme.of(context).primaryColor : Colors.black,
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'কৃষি',
              style: TextStyle(
                color:
                    index == 2 ? Theme.of(context).primaryColor : Colors.black,
              ),
            ),
          ),
          onClick: () {
            onTap(context, 2);
          },
        ),
        // MLMenuItem(
        //   leading: const Padding(
        //     padding: EdgeInsets.only(left: 8),
        //     child: FaIcon(
        //       FontAwesomeIcons.signIn,
        //       size: _iconSize,
        //     ),
        //   ),
        //   content: const Padding(
        //     padding: EdgeInsets.only(left: 16),
        //     child: Text('লগইন'),
        //   ),
        //   onClick: () {
        //     Navigator.pop(context);
        //     // Navigator.of(context).push(
        //     //     MaterialPageRoute(
        //     //         builder: (context) =>
        //     //             Chat(userObj: userObj)));
        //   },
        // ),
      ],
    );
  }
}
