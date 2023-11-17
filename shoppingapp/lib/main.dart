// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api, library_private_types_in_public_api, library_private_types_in_public_api

import 'package:flutter/material.dart';

class womanwear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Womens Wear',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/w1.jpg',
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Women Printed Shirt',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.500'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/w2.jpg',
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Women Black T-shirt',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.1000'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/w3.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Kurta Pant Set',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.900'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/w4.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Women Full Dress',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.800'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/w5.png',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Sort Dress Blue',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.1500'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/w3.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Women Sort Dress',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.2000'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]))),
    );
  }
}

class menswear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Mens Wear',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/m1.jpg',
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Men Light Jenas',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.400'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/m2.jpg',
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'T-Shirt and Jeans',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.2000'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/m3.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Men Jacket',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.1000'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/m4.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Long Sleeve T-shirt',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.1200'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/m5.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Men Printed Shirt',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.500'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/m6.png',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'T-Shirt For Men',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.200'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]))),
    );
  }
}

class kidswear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Kids Wear',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/c1.jpg',
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Boys Shirt with T-shirt',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.500'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/c2.jpg',
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Top For Girl',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.2000'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/c3.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Girls T-shirt',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.200'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/c4.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Boys Winter T-shirt',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.1000'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/c5.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Girls Frock',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.800'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                width: 150, // Width of the box
                height: 200, // Height of the box
                decoration: BoxDecoration(
                  // color: Colors.blue, // Color of the box
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 232, 232), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/c6.jpg',
                        height: 130,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150, // Width of the vertical line
                      height: 1, // Height of the vertical line
                      color: Color.fromARGB(
                          255, 237, 232, 232), // Color of the vertical line
                    ),
                    Text(
                      'Girls Printed Frock',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Rs.500'),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 190, 48,
                              38), // Set the color of the icon here
                          size: 20, // Set the size of the icon if needed
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]))),
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [womanwear(), menswear(), kidswear()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Saving Store',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Color.fromARGB(255, 78, 77, 77),
          ),
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.woman),
                label: 'Woman',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.man),
                label: 'Men',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.child_care_outlined),
                label: 'Kids',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
