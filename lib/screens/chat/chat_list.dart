import 'package:flutter/material.dart';
import 'package:online_purchase/screens/chat/chat.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);
  static const String cowImageUrl =
      'https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80';
  static const String goatImageUrl =
      'https://images.unsplash.com/photo-1524024973431-2ad916746881?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z29hdHxlbnwwfHwwfHw%3D&w=1000&q=80';

  static const String sheepImageUrl =
      'https://media.istockphoto.com/photos/sheep-picture-id182344013?k=20&m=182344013&s=612x612&w=0&h=p88NXan9FWkXkB-4MGF9fVC5qQw5irmVhfOs4WZ-H1U=';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('চ্যাট সমূহ'),
        ),
        body: ListView(
          children: [
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    cowImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    goatImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    sheepImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    cowImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    goatImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    sheepImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    cowImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    goatImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    sheepImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    cowImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    goatImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    sheepImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    cowImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    goatImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Chat(),
                ));
              },
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    sheepImageUrl,
                  ),
                ),
              ),
              title: const Text(
                'Title name depending on Product and Username',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                'Sub title is last typed or received message',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Text('6:53 pm'),
            ),
          ],
        ));
  }
}
