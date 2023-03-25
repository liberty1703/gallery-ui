import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key, });
 

  //get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Gallery'),
        backgroundColor: Colors.blue,
      ),
      body:CustomScrollView(
        slivers: [
          SliverPadding(
           padding: const EdgeInsets.all(8),
           sliver: SliverToBoxAdapter(
            child:  Column(
              children: [
                 Align(
                  alignment: Alignment.topLeft,
                  
                  
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset( 'assets/images/hiking.png',
                    height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                    ),
                  )),
                  const SizedBox(height: 10,),
                   Align(
                  alignment: Alignment.topLeft,
                  
                  
                  child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset( 'assets/images/hiking.png',
                    height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                    ),
                  )),
                  const SizedBox(height: 10,),
                   Align(
                  alignment: Alignment.topLeft,
                  
                  
                  child: ClipRRect( borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset( 'assets/images/cardio.png',
                    height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                    ),
                  )),
              ],
            ),
            
           
            
           
           ),
           
           ),
          
        ],
      ) ,
    );
  }
}




    // 'assets/images/care.png'
    //   'assets/images/cardio.png'
    //     'assets/images/hiking.png'


