import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.add, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Image.asset(
                'assets/images/profile_pic.png',
                width: 100,
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                'Sabrina Carpenter',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: whiteColor,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Travel Freelancer',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: lightBlueColor,
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Text('Friends', style: titleTextStyle),
                      ChatTile(
                        imageUrl: 'assets/images/friend1_pic.png',
                        name: 'Joshuer',
                        text: 'Sorry, you’re not my ty...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2_pic.png',
                        name: 'Gabriella',
                        text: 'I saw it clearly and mig...',
                        time: '2:30',
                        unread: false,
                      ),
                      SizedBox(height: 30),
                      Text('Groups', style: titleTextStyle),
                      ChatTile(
                        imageUrl: 'assets/images/jf_icon.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        time: '11:11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/a_icon.png',
                        name: 'Angga',
                        text: 'Here here we can go...',
                        time: '7:11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/b_icon.png',
                        name: 'Bentley',
                        text: 'The car which does not...',
                        time: '7:11',
                        unread: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
