import 'package:flutter/material.dart';
import 'package:whatsapp_ui/call_item.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  List<CallItem> calls = [
    CallItem(
      image: "assets/images/img.png",
      name: "Abood",
      time: DateTime.now(),
    ),
    CallItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      time: DateTime(2000, 5, 10, 12, 30),
    ),
    CallItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      time: DateTime(2000, 7, 15, 18, 45),
    ),
    CallItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      time: DateTime(2000, 2, 20, 9, 15),
    ),
    CallItem(
      image: "assets/images/img.png",
      name: "Abood",
      time: DateTime.now(),
    ),
    CallItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      time: DateTime(2000, 5, 10, 12, 30),
    ),
    CallItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      time: DateTime(2000, 7, 15, 18, 45),
    ),
    CallItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      time: DateTime(2000, 2, 20, 9, 15),
    ),
    CallItem(
      image: "assets/images/img.png",
      name: "Abood",
      time: DateTime.now(),
    ),
    CallItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      time: DateTime(2000, 5, 10, 12, 30),
    ),
    CallItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      time: DateTime(2000, 7, 15, 18, 45),
    ),
    CallItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      time: DateTime(2000, 2, 20, 9, 15),
    ),
  ];

  // this idea from stackoverflow
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Favorites",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                "Add Favorite",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              subtitle: Text("Tap to add status update"),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,),
                child: Icon(Icons.favorite, color: Colors.black)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recent Updates',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: calls.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      calls[index].image,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  title: Text(
                    calls[index].name,
                    style: TextStyle(
                      color: index % 3 == 0 ? Colors.white : Colors.red,
                    ),
                  ),
                  subtitle: Row(
                    spacing: 8,
                    children: [
                      index % 3 == 0
                          ? Icon(
                            Icons.call_made_outlined,
                            color: Colors.green,
                            size: 16,
                          )
                          : Icon(
                            Icons.call_received_outlined,
                            color: Colors.red,
                            size: 16,
                          ),
                      Text(
                        "${calls[index].time.day} ${months[calls[index].time.month - 1]}, ${calls[index].time.hour}:${calls[index].time.minute} ",
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.call_outlined, color: Colors.white),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
