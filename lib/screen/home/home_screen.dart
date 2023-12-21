import 'package:flutter/material.dart';
import 'package:telegram/utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text("Telegram"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: List.generate(
                    l1.length,
                    (index) => Row(
                          children: [
                            Container(margin: EdgeInsets.all(25),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("${l1[index]["image"]}"),
                              ),
                            ),
                            Text("${l1[index]["name"]}\n${l1[index]["chat"]}",style: TextStyle(color: Colors.white),),

                          ],
                        )),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("assets/image/2.jpg"),
                    ),
                    SizedBox(height: 5,),
                    Text("ANIME_LOVER",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("+91 7859804448",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                   Icon(Icons.dark_mode),
                  SizedBox(width: 12,),
                  Text("Dark Mode",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Icon(Icons.group_add),
                  SizedBox(width: 12,),
                  Text("New Group",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 12,),
                  Text("Contacts",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Icon(Icons.call),
                  SizedBox(width: 12,),
                  Text("Calls",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Icon(Icons.people),
                  SizedBox(width: 12,),
                  Text("People Nearby",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Icon(Icons.favorite,color: Colors.pink,),
                  SizedBox(width: 12,),
                  Text("Liked Message",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 12,),
                  Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(Icons.near_me),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Icon(Icons.person_add_outlined),
                  SizedBox(width: 12,),
                  Text("Invite Friends",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Icon(Icons.help),
                  SizedBox(width: 12,),
                  Text("Telegram Features",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
