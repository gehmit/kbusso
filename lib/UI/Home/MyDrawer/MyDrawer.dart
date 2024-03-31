
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:  Theme.of(context).colorScheme.primary,
      // surfaceTintColor: Colors.red,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: DrawerHeader(

            decoration: BoxDecoration(

              // color: Theme.of(context).colorScheme.primary

            ),
            child: Container(
              decoration: BoxDecoration(
              ),
              // height: MediaQuery.of(context).size.height / 4,
              child: Column(
                children: [
                  IconButton(
                    color: Colors.white,
                      onPressed: (){}, icon: Icon(Icons.person)),
                  Text("Utilisateur", style: TextStyle(color: Colors.white),)
                ],
              ),),
          ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Déconnexion"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
