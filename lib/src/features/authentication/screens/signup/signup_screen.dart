import 'package:flutter/material.dart';
import 'package:signup_signin/src/constants/images_string.dart';
import 'package:signup_signin/src/constants/sizes.dart';
import 'package:signup_signin/src/constants/text-strings.dart';
import 'package:signup_signin/src/features/authentication/screens/login/login_screen.dart';
class SignupScreen extends StatelessWidget {
  const  SignupScreen ( {Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(aDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Image(image: const AssetImage(aArtImage), height: height * 0.2),
                 Text(aSignuptitle, style: Theme.of(context).textTheme.displayMedium),
                 Text(aSignupSubtitle, style: Theme.of(context).textTheme.titleSmall,),
                Form(

                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          // controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Full Name',
                            hintText: 'Full Name',
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            border: OutlineInputBorder(),

                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          // controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'E-mail',
                            hintText: 'E-mail',
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(),

                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          // controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_open_outlined),
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_sharp),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Align(
                          alignment:Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                            },
                            child: Text('Forgot Password'),
                          ),
                        ),
                        SizedBox(
                          width:double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(aLogin.toUpperCase()),
                          ),
                        ),

                        const SizedBox(height: 10.0),
                        TextButton(
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
                                // MaterialPageRoute(builder: (_) => Signup()),
                              ),
                            );
                          },
                          child: Text.rich(TextSpan(text: "Already have an Account?",
                              style: Theme.of(context).textTheme.titleSmall,

                              children:[
                                TextSpan(text: "Login",
                                    style: TextStyle(color: Colors.blue)),

                              ]
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
    ]
    ),
    ),
    ),
    ),
    );
  }

}