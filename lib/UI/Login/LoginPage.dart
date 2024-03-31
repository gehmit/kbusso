
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 2 / 3,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(45),
                topLeft: Radius.circular(45),
              ),
              color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Text("BIENVENUE SUR NOTRE APPLICATION", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                const Text("Votre login", style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: "Email ou numéro de téléphone"
                  ),
        
                ),
                const SizedBox(height: 20,),
                const Text("Votre mot de passe", style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye)),
                  ),
        
                ),
                const SizedBox(height: 30,),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
                    foregroundColor: const MaterialStatePropertyAll(Colors.white),
                    minimumSize: MaterialStatePropertyAll(Size(MediaQuery.of(context).size.width - 40, 40))
                  ),
                    onPressed: (){}, child: const Text("Connexion", style: TextStyle(fontWeight: FontWeight.bold),)),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Mot de passe oublié ?"),
                    // const SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
                        },
                        child: Text("Récupérer", style: TextStyle(color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),

                // const Text("Vous n'avez pas encore de compte ?"),
                // const SizedBox(height: 10,),
                // Container(
                //   alignment: Alignment.bottomRight,
                //   decoration: BoxDecoration(
                //   ),
                //   child: TextButton(
                //     onPressed: () {
                //
                //     },
                //     child: Text("Creer mon compte", style: TextStyle(color: Theme.of(context).colorScheme.primary,
                //     fontWeight: FontWeight.bold),),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


