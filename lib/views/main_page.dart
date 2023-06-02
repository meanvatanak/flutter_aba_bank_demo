import 'package:aba_bank_app/models/card_menu.dart';
import 'package:aba_bank_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../widgets/about_bottom_sheet.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // final colorScheme = Theme.of(context).colorScheme;
  final colorScheme = ColorScheme.light(
    brightness: Brightness.light,
    primary: primaryColor,
    secondary: secondaryColor,
    error: redColor,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          // backgroundColor: Colors.white,
          backgroundColor: Color(0xFF005E85),
          leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(PhosphorIcons.regular.list),
            splashRadius: 24,
          ),
          title: Text('ABA Bank'),
          // elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/notification',
                  arguments: {
                    "title": "Notification",
                    "message": 'This is a notification message',
                  },
                );
              },
              icon: Icon(PhosphorIcons.regular.bell),
              splashRadius: 24,
              // splashColor: redColor,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(PhosphorIcons.regular.phoneCall),
            ),
          ]),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text('ABA Bank'),
            accountEmail: Text('info@aba.com.kh'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'A',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onDetailsPressed: () {
              _scaffoldKey.currentState?.closeDrawer();
            },
          ),
          ListTile(
            leading: Icon(PhosphorIcons.regular.house),
            trailing: Icon(PhosphorIcons.regular.arrowRight),
            title: Text('Home'),
            onTap: () {},
            // dense: true,
          ),
          Container(
            height: 0.5,
            color: colorScheme.onSurface.withOpacity(0.5),
          ),
          ListTile(
            leading: Icon(PhosphorIcons.regular.creditCard),
            trailing: Icon(PhosphorIcons.regular.arrowRight),
            title: Text('Cards'),
            onTap: () {},
          ),
          Container(
            height: 0.5,
            color: colorScheme.onSurface.withOpacity(0.5),
          ),
          ListTile(
            leading: Icon(PhosphorIcons.regular.money),
            trailing: Icon(PhosphorIcons.regular.arrowRight),
            title: Text('Loans'),
            onTap: () {},
          ),
          Container(
            height: 0.5,
            color: colorScheme.onSurface.withOpacity(0.5),
          ),
          ListTile(
            leading: Icon(PhosphorIcons.regular.user),
            trailing: Icon(PhosphorIcons.regular.arrowRight),
            title: Text('Profile'),
            onTap: () {},
          ),
          Container(
            height: 0.5,
            color: colorScheme.onSurface.withOpacity(0.5),
          ),
          ListTile(
            leading: Icon(PhosphorIcons.regular.key),
            trailing: Icon(PhosphorIcons.regular.arrowRight),
            title: Text('Settings'),
            onTap: () {},
          ),
          Container(
            height: 0.5,
            color: colorScheme.onSurface.withOpacity(0.5),
          ),
          ListTile(
            leading: Icon(PhosphorIcons.regular.signOut),
            trailing: Icon(PhosphorIcons.regular.arrowRight),
            title: Text('Logout'),
            onTap: () {},
          ),
          Container(
            height: 0.5,
            color: colorScheme.onSurface.withOpacity(0.5),
          ),
          Spacer(),
          Padding(
            // padding: const EdgeInsets.symmetric(horizontal: 16.0),
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Version:'),
                Text('1.0.0'),
              ],
            ),
          ),
        ],
      )),
      body: Column(
        children: [
          Ink(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: const [
                  Colors.white,
                  Color(0xFF003B53),
                ],
              ),
            ),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              // childAspectRatio: 0.9,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...List.generate(
                  CardMenuModel.list.length,
                  (index) => InkWell(
                    onTap: () {
                      // showBottomSheet
                      _showBottomSheet();
                    },
                    // hoverColor: Colors.red,
                    // splashColor: Colors.red,
                    // highlightColor: colorScheme.secondary.withOpacity(0.5),
                    child: Container(
                        color: colorScheme.primary,
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CardMenuModel.list[index].icon,
                              color: Colors.white,
                              size: 42,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              CardMenuModel.list[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ))),
                  ),
                  // child: Container(
                  //   color: colorScheme.primary,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Icon(
                  //         CardMenuModel.list[index].icon,
                  //         color: Colors.white,
                  //         size: 32,
                  //       ),
                  //       SizedBox(height: 8,),
                  //       Text(
                  //         CardMenuModel.list[index].title,
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 12,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Color(0xFF10BAD2),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                splashColor: Colors.white,
                onTap: () {
                  Navigator.of(context).pushNamed('/quick_transfer');
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Quick Transfer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Create your templates here to make transfer quicker',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.currency_exchange,
                      color: Colors.white,
                      size: 64,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Color(0xFFEE5350),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                splashColor: Colors.white,
                onTap: () {
                  Navigator.of(context).pushNamed('/quick_payment');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // alignment: Alignment.bottomRight,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Quick Payment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Paying your bills with templates is easy and fast',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.currency_exchange,
                      color: Colors.white,
                      size: 64,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),

          /* Container(
            width: double.infinity,
            color: Color(0xFF06BAD3),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 15.0),
              child: Row(
                // alignment: AlignmentDirectional(0, 0),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Quick Transfer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Create your template here to make your transfer quick',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.currency_exchange,
                    color: Colors.white,
                    size: 32,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFFEE5350),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 15.0),
              child: Row(
                // alignment: AlignmentDirectional(0, 0),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Quick Payment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Paying your bills with templates is easy and fast',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.currency_exchange,
                    color: Colors.white,
                    size: 32,
                  ),
                ],
              ),
            ),
          ), */

          /* Expanded(
            child: Container(
              width: double.infinity,
              color: Color(0xFF10BAD2),
              child: Stack(
                  alignment: AlignmentDirectional(0, -0.8),
                  // alignment: Alignment.bottomRight,
                  children: [
                  Container(
                    // color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Quick Transfer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Create your templates here to make transfer qucker',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.currency_exchange,
                    color: Colors.white,
                    size: 40,
                  ),
                ]
              ),
            ),
          ), */
          /* Expanded(
            child: Container(
              width: double.infinity,
              color: Color(0xFFED5652),
              child: Stack(
                  alignment: AlignmentDirectional(0, -0.8),
                  // alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Quick Payment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            'Paying your bills templates is faster',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      PhosphorIcons.fill.currencyCircleDollar,
                      color: Colors.white,
                      size: 80,
                    ),
                  ]
              ),
            ),
          ), */
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorScheme.primary,
        child: Icon(
          PhosphorIcons.regular.qrCode,
          color: colorScheme.secondary,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /* bottomNavigationBar: BottomAppBar(
        color: colorScheme.primary,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      PhosphorIcons.regular.house,
                      color: _currentIndex == 0 ? colorScheme.secondary : colorScheme.onPrimary.withOpacity(0.5),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: colorScheme.secondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      PhosphorIcons.regular.house,
                      color: _currentIndex == 0 ? colorScheme.secondary : colorScheme.onPrimary.withOpacity(0.5),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: colorScheme.secondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      PhosphorIcons.regular.house,
                      color: _currentIndex == 0 ? colorScheme.secondary : colorScheme.onPrimary.withOpacity(0.5),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: colorScheme.secondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      PhosphorIcons.regular.house,
                      color: _currentIndex == 0 ? colorScheme.secondary : colorScheme.onPrimary.withOpacity(0.5),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: colorScheme.secondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), */

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor:
              Theme.of(context).colorScheme.onPrimary.withOpacity(0.5),
          selectedFontSize: 14,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(PhosphorIcons.regular.house)),
              activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(PhosphorIcons.fill.house)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(PhosphorIcons.regular.creditCard)),
              activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(PhosphorIcons.fill.creditCard)),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(PhosphorIcons.regular.mapPin)),
              activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(PhosphorIcons.fill.mapPin)),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(PhosphorIcons.regular.user)),
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(PhosphorIcons.fill.user),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  //simple bottom sheet
  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        isDismissible: false,
        enableDrag: false,
        constraints: const BoxConstraints(
          maxHeight: double.infinity,
          maxWidth: double.infinity,
        ),
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return const AboutBottomSheet();
        });
  }
}
