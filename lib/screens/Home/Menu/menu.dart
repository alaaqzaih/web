import 'package:flutter/material.dart';
import 'package:travel_web_dashboard/constant.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  scale: 2.7,

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
              "مرحبا احمد",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 2,
                fontSize: 18,
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
    );
  }
}

class MenuCardList extends StatelessWidget {
  const MenuCardList({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
    this.inactiveColor = false,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback press;
  final bool inactiveColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: inactiveColor ? kPrimaryColor : Colors.transparent,
      // ignore: prefer_const_constructors
      child: ListTile(
        onTap: press,
        leading: Icon(icon, color: inactiveColor ? Colors.white : Colors.grey),
        horizontalTitleGap: 0.0,
        title: Text(
          title,
          style: TextStyle(color: inactiveColor ? Colors.white : Colors.grey),
        ),
      ),
    );
  }
}
