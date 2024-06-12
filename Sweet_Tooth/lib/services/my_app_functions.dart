import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../UI/screens/auth/LoginPage.dart';
import '../Widget/subtitle_text.dart';
import '../Widget/title_text.dart';
import 'assets_manager.dart';

class MyAppFunctions{
  static Future<void> showErrorOrWarningDialog({required BuildContext context,
    required String subtitle, bool isError = true, required Function fct}) async{
    await showDialog(context: context, builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(isError ? AssetsManager.error : AssetsManager.warning,
                height: 60,
                width: 60),
            const SizedBox(height: 16.0),

            SubtitleTextWidget(label: subtitle,
                fontWeight: FontWeight.w600),

            const SizedBox(height: 16.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: !isError,
                  child: TextButton(onPressed: (){
                    Navigator.pop(context);
                  },
                    child: const SubtitleTextWidget(label: "Cancel",
                      color: Colors.green,
                    ),
                  ),
                ),

                TextButton(onPressed: (){
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                  child: const SubtitleTextWidget(label: "Ok",
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      );
    });
  }


  static Future<void> imagePickerDialog({required BuildContext context,
    required Function cameraFCT,
    required Function galleryFCT,
    required Function removeFCT
  }) async{
    await showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title : Center(child: TitlesTextWidget(label: "Choose option"),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              TextButton.icon(
                onPressed: (){
                  cameraFCT();

                  if(Navigator.canPop(context)){
                    Navigator.pop(context);}
                },

                icon: Icon(Icons.camera), label: Text("Camera"),),


              TextButton.icon(
                onPressed: (){
                  galleryFCT();

                  if(Navigator.canPop(context)){
                    Navigator.pop(context);}
                },

                icon: Icon(Icons.browse_gallery), label: Text("Gallery"),),


              TextButton.icon(
                onPressed: (){
                  removeFCT();

                  if(Navigator.canPop(context)){
                    Navigator.pop(context);}
                },

                icon: Icon(Icons.remove_circle_outline), label: Text("Remove"),),
            ],
          ),
        ),
      );
    });
  }
}