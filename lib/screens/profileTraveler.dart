import 'package:flutter/material.dart';

class ProfileTraveler extends StatelessWidget {
  const ProfileTraveler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 83, 19).withOpacity(0.8),
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                width: 400,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/homepage_new/bella.jpg',
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 15, 83, 19)),
                            child: Icon(
                              Icons.edit,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Dilshan Beligala",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "beligaladilshan@gmail.com",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // SizedBox(
                    //   width: 150,
                    //   child: ElevatedButton(
                    //     style: ButtonStyle(
                    //         backgroundColor: MaterialStateProperty.all(
                    //             Color.fromARGB(255, 15, 83, 19)
                    //                 .withOpacity(0.8))),
                    //     onPressed: () {},
                    //     child: Text(
                    //       "Edit Profile",
                    //       style: TextStyle(fontSize: 17),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.phone_android,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "0755772582",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Icon(
                          Icons.logout_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Log Out",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}
