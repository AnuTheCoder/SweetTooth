import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:sweet_tooth/UI/screens/auth/LoginPage.dart';
import '../../Widget/subtitle_text.dart';
import '../../Widget/title_text.dart';
import '../../providers/theme_provider.dart';
import '../../services/assets_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(AssetsManager.shoppingCart //Image.asset("${AssetsManager.shoppingCart}"),
            ),
          ),
          title: Text("Profile Screen"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Visibility(
              visible: false, //text will not visible
              child: Padding(
                padding: EdgeInsets.all(100.0),
                child: TitlesTextWidget(label: "Please Login...!!!"),
              ),
            ),

            Visibility(
              visible: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border: Border.all(
                          //color: Theme.of(context).colorScheme.background,
                            color: Colors.blue,
                            width: 3
                        ),
                        image: const DecorationImage(
                            image: NetworkImage("https://images.unsplash.com/photo-1583693034345-b6c1d5b2ffa6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHB1cnBsZSUyMGZsb3dlcnN8ZW58MHx8MHx8fDA%3D"),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitlesTextWidget(label: "Anusree"),
                        SizedBox(height: 6),
                        TitlesTextWidget(label: "anusreeanu021@gmail.com")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                      thickness: 1
                  ),
                  TitlesTextWidget(label: "General"),
                  SizedBox(height: 10),
                  CustomListTile(imagePath: AssetsManager.orderSvg, text: "All Orders", fuction: (){}),
                  CustomListTile(imagePath: AssetsManager.wishlistSvg, text: "Wishlist", fuction: (){}),
                  CustomListTile(imagePath: AssetsManager.recent, text: "Viewed recently", fuction: (){}),
                  CustomListTile(imagePath: AssetsManager.address, text: "Address", fuction: (){}),
                  SizedBox(height: 10,),
                  const Divider(
                      thickness: 1
                  ),
                  SizedBox(height: 10,),
                  const TitlesTextWidget(label: "Settings"),
                  SizedBox(height: 10),
                  SwitchListTile(
                      secondary: Image.asset(AssetsManager.theme,height: 30),
                      title: Text(themeprovider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
                      value: themeprovider.getIsDarkTheme, onChanged: (value){
                    themeprovider.setDarkTheme(value);
                  })
                ],
              ),
            ),
            Center(child: ElevatedButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              icon: Icon(Icons.login),
              label: Text("Login"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.blue
              ),
            ),
            )
          ],
        )
    );
  }
}


class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.imagePath, required this.text, required this.fuction});

  final String imagePath,text;
  final Function fuction;
  @override
  Widget build(BuildContext context) {
    return ListTile(onTap: (){fuction();},
      title: SubtitleTextWidget(label: text,textDecoration: TextDecoration.none,color: Colors.blue,fontSize: 15,),
      leading: Image.asset(imagePath,height: 30),
      trailing: Icon(IconlyLight.arrowRight2),
    );
  }
}
