import 'package:flutter/material.dart';

import '../../core/utils/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: ColorConstant.primaryColor.withOpacity(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/get-started.png'),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: size.width * 0.8,
              decoration: const BoxDecoration(
                color: ColorConstant.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefix: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Enter city name',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Scaffold()));
              },
              child: Container(
                height: 50,
                width: size.width * 0.7,
                decoration: const BoxDecoration(
                  color: ColorConstant.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
