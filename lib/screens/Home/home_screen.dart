import 'package:flutter/material.dart';
import 'package:travel_web_dashboard/model.dart/responsive.dart';
import 'package:travel_web_dashboard/project_widget.dart';
import 'package:travel_web_dashboard/screens/Home/Menu/menu.dart';

import 'Sidebar/sidebar.dart';
import 'dashboard/dashboard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;

    return Scaffold(
      // now we make it more professional
      // remove all litsview widgets
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE

              decoration: BoxDecoration(
                  color: const Color(0xffE63220),
                  image: DecorationImage(
                    image: AssetImage("images/logo3.png"),
                    scale: 2.5,

                    // fit: BoxFit.fill,

                    alignment: FractionalOffset.center,
                  )),

              accountName: Text(
                "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              accountEmail: Text(
                "Service at your fingerprint",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 4,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              //   currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              trailing: Icon(
                Icons.account_circle,
              ),
              title: const Text('اعداد حسابي',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.shopping_cart,
              ),
              title: const Text('طلباتي',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl),
              /* onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingPage(name)));
                },*/
            ),
            ListTile(
              trailing: Icon(
                Icons.home_repair_service,
              ),
              title: const Text('التسجيل كمزود خدمة',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl),
              /* onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupWPage()));
                },*/
            ),
            ListTile(
              trailing: Icon(
                Icons.help,
              ),
              title: const Text(
                'المساعدة',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.logout,
              ),
              title: const Text(
                'تسجيل الخروج',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                /*    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));*/
              },
            ),
          ],
        ),
        /*child: ListView(
          children: [
            DrawerHeader(
                child: Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI4JuatGP6M5_Q0wYSkx2jAVzJff1FBaPYXV7zFbMngh5RV6J7'),
                backgroundColor: Colors.white,
                radius: 100,
              ),
            )),

            MenuCardList(
              icon: Icons.dashboard,
              press: () {},
              inactiveColor: true,
              title: 'Dashboard',
            ),
            MenuCardList(
              icon: Icons.card_giftcard,
              press: () {},
              title: 'My Tickets',
            ),
            MenuCardList(
              icon: Icons.favorite_outline,
              press: () {},
              title: 'Favourite',
            ),
            MenuCardList(
              icon: Icons.email_outlined,
              press: () {},
              title: 'Messages',
            ),
            MenuCardList(
              icon: Icons.account_balance_wallet_outlined,
              press: () {},
              title: 'transaction',
            ),
            MenuCardList(
              icon: Icons.settings,
              press: () {},
              title: 'Setting',
            ),
          ],
        ),*/
      ),
      body: Row(
        children: [
          //menu

          if (Responsive.isDesktop(context)) Expanded(flex: 1, child: Menu()),
          //main section
          Expanded(
              flex: 6,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Expanded(flex: 4, child: Dashboard()),
                      if (!Responsive.isMobile(context))
                        Expanded(flex: 2, child: SideBar()),
                    ],
                  ),
                ],
              )),

          //sidebar
        ],
      ),
    );
  }
}
