import 'package:flutter/material.dart';
import 'package:books_store_ilham/page2.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg-bk.png'), fit: BoxFit.cover),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                      "book "),
                  Text(
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                      "store"),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 270,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Page2();
                      },
                      
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            "Get Started"),
                        const SizedBox(
                          width: 116,
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const Icon(
                                color: Colors.black,
                                size: 20,
                                Icons.arrow_forward))
                      ],
                    )),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
