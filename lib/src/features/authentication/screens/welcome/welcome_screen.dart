import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signup_signin/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:signup_signin/src/constants/sizes.dart';
import 'package:signup_signin/src/features/authentication/screens/login/login_screen.dart';
import 'package:signup_signin/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../constants/colors.dart';
import 'package:signup_signin/src/constants/text-strings.dart';
import 'package:signup_signin/src/common_widgets/fade_in_animation/animation_model.dart';
import '../../../../constants/images_string.dart';
import 'package:signup_signin/src/common_widgets/fade_in_animation/animation_controller.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();


    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;


    return Scaffold(
      backgroundColor: isDarkMode ? aSecondaryColor : aPrimaryColor,
      body: Stack(
        children: [
          aFadeInAnimation(
            durationInMs: 1200,
            animate: aAnimatePosition(
                bottomAfter:0,
                bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
                topAfter:0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: Container(
              padding: const EdgeInsets.all(aDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: const AssetImage(aArtImage), height: height * 0.6),
                  Column(
                    children: [
                      Text(aWelcomeTitle, style: Theme.of(context).textTheme.displayMedium),
                      Text(aWelcomeSubTitle,
                          style: Theme.of(context).textTheme.titleSmall,
                          textAlign: TextAlign.center),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 800),
                                pageBuilder: (context, animation, secondaryAnimation) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: LoginScreen(),
                                  );
                                },
                              ),
                              // MaterialPageRoute(builder: (_) => LoginView()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(),
                            foregroundColor: aWhiteColor,
                            side: BorderSide(color:aSecondaryColor),
                            padding: EdgeInsets.symmetric(vertical: aButtonHeight),
                          ),

                          child: Text(aLogin.toUpperCase()),
                        ),
                      ),
                      const SizedBox(width: 10.0, height: 10.0,),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 800),
                                pageBuilder: (context, animation, secondaryAnimation) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: SignupScreen(),
                                  );
                                },
                              ),
                              // MaterialPageRoute(builder: (_) => LoginView()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(),
                            foregroundColor: aWhiteColor,
                            backgroundColor: aSecondaryColor,
                            side: BorderSide(color:aSecondaryColor),
                            padding: EdgeInsets.symmetric(vertical: aButtonHeight),
                          ),
                          child: Text(aSignup.toUpperCase()),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}