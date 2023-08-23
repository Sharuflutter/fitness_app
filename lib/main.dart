import 'package:fitness_app/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        useMaterial3: true,
      ),
      home: const MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [
        Stack(
         children: [
           IconButton(
               onPressed: (){
                 print("Bell Button is Pressed");
               },
               icon: Icon(Icons.notifications,size: 25,color: Colors.grey,)),
           Positioned(
             right: 16,
             top: 16,
             child: Container(
               height: 8,
               width: 8,
               decoration: const BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.orange,
               ),
             ),
           ),

         ],
        ),
        // IconButton(
        //     onPressed: (){
        //       print("Bell Button is Pressed");
        //     },
        //     icon: FaIcon(FontAwesomeIcons.bell,size: 15,color: Colors.grey,)),
        IconButton(
            onPressed: (){
              print("User Button is Pressed");
            },
            icon:Icon(Icons.person,size: 25,color: Colors.grey,)),
        SizedBox(width:10),

      ],
        title: Text(widget.title,),
      ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(

              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        height: 36,
                        width: 36,
                        child: Icon(Icons.home,color: Colors.white,),
                      )),
                  GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        height: 36,
                        width: 36,
                        child: Icon(Icons.search,color: Colors.white ),
                      )),
                  GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        height: 36,
                        width: 36,
                        child: Icon(Icons.add,color: Colors.white),
                      )),
                  GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        height: 36,
                        width: 36,
                        child: Icon(Icons.add_shopping_cart,color: Colors.white),
                      )),
                  GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        height: 36,
                        width: 36,
                        child: Icon(Icons.person,color: Colors.white),
                      ))

                ],

              ),
            ),
          ),
        ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("Store",
                style:TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800
            )),
          ),
          imageCard(img:"assets/exe1.jpg"),
          imageCard(img:"assets/exe2.jpg"),
          imageCard(img:"assets/exe3.jpg"),



        ],
      )

    );
  }
}
 Widget imageCard({required String img}){
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: ClipRRect(
       borderRadius: BorderRadius.circular(21),
       child: Image.asset(img,
         height: 193,
         width: 400,
         fit: BoxFit.fill,
       ),

     ),
   );
 }