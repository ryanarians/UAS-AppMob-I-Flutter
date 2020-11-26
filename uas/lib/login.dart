import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _ctrlpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        color: Color(0xff283363),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.black45,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('img/logo.jpg'))),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Log In",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: TextFormField(
                        decoration: new InputDecoration.collapsed(
                            hintText: 'Email Address'),
                        validator: (val) => (val.length == 0
                            ? 'Email Address Wajib di Isi!'
                            : null),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: TextFormField(
                        controller: _ctrlpassword,
                        obscureText: true,
                        decoration:
                            new InputDecoration.collapsed(hintText: 'Password'),
                        validator: (val) =>
                            (val.length == 0 ? 'Password Wajib di Isi!' : null),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Material(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xff00818b),
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    if (_formKey.currentState.validate()) {}
                  },
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Register Here",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
