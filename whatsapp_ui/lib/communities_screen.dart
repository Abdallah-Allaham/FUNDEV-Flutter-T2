import 'package:flutter/material.dart';
import 'package:whatsapp_ui/community_item.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  List<CommunityItem> communities = [
    CommunityItem(
      image: "assets/images/img_2.png",
      groupName: "Community A",
      subCommunities: [
        SubCommunityItem(
          image: "assets/images/img.png",
          name: "Sub Group 1",
          msg: "Whats up",
          time: TimeOfDay(hour: 12, minute: 44),
        ),
        SubCommunityItem(
          image: "assets/images/img.png",
          name: "Sub Group 2",
          msg: "Hello",
          time: TimeOfDay(hour: 18, minute: 26),
        ),
      ],
    ),
    CommunityItem(
      image: "assets/images/img_3.png",
      groupName: "Community B",
      subCommunities: [
        SubCommunityItem(
          image: "assets/images/img_2.png",
          name: "Sub Group 1",
          msg: "Whats up",
          time: TimeOfDay(hour: 12, minute: 44),
        ),
        SubCommunityItem(
          image: "assets/images/img_1.png",
          name: "Sub Group 2",
          msg: "Hello",
          time: TimeOfDay(hour: 18, minute: 26),
        ),
        SubCommunityItem(
          image: "assets/images/img.png",
          name: "Sub Group 3",
          msg: "Whats up",
          time: TimeOfDay(hour: 12, minute: 44),
        ),
      ],
    ),
    CommunityItem(
      image: "assets/images/img.png",
      groupName: "Community C",
      subCommunities: [
        SubCommunityItem(
          image: "assets/images/img_3.png",
          name: "Sub Group 1",
          msg: "Whats up",
          time: TimeOfDay(hour: 12, minute: 44),
        ),
        SubCommunityItem(
          image: "assets/images/img_2.png",
          name: "Sub Group 2",
          msg: "Hello",
          time: TimeOfDay(hour: 18, minute: 26),
        ),
      ],
    ),
    CommunityItem(
      image: "assets/images/img_1.png",
      groupName: "Community D",
      subCommunities: [
        SubCommunityItem(
          image: "assets/images/img.png",
          name: "Sub Group 1",
          msg: "Whats up",
          time: TimeOfDay(hour: 12, minute: 44),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return
    //padding: const EdgeInsets.all(8.0),
    SingleChildScrollView(
      child: Column(
        spacing: 8,
        children: [
          ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey,
                  ),
                  child: Icon(Icons.groups, color: Colors.white, size: 40),
                ),
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Icon(Icons.add, color: Colors.black, size: 16),
                ),
              ],
            ),
            title: Text('New community', style: TextStyle(color: Colors.white)),
          ),
          Divider(),
          ListView.builder(
            itemCount: communities.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                spacing: 8,
                children: [
                   Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            communities[index].image,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        title: Text(
                          communities[index].groupName,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: communities[index].subCommunities.length,
                    itemBuilder: (context, subIndex) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4,
                        ),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                              communities[index].subCommunities[subIndex].image,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          title: Text(
                            communities[index].subCommunities[subIndex].name,
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            communities[index].subCommunities[subIndex].msg,
                          ),
                          trailing: Text(
                            '${communities[index].subCommunities[subIndex].time.hour}:${communities[index].subCommunities[subIndex].time.minute}',
                          ),
                        ),
                      );
                    },
                  ),
                  Divider(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
