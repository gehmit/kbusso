import 'package:flutter/material.dart';
// import 'package:gehmit/UI/Home/HomePage.dart';
import 'package:gehmit/UI/Login/LoginPage.dart';
import 'package:intl_phone_number_field/intl_phone_number_field.dart';

import '../Home/MainPage.dart';



class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          // height: MediaQuery.of(context).size.height * 6 / 7,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: ListView(
            children: [
              const Text("Nom", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: "Votre nom ici...",
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Prénom", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: "Votre prénom ici..."
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              const Text("Numéro de téléphone", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),

              InternationalPhoneNumberInput(
                formatter: MaskedInputFormatter('# ## ## ## ##'),
                initCountry: CountryCodeModel(
                    name: "Cameroon", dial_code: "+237", code: "CM"),
                countryConfig: CountryConfig(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Theme.of(context).colorScheme.primary.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    noFlag: false,
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
                validator: (number) {
                  if (number.number.isEmpty) {
                    return "The phone number cannot be left empty";
                  }
                  return null;
                },
                onInputChanged: (phone) {
                  // print(phone.code);
                  // print(phone.dial_code);
                  // print(phone.number);
                  // print(phone.rawFullNumber);
                  // print(phone.rawNumber);
                  // print(phone.rawDialCode);
                  // _phoneController.text = phone.dial_code + phone.rawNumber;
                },
                phoneConfig: PhoneConfig(
                  enabledColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  errorColor: Colors.red,
                  labelStyle: null,
                  labelText: null,
                  floatingLabelStyle: null,
                  focusNode: null,
                  radius: 35,
                  hintText: "Phone Number",
                  borderWidth: 1,
                  backgroundColor: Colors.white,
                  decoration: null,
                  popUpErrorText: true,
                  autoFocus: false,
                  showCursor: true,
                  textInputAction: TextInputAction.done,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  errorTextMaxLength: 2,
                  errorPadding: const EdgeInsets.only(top: 14),
                  errorStyle: const TextStyle(
                      color: Colors.red, fontSize: 12, height: 1),
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 20,),
              const Text("Mot de passe", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: "Votre mot de passe ici..."
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Confirmation du passe", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: "Confirmez votre mot de passe ici..."
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              TextButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
                  backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)
                ),
                  onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage(),));
                  }, child: Text("Créer mon compte")),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Vous avez déjà un compte ?"),
                  // const SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
                      },
                      child: Text("Connexion", style: TextStyle(color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
