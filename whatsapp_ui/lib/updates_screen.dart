import 'package:flutter/material.dart';
import 'package:whatsapp_ui/update_item.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  List<UpdateItem> updates = [
    UpdateItem(
      image: "assets/images/img.png",
      name: "Abood",
      time: TimeOfDay(hour: 12, minute: 44),
    ),
    UpdateItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      time: TimeOfDay(hour: 5, minute: 20),
    ),
    UpdateItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      time: TimeOfDay(hour: 10, minute: 16),
    ),
    UpdateItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      time: TimeOfDay(hour: 3, minute: 30),
    ),
    UpdateItem(
      image: "assets/images/img.png",
      name: "Abood",
      time: TimeOfDay(hour: 12, minute: 44),
    ),
    UpdateItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      time: TimeOfDay(hour: 5, minute: 20),
    ),
    UpdateItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      time: TimeOfDay(hour: 10, minute: 16),
    ),
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
              child: Text("Status", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(
              title: Text("My Status", style: TextStyle(color: Colors.white, fontSize: 16),),
              subtitle: Text("Tap to add status update",),
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      shape: BoxShape.circle,
                      color: Colors.grey,),
                    child: Icon(Icons.person, color: Colors.white, size: 40),
                  ),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1),
                      shape: BoxShape.circle,
                      color: Colors.green,),
                    child: Icon(Icons.add, color: Colors.black,size: 16,),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Recent Updates', style: TextStyle(color: Colors.grey)),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: updates.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipOval(
                    child: Image.asset(updates[index].image, width: 50, height: 50),
                  ),
                  title: Text(updates[index].name, style: TextStyle(color: Colors.white)),
                  subtitle: Text('${updates[index].time.hour}:${updates[index].time.minute}'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
