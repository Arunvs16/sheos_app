import 'package:flutter/material.dart';
import 'package:shoes_app/pages/auth/main_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 146, 173, 179),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Container(
                height: 200,
                width: 200,
                child: Image.asset(
                  'images/pumalogo.png',
                ),
              ),

              const SizedBox(
                height: 35,
              ),

              // title
              Text(
                'IMPOSSSIBLE IS NOTHING',
                style: TextStyle(fontSize: 20, color: Colors.grey.shade900),
              ),

              const SizedBox(
                height: 5,
              ),

              // sub title
              Text(
                'YOU GOT THIS',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade900),
              ),

              const SizedBox(
                height: 85,
              ),

              // shop now button
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
