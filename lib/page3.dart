import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      " You Need \n To Explore Today"),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 190,
                        width: 320,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: numberList.length,
                          itemBuilder: ((BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                width: 150,
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/cover.png"),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  child: Row(
                    children: [
                      const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          "Category"),
                      const SizedBox(
                        width: 184,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                              style: TextStyle(color: Colors.blue), "See all"))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
