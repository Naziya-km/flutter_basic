import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var colors = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                  height: 100,
                  "https://cdn-icons-png.flaticon.com/512/87/87390.png"),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (colors == Colors.pink) {
                        colors = Colors.green;
                      } else {
                        colors = Colors.pink;
                      }
                    });
                  },
                  icon: Icon(Icons.workspaces)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Passowrd',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text("forget password")),
                ],
              ),
              Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "signup/create an account",
                        style: GoogleFonts.abel(),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("login"))
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
