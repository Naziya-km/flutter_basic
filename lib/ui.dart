import 'package:flutter/material.dart';

class ui extends StatelessWidget {
  ui({super.key});

  List names = ["irul cair", "malik cahir", "good chair"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2), color: Colors.grey, blurRadius: 20)
              ],
              color: Color.fromARGB(255, 255, 237, 237),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(10),
            height: 300,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1612372606404-0ab33e7187ee?q=80&w=978&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      names[index],
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("ITS A GOOD CHAIR"),
                    SizedBox(
                      height: 20,
                    ),
                    Text("COMFORTABLE"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text("RS 1200/-"),
                        SizedBox(
                          width: 50,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 19, 18, 19))),
                            onPressed: () {},
                            child: Text(
                              "BUY",
                              style: TextStyle(color: Colors.red),
                            )),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
