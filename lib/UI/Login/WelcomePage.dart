import 'package:flutter/material.dart';

import 'SignUpPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        height: MediaQuery.of(context).size.height * 2 / 4,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(45),
              topLeft: Radius.circular(45),
            ),
            color: Colors.white
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("BIENVENUE SUR KBUSSO", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              // const SizedBox(height: 40,),
              const Text("Développez votre activité et trouvez de nouveaux clients...", textAlign: TextAlign.center,),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
                      foregroundColor: const MaterialStatePropertyAll(Colors.white),
                      minimumSize: MaterialStatePropertyAll(Size(MediaQuery.of(context).size.width - 40, 40))
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage(),));
                  }, child: const Text("Continuer", style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }
}

