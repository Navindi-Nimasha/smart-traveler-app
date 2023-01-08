import "package:flutter/material.dart";
import "package:dropdown_button2/dropdown_button2.dart";
import 'package:google_nav_bar/google_nav_bar.dart';
import 'shop.dart';

class SListPage extends StatefulWidget {
  const SListPage({super.key});

  @override
  State<SListPage> createState() => _SListPageState();
}

class _SListPageState extends State<SListPage> {
  final List<String> items = [
    'Ampara',
    'Anuradhapura',
    'Badulla',
    'Batticaloa',
    'Colombo',
    'Galle',
    'Gampaha',
    'Hambantota',
    'Jaffna',
    'Kalutara',
    'Kandy',
    'Kegalle',
    'Kilinochchi',
    'Kurunegala',
    'Mannar',
    'Matale',
    'Matara',
    'Monaragala',
    'Mullaitivu',
    'Nuwara Eliya',
    'Polonnarwa',
    'Puttalm',
    'Ratnapura',
    'Trincomalee',
    'Vavuniya',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/shops/shoplibg.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(111, 46, 46, 46), BlendMode.darken),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 155,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Color.fromARGB(151, 78, 78, 78),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 12, 12, 12),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60)),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search here',
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            suffixIcon: Icon(Icons.mic, color: Colors.black),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: Row(
                                children: const [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Select District',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_circle_down_sharp,
                              ),
                              iconSize: 18,
                              iconEnabledColor:
                                  const Color.fromARGB(255, 3, 3, 3),
                              iconDisabledColor: Colors.grey,
                              buttonHeight: 30,
                              buttonWidth: 150,
                              buttonPadding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              buttonDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: Colors.black26,
                                ),
                                color: Colors.white,
                              ),
                              buttonElevation: 2,
                              itemHeight: 30,
                              itemPadding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              dropdownMaxHeight: 200,
                              dropdownWidth: 200,
                              dropdownPadding: null,
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white,
                              ),
                              dropdownElevation: 8,
                              scrollbarRadius: const Radius.circular(40),
                              scrollbarThickness: 6,
                              scrollbarAlwaysShow: true,
                              offset: const Offset(-20, 0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: shops.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      childAspectRatio: 0.75),
                  itemBuilder: (context, index) => ShopCard(shop: shops[index]),
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

class ShopCard extends StatelessWidget {
  final Shop shop;
  //final Function press;
  const ShopCard({
    Key? key,
    required this.shop,
    //required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(18),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(18),
                  child: Image.asset(
                    shop.image,
                    height: 160,
                    width: 160,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                shop.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(right: 9),
            //   child: Icon(
            //     Icons.star_rate,
            //     size: 15,
            //     color: Colors.white,
            //   ),
            // ),
            const Text(
              "Ratings: 4.5",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
