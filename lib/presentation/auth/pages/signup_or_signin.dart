import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_learn/common/widgets/button/basic_app_button.dart';
import 'package:spotify_learn/core/assets/app_images.dart';
import 'package:spotify_learn/core/assets/app_vectors.dart';
import 'package:spotify_learn/core/theme/app_colors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern)
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(AppVectors.bottomPattern, width: 300, height: 200)
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.authBG, height: 300,)
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    const SizedBox(height: 55),
                    const Text(
                      'Enjoy Listening To Music',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(height: 21),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child:Text(
                        'Spotify is a propiertary Swedish audio, streaming and media services provider',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey
                        ),
                        textAlign: TextAlign.center,
                      )
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          flex:1,
                          child: BasicAppButton(
                            title: 'Register',
                            height: 80,
                            onPressed: () {

                            },
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex:1,
                          child: TextButton(
                            onPressed: (){

                            },
                            child: const Text('Sign in', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}