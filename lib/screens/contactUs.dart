import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/contactus/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor:
                const Color.fromARGB(255, 15, 83, 19).withOpacity(0.8),
            leading: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: const Icon(Icons.arrow_back)),
            title: const Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text(
                "Contact Us",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.call,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '070 5555555',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'smarttraveler.contacts@gmail.com',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.location_city,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'No. 900, Main road,Kottawa',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        'Pannipitiya',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
