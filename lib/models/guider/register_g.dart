//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RegisterGPage extends StatelessWidget {
  const RegisterGPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgimagereg.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(186, 42, 48, 40), BlendMode.darken),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                  color: Color.fromARGB(225, 7, 7, 7),
                  gradient: RadialGradient(colors: [
                    Color.fromARGB(113, 56, 54, 54),
                    Color.fromARGB(221, 128, 121, 121),
                    Color.fromARGB(255, 81, 76, 76),
                    Color.fromARGB(239, 8, 8, 8)
                  ], center: Alignment(0.0, -1.6), focalRadius: 6.0),
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
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 90,
                        width: 350,
                        child: Image.asset('assets/images/logon.png'),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: const Text(
                          'Welcome !',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        child: const Text(
                          'Create your account',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 15.0,
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
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: const MyRequestGForm(),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: GNav(
            backgroundColor: const Color.fromARGB(152, 0, 0, 0),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(107, 98, 100, 98),
            padding: const EdgeInsets.all(13),
            tabMargin: const EdgeInsets.all(10),
            onTabChange: (index) {},
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                iconSize: 35,
                text: 'Home',
              ),
              GButton(
                icon: Icons.place_outlined,
                iconSize: 35,
                text: 'Location',
              ),
              // GButton(
              //   icon: Icons.favorite_border_outlined,
              //   text: 'Likes',
              // ),
              GButton(
                icon: Icons.settings_outlined,
                iconSize: 35,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyRequestGForm extends StatefulWidget {
  const MyRequestGForm({super.key});

  @override
  State<MyRequestGForm> createState() => _MyRequestGFormState();
}

class _MyRequestGFormState extends State<MyRequestGForm> {
  final _formKey = GlobalKey<FormState>();

  // show the password or not
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 18, color: Colors.white);
    return Form(
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
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter fullname';
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
                      hintText: 'Full Name',
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
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.name,
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
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid email';
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
                      hintText: 'Email',
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
                            Icons.email_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
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
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your NIC';
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
                      hintText: 'NIC',
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
                            Icons.add_card_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.text,
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
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Date of Birth';
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
                      hintText: 'DOB',
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
                            Icons.cake_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.text,
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
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter contact number';
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
                      hintText: 'Contact Number',
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
                            Icons.contact_phone_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.number,
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
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please attach your clear photo';
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
                      hintText: 'Profile Photo',
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
                            Icons.image_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please attach your license';
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
                      hintText: 'License',
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
                            Icons.attach_file_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please add your guiding places';
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
                      hintText: 'Guiding Places',
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
                            Icons.map_outlined,
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    obscureText: _isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid password';
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
                      hintText: 'Create Password',
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
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
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
                  height: 30,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 56, 78, 56).withOpacity(0.9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: TextFormField(
                    obscureText: _isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please re enter password';
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
                      hintText: 'Re Enter Password',
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
                            color: Color.fromARGB(255, 1, 71, 38),
                            size: 40,
                          ),
                        ),
                      ),
                      hintStyle: textStyle,
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
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
                  height: 20,
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
                            Color.fromARGB(255, 94, 158, 98),
                            Color.fromARGB(255, 69, 132, 71),
                            Color.fromARGB(255, 5, 69, 42)
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
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 41),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Color.fromARGB(255, 235, 241, 237),
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
          ],
        ),
      ),
    );
  }
}
