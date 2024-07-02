import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var colors = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/image.jpg",
                height: 100,
              ),
              Lottie.network(
                  "https://lottie.host/37575ae2-affc-4e11-a9a1-7ac0a062b434/sDgAAuSeFD.json",
                  height: 100),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (colors == Colors.white) {
                        colors = Colors.green;
                      } else {
                        colors = Colors.white;
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
