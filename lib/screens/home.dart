import 'package:flutter/material.dart';
import 'package:online_purchase/screens/animals/animal_details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const String cowImageUrl =
      'https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80';
  static const String goatImageUrl =
      'https://images.unsplash.com/photo-1524024973431-2ad916746881?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z29hdHxlbnwwfHwwfHw%3D&w=1000&q=80';

  static const String sheepImageUrl =
      'https://media.istockphoto.com/photos/sheep-picture-id182344013?k=20&m=182344013&s=612x612&w=0&h=p88NXan9FWkXkB-4MGF9fVC5qQw5irmVhfOs4WZ-H1U=';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2.5;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //গরু
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'গরু',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          //গরু
          SizedBox(
            height: 220,
            child: ListView(
              padding: const EdgeInsets.only(left: 8),
              scrollDirection: Axis.horizontal,
              children: [
                _ProductItem(
                  width: width,
                  imageUrl: cowImageUrl,
                  title: 'গরুর টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: cowImageUrl, title: 'গরুর টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: cowImageUrl,
                  title: 'গরুর টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: cowImageUrl, title: 'গরুর টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: cowImageUrl,
                  title: 'গরুর টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: cowImageUrl, title: 'গরুর টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: cowImageUrl,
                  title: 'গরুর টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: cowImageUrl, title: 'গরুর টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: cowImageUrl,
                  title: 'গরুর টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: cowImageUrl, title: 'গরুর টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          //ছাগল
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'ছাগল',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          //ছাগল
          SizedBox(
            height: 220,
            child: ListView(
              padding: const EdgeInsets.only(left: 8),
              scrollDirection: Axis.horizontal,
              children: [
                _ProductItem(
                  width: width,
                  imageUrl: goatImageUrl,
                  title: 'ছাগল টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: goatImageUrl, title: 'ছাগল টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: goatImageUrl,
                  title: 'ছাগল টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: goatImageUrl, title: 'ছাগল টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: goatImageUrl,
                  title: 'ছাগল টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: goatImageUrl, title: 'ছাগল টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: goatImageUrl,
                  title: 'ছাগল টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: goatImageUrl, title: 'ছাগল টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: goatImageUrl,
                  title: 'ছাগল টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: goatImageUrl, title: 'ছাগল টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          //ভেড়া
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'ভেড়া',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          //ভেড়া
          SizedBox(
            height: 220,
            child: ListView(
              padding: const EdgeInsets.only(left: 8),
              scrollDirection: Axis.horizontal,
              children: [
                _ProductItem(
                  width: width,
                  imageUrl: sheepImageUrl,
                  title: 'ভেড়া টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: sheepImageUrl, title: 'ভেড়া টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: sheepImageUrl,
                  title: 'ভেড়া টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: sheepImageUrl, title: 'ভেড়া টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: sheepImageUrl,
                  title: 'ভেড়া টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: sheepImageUrl, title: 'ভেড়া টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: sheepImageUrl,
                  title: 'ভেড়া টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: sheepImageUrl, title: 'ভেড়া টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
                _ProductItem(
                  width: width,
                  imageUrl: sheepImageUrl,
                  title: 'ভেড়া টাইটেল',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AnimalDetails(
                            imageUrl: sheepImageUrl, title: 'ভেড়া টাইটেল'),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  const _ProductItem({
    Key? key,
    required double width,
    required String imageUrl,
    required String title,
    required VoidCallback onTap,
  })  : width = width,
        imageUrl = imageUrl,
        title = title,
        onTap = onTap,
        super(key: key);

  final double width;
  final String imageUrl, title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width,
        child: Card(
          elevation: 8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16)),
                        child: Image.network(
                          imageUrl,
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Text(
                  'আমরা বাংলায় ওয়েব ডেডলপমেন্ট নিয়ে কাজ করতে গিয়ে প্রথম যে সমস্যাটার মুখোমুখি হই, সেটা হলো, বাংলা ডেমো টেক্সট। ইংরেজির জন্য lorem ipsum তো আছে ।',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
