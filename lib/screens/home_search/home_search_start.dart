import 'package:dweller/screens/home_search/home_search.dart';
import 'package:flutter/material.dart';

class HomeSearchStart extends StatefulWidget {
  const HomeSearchStart({Key? key}) : super(key: key);

  @override
  State<HomeSearchStart> createState() => _HomeSearchStartState();
}

class _HomeSearchStartState extends State<HomeSearchStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hi Man 👋🏾',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'I am Raphael, tell me the property you want and I will get it for you.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectionBox('3000', Icons.house, 'House',
                      const Color.fromARGB(255, 225, 251, 225), Colors.green),
                  selectionBox('2000', Icons.store, 'Shop',
                      const Color.fromARGB(255, 249, 225, 253), Colors.purple),
                  selectionBox('5000', Icons.landscape, 'Land',
                      const Color.fromARGB(255, 252, 237, 213), Colors.orange)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget selectionBox(String price, IconData icon, String name, Color bgColor,
      Color iconColor) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeSearch()));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
              blurStyle: BlurStyle.solid,
              spreadRadius: 0.5,
              blurRadius: 0.8,
            ),
          ],
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text("₦$price"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: bgColor),
              child: Icon(
                icon,
                color: iconColor,
                size: 45,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
