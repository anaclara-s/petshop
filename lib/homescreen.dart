import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 149, 120),
      //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: Size(300, 60),
                backgroundColor: Color.fromARGB(255, 50, 20, 55),
              ),
              child: Text('LOGIN'),
              onPressed: () {
                print('LOGIN');
              },
            ),
          ),
          //
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
          ),
          //
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  minimumSize: Size(300, 60),
                  backgroundColor: Color.fromARGB(255, 20, 39, 55)),
              child: Text('CADASTRO'),
              onPressed: () {
                print('CADASTRO');
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
          ),
        ],
      ),
    );
  }
}
