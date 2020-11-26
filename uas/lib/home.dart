import 'package:flutter/material.dart';
import 'package:uas/login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        color: Colors.deepPurple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Excited?!",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'manjari'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "You should be!!",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'manjari'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Sign in if you already have an account with us",
              style: TextStyle(
                fontSize: 13.5,
                fontFamily: 'manjari',
                color: Colors.white70,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Material(
                borderRadius: BorderRadius.circular(100),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'manjari',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Or sign up if you are new !",
              style: TextStyle(
                fontSize: 13.5,
                fontFamily: 'manjari',
                color: Colors.white70,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Material(
                borderRadius: BorderRadius.circular(100),
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {},
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'manjari',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
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
