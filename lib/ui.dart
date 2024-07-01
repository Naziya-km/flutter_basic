import 'package:demo_app/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ui extends StatelessWidget {
  ui({super.key});

  var prdouct = Item();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text("products"),
      Expanded(
          child: ListView.builder(
              itemCount: prdouct.items.length,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 2),
                            color: Colors.grey,
                            blurRadius: 20)
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
                                    prdouct.items[index]["image"])),
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
                            Container(
                              width: 250,
                              child: Text(
                                prdouct.items[index]["title"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
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
                            Row(children: [
                              Text("Rs. ${prdouct.items[index]["price"]}"),
                              SizedBox(
                                width: 50,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(255, 19, 18, 19))),
                                  onPressed: () {},
                                  child: Text(
                                    "BUY",
                                    style: TextStyle(color: Colors.red),
                                  )),
                            ]),
                          ],
                        )
                      ],
                    ));
              }))
    ]));
  }
}
