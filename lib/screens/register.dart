import 'package:flutter/material.dart';
import 'package:ui_login_register/size_config.dart';
import 'package:ui_login_register/constants.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize * 5,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * 3,
                        right: SizeConfig.defaultSize * 3),
                    child: Form(
                      child: Container(
                        margin:
                            EdgeInsets.only(top: SizeConfig.defaultSize * 20),
                        padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * 6,
                            bottom: SizeConfig.defaultSize * 2,
                            left: SizeConfig.defaultSize * 2,
                            right: SizeConfig.defaultSize * 2),
                        height: SizeConfig.defaultSize * 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: primaryColor),
                                prefixIcon: Icon(
                                  Icons.mail,
                                  size: SizeConfig.defaultSize * 2,
                                  color: primaryColor,
                                ),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: primaryColor)),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize * 2,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: primaryColor),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: SizeConfig.defaultSize * 2,
                                  color: primaryColor,
                                ),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: primaryColor)),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize * 2,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Fullname',
                                labelStyle: TextStyle(color: primaryColor),
                                prefixIcon: Icon(
                                  Icons.person,
                                  size: SizeConfig.defaultSize * 2,
                                  color: primaryColor,
                                ),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: primaryColor)),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize * 2,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                child: Text(
                                  'Forgot your password?',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                onTap: () {},
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize * 2,
                            ),
                            ButtonTheme(
                              height: SizeConfig.defaultSize * 5,
                              minWidth: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: primaryColor,
                                hoverColor: textColor,
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize * 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Have an account? ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    widget.toggleView();
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: SizeConfig.defaultSize * 17),
                    height: SizeConfig.defaultSize * 5,
                    width: SizeConfig.defaultSize * 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 6,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Jobseeker App',
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
