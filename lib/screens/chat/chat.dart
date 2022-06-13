import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Text('চ্যাট'),
      ),
      body: Column(
        children: [
          //Chat Body
          Expanded(
            child: ListView(
              children: const [
                MessageBubble(
                    text: 'My message',
                    userId: 'my-uid',
                    downloadUrl: null,
                    timestamp: 'April, 24th 2022'),
                MessageBubble(
                    text:
                        'I am admin. This is the image which you can download by Long press.',
                    userId: 'admin-uid',
                    downloadUrl:
                        'https://media.istockphoto.com/photos/young-black-and-white-cow-heifer-in-a-meadow-looking-in-the-camera-picture-id1319467946?b=1&k=20&m=1319467946&s=170667a&w=0&h=2FuUJG87cC5d2-WXSCVnUStaVcrq3kg2_SP_6xJeerw=',
                    timestamp: 'April, 24th 2022'),
                MessageBubble(
                    text: 'OK, thanks',
                    userId: 'my-uid',
                    downloadUrl: null,
                    timestamp: 'April, 24th 2022'),
              ],
            ),
          ),
          //  Chat actions
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      prefixIcon: Icon(
                        Icons.chat_outlined,
                        color: Colors.blueGrey,
                      ),
                      // hintText: 'Write message'
                    ),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
                GestureDetector(
                  child: SizedBox(
                    width: 50,
                    child: Icon(
                      Icons.attachment_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onTap: () {
                    //TODO: Need to implement file attachment functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Will implement later',
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                    // selectFile();
                  },
                ),
                GestureDetector(
                  child: Icon(
                    Icons.send,
                    size: 56,
                    color: Theme.of(context).primaryColor,
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Will implement later',
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text, timestamp, userId;
  final String? downloadUrl;
  const MessageBubble(
      {Key? key,
      required this.text,
      required this.userId,
      required this.downloadUrl,
      required this.timestamp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: userId == 'my-uid'
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          downloadUrl != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Image.network(downloadUrl!),
                      onLongPress: () async {
                        try {
                          // Saved with this method.
                          var imageId =
                              await ImageDownloader.downloadImage(downloadUrl!);
                          if (imageId == null) {
                            return;
                          }

                          // Below is a method of obtaining saved image information.
                          var fileName =
                              await ImageDownloader.findName(imageId);
                          var path = await ImageDownloader.findPath(imageId);
                          var size =
                              await ImageDownloader.findByteSize(imageId);
                          var mimeType =
                              await ImageDownloader.findMimeType(imageId);

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'চিত্র ডাউনলোড করা হয়েছে।',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                        } on PlatformException catch (error) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'চিত্রটি ডাউনলোড করা হয়নি।',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                    ),
                  ],
                )
              : Container(),
          text.isNotEmpty
              ? Material(
                  borderRadius: userId == 'my-uid'
                      ? const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))
                      : const BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                  elevation: 5,
                  color: userId == 'my-uid'
                      ? Theme.of(context).primaryColor.withOpacity(.7)
                      : Colors.blueGrey.shade700,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text(
                      text,
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                )
              : Container(),
          Text(
            timestamp,
            style: const TextStyle(fontSize: 12, color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
