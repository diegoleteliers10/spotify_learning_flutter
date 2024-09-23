import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_learn/core/assets/app_vectors.dart';
import 'package:spotify_learn/presentation/intro/pages/get_satrted.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  // This method creates the state for the SplashPage widget.
  @override
  State<SplashPage> createState() => _SplashPageState(); // esto crea el estado del SplashPage
}

class _SplashPageState extends State<SplashPage> {

  // This method is called when the state is initially created.
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppVectors.logo),
      ),
    );
  }

  /// Redirects the user to the GetSatrted page after a 2 second delay.
  Future<void> redirect() async { //Future sirve para que el programa espere una accion especifica
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (BuildContext context) => const GetStarted()),
    );
  }
}
