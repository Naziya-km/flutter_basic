import 'package:flutter/material.dart';

import 'login.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("MYAPP"),
        backgroundColor: const Color.fromARGB(255, 129, 44, 44),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1530076886461-ce58ea8abe24?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: 200,
            ),
            Text(
              "Hello",
              style: TextStyle(fontSize: 45),
            ),
            Text(
              "Naziya",
              style: TextStyle(fontSize: 45),
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Login();
                      }));
                    },
                    child: Text("login")))
          ],
        ),
      ),
    );
  }
}
