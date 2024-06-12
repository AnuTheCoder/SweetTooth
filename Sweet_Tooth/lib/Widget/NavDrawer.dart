import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Drawer(
     //backgroundColor: Colors.white,
      //shadowColor: Colors.black,
      //surfaceTintColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Welcome User',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/DarkChocolates/Dark_7.jpg"))),
          ),
          ListTile(
            leading: Icon(Icons.verified_user,color: Colors.brown),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.add_business_rounded,color: Colors.brown),
            title: Text('Order History'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.input,color: Colors.brown),
            title: Text('Reviews'),
            onTap: () => {},
          ),

          ListTile(
            leading: Icon(Icons.location_on_outlined,color: Colors.brown),
            title: Text('Track Order'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.brown),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color,color: Colors.brown),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.brown),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
            SwitchListTile(
                title: Text(themeprovider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
                value: themeprovider.getIsDarkTheme, onChanged: (value){
              themeprovider.setDarkTheme(value);
            }),

        ],
      ),
    );
  }
}