import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.blue),
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
                              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                       Container(
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/action.jpg"),
                                ),
                              ), 
                            ),
                            SizedBox(width: 5,),
                        Container(
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/adventure.jpg"),
                                ),
                              ), 
                            ),
                            SizedBox(width: 5,),
                          Container(
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/comedy.jpg"),
                                ),
                              ), 
                            ),
                    ],
                  ),
                ),
                
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                       Container(
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/comic.jpg"),
                                ),
                              ), 
                            ),
                            SizedBox(width: 5,),
                        Container(
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/horor.jpg"),
                                ),
                              ), 
                            ),
                            SizedBox(width: 5,),
                          Container(
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/romance.jpg"),
                                ),
                              ), 
                            ),
                    ],
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: Colors.white,
                  size: 23,
                  Icons.home,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: Colors.white,
                  size: 23,
                  Icons.favorite,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: Colors.white,
                  size: 23,
                  Icons.search_outlined,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: Colors.white,
                  size: 23,
                  Icons.person_sharp,
                )),
            ],
          ),
        ),
      ),
    );
  }
}
