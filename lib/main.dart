import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE1F5FE),
        body: Center(
          child: Stack(
            children: [
              Container(
                color: Color(0xFFE1F5FE), // Blue background
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                top: 0, // Adjust the top position of the first rectangle
                left: 0, // Adjust the left position of the first rectangle
                child: Container(
                  width: 410, // Set the width of the first rectangle
                  height: 280, // Set the height of the first rectangle
                  decoration: BoxDecoration(
                    color: Colors.white, // Set color to white
                    borderRadius: BorderRadius.circular(20), // Set rounded corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20), // Add spacing
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -50, // Adjust the bottom position of the second rectangle
                right: 0, // Adjust the right position of the second rectangle
                child: Container(
                  width: 410, // Set the width of the second rectangle
                  height: 500, // Set the height of the second rectangle
                  decoration: BoxDecoration(
                    color: Colors.white, // Set color to white
                    borderRadius: BorderRadius.circular(20), // Set rounded corners
                  ),
                ),
              ),
              Positioned(
                top: 30, // Adjust the top position of the text
                left: 20, // Adjust the left position of the text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Посуточная аренда', // First two words
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      'недвижимости', // Third word
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(height: 10), // Add spacing between the title and the container
                    Container(
                      width: 370, // Set the width of the container
                      height: 120, // Set the height of the container
                      decoration: BoxDecoration(
                        color: Color(0xFFE1F5FE), // Set color to match the background
                        borderRadius: BorderRadius.circular(20), // Set rounded corners
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 20, height: 50,), // Adjusted height of SizedBox
                              Icon(
                                Icons.language,
                                size: 30,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 10), // Add spacing between icon and text
                              Text(
                                'Где арендовать', // Text for the globe icon
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 20,
                            child: Divider(
                              color: Colors.grey, // Set color to grey
                              thickness: 1, // Set thickness of the divider
                              indent: 20, // Set indent of the divider
                              endIndent: 20, // Set end indent of the divider
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 20, height: 50,), // Adjusted height of SizedBox
                              Icon(
                                Icons.access_time,
                                size: 30,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 10), // Add spacing between icon and text
                              Text(
                                'Когда', // Text for the globe icon
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 70), // Add spacing between the title and the container
                    Container(
                      width: 370, // Set the width of the container
                      height: 120, // Set the height of the container
                      decoration: BoxDecoration(
                        color: Color(0xFFE1F5FE), // Set color to match the background
                        borderRadius: BorderRadius.circular(20),
                        // Set rounded corners
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                            children: [
                              SizedBox(width: 20, height: 50,), // Adjusted height of SizedBox
                              Icon(
                                Icons.home_filled,
                                size: 40,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 20, height: 30,), // Adjusted height of SizedBox
                              Text(
                                'Мои заселения', // Text for the globe icon
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,

                              ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 20, height: 30,), // Adjusted height of SizedBox
                              Text(
                                'Предстоящие и предыдущие', // Text for the globe icon
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,

                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.key_sharp) ,
              label: 'Снять',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock),
              label: 'Сдать',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}
