import 'package:flutter/material.dart';

import 'galleryscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GalleryScreen()),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200,
                          ),
                          width: 500,
                          height: 450,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.add_photo_alternate_sharp,
                                size: 50.0,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Add new files',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                            
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      width: 500,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8
                           ), 
                            
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Your storage',
                                  style: TextStyle(
                                    color: Colors.blue.shade600,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(width: 230),
                                const Text(
                                  '25% left',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height:5,),
                            Text('75 GB of 100 GB are used',
                               style: TextStyle(
                                    color: Colors.blue.shade600,
                                    fontSize: 18,
                                  ),
                              ),
                            

                           const SizedBox(height: 5),
                               ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SizedBox(
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 0.75,
                                    color: Colors.blue.shade800,
                                    backgroundColor: Colors.grey.shade400,
                                    
                                  ),
                                ),
                              ),
                            
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 500,
                      height: 420,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your shared folders',
                              style: TextStyle(
                                color: Colors.blue.shade700,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.all(8.0,),
                              child: Container(
                                width: 500,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.greenAccent.shade100,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    8.0,
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: const [
                                        Text(
                                          'Keynote files',
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 250,
                                        ),
                                        CircleAvatar(
                                          radius: 25.0,
                                          backgroundColor: Colors.white,
                                          foregroundImage: AssetImage(
                                              'assets/images/care.png'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                             Padding(
                              padding:
                                  const EdgeInsets.all(8.0,),
                              child: Container(
                                width: 500,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                   color: Colors.purple.shade100,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    8.0,
                                  ),
                                  child: Center(
                                    child: Row(
                                      children:  [
                                        const Text(
                                          'Vacations photos',
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 20),
                                        ),
                                         const SizedBox(
                                          width: 220,
                                        ),
                                        
                                           Stack(
                                          children: const <Widget>[
                                            CircleAvatar(
                                              radius: 25.0,
                                              backgroundColor: Colors.white,
                                              foregroundImage: AssetImage(
                                                  'assets/images/hiking.png'),
                                            ),
                                            
                                           Positioned (
                                            left:25,
                                              child: CircleAvatar(
                                                radius: 25.0,
                                                backgroundColor: Colors.white,
                                                foregroundImage: AssetImage(
                                                    'assets/images/cardio.png'),
                                              ),
                                            ),
                                          ],
                                        ),

                                       
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                                 
                            Padding(
                              padding:
                                  const EdgeInsets.all(8.0),
                              child: Container(
                                width: 500,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.pink.shade100,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    8.0,
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: const [
                                        Text(
                                          'Project report',
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 250,
                                        ),
                                        CircleAvatar(
                                          radius: 25.0,
                                          backgroundColor: Colors.white,
                                          foregroundImage: AssetImage(
                                              'assets/images/cardio.png'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.all(2),
                              child: Center(
                                child: Container(
                                  width: 400,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade100,
                                      border: Border.all(
                                          color: Colors.grey.shade400)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.add,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'Add more',
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
