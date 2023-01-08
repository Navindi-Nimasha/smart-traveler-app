import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import '../models/guider/register_g.dart';
import 'Registeras.dart';
import 'homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgimage.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(62, 126, 126, 126), BlendMode.darken),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 280,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    color: Color.fromARGB(180, 67, 66, 66),
                    // gradient: RadialGradient(colors: [
                    //   Color.fromARGB(255, 216, 202, 202),
                    //   Color.fromARGB(221, 150, 133, 133),
                    //   Color.fromARGB(255, 112, 104, 104),
                    //   Color.fromARGB(239, 8, 8, 8)
                    // ], center: Alignment(0.0, -1.6), focalRadius: 6.0),
                  ),
                  child: Center(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 25),
                          height: 80,
                          width: 350,
                          child: Image.asset('assets/images/logon.png'),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: const Text(
                            'Welcome Back !',
                            style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: const Text(
                            'Login to your account.',
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white,
                              //height: 0.00001,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const MyLoginForm(),
              ],
            ),
          ),
          // bottomNavigationBar: const GNav(
          //   backgroundColor: Color.fromARGB(179, 18, 66, 33),
          //   color: Colors.white,
          //   activeColor: Colors.white,
          //   tabBackgroundColor: Color.fromARGB(164, 12, 39, 14),
          //   padding: EdgeInsets.all(13),
          //   tabMargin: EdgeInsets.all(10),
          //   // onTabChange: (index) {
          //   //   print(index);
          //   // },
          //   tabs: [
          //     GButton(
          //       icon: Icons.home_outlined,
          //       iconSize: 35,
          //       text: 'Home',
          //     ),
          //     GButton(
          //       icon: Icons.place_outlined,
          //       iconSize: 35,
          //       text: 'Location',
          //     ),
          //     // GButton(
          //     //   icon: Icons.favorite_border_outlined,
          //     //   text: 'Likes',
          //     // ),
          //     GButton(
          //       icon: Icons.settings_outlined,
          //       iconSize: 35,
          //       text: 'Settings',
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

class MyLoginForm extends StatefulWidget {
  const MyLoginForm({super.key});

  @override
  State<MyLoginForm> createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  final _formKey = GlobalKey<FormState>();

  // show the password or not
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 18, color: Colors.white);
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 76, 95, 76).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid email';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'E-mail',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.person_outline_rounded,
                            color: Color.fromARGB(255, 76, 95, 76),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 76, 95, 76).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    obscureText: _isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: const Color.fromARGB(255, 119, 158, 119)
                      //     .withOpacity(0.9),
                      contentPadding:
                          const EdgeInsets.only(top: 13, bottom: 13),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                      //   borderRadius: BorderRadius.circular(60),
                      //),
                      hintText: 'Password',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(255, 76, 95, 76),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    //borderRadius; BorderRadius.circular(80.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 154, 231, 161),
                            Color.fromARGB(255, 33, 134, 36),
                            Color.fromARGB(255, 1, 116, 68)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      color: Colors.green,
                      //borderRadius; BorderRadius.circular(80.0),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                        ),
                      ),
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const HomePage(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ],
                          ),
                        ),
                        //icon: Icon(Icons.arrow_circle_down_outlined),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'New here? ',
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign up',
                          style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17,
                              color: Colors.white),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterAs()));
                              // navigateToRequestGPage(context);
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future navigateToRequestGPage(context) async {
    return Navigator.push(context,
        MaterialPageRoute(builder: (context) => const RegisterGPage()));
  }
}

// class MyBNavBar extends StatefulWidget {
//   const MyBNavBar({super.key});

//   @override
//   State<MyBNavBar> createState() => _MyBNavBarState();
// }

// class _MyBNavBarState extends State<MyBNavBar> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home_outlined),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.place_outlined),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.favorite_border_outlined),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.settings_outlined),
//           label: 'Home',
//         ),
//       ],
//     );
//   }
// }
