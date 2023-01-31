import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_launcher/url_launcher.dart';

import 'firebase_options.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sandeep',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF1454B2),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});//, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

 // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(

       // decoration: const BoxDecoration(
       //     gradient: LinearGradient(
       //         begin: Alignment.topLeft,
       //         end: Alignment.bottomRight,
       //         colors: [Colors.purple, Colors.orange])),

       margin: EdgeInsets.all(50),
       child: Column(
        children:  [
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: ClipOval(
               child: Image.asset('assets/logo.png', height: 150.0, width: 150.0, fit: BoxFit.cover,)
              ),
            ),
          ),

         const  Center(
            child: Text(
              'Sandeep Singh',
              style: TextStyle(fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: _gitURL,
                    child: Image.asset('assets/github.png', width: 50.0, height: 50.0, fit: BoxFit.cover,),
                    ),
                  ),
                  ),
              ),

              Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: _faceURL,
                      child: Image.asset('assets/facebook.png', width: 50.0, height: 50.0, fit: BoxFit.cover,),
                    ),
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: _instURL,
                      child: Image.asset('assets/instagram.png', width: 50.0, height: 50.0, fit: BoxFit.cover,),
                    ),
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: _gitURL,
                      child: Image.asset('assets/linkedin.png', width: 50.0, height: 50.0, fit: BoxFit.cover,),
                    ),
                  ),
                ),
              ),

              ],
                ),

          Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0),),
              Container(
                margin: EdgeInsets.all(10.0),
                 width: 750.0,
                  height: 60.0,
                 child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Java Coding',style: TextStyle(fontSize: 15.0),),
                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  ),
              ),

              Container(
                margin: EdgeInsets.all(10.0),
                width: 750.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Android Dev',style: TextStyle(fontSize: 15.0),),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10.0),
                width: 750.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Gaming',style: TextStyle(fontSize: 15.0),),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10.0),
                width: 750.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Watch Anime',style: TextStyle(fontSize: 15.0),),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ),



            ],
          ),


            ],
          ),
      ),
    );
  }

  _gitURL() async {
     var url = Uri.parse('https://github.com/Sandeep-coder-app');
        if(await canLaunchUrl(url)) {
          await launchUrl(url);
        }else {
          throw 'Could not launch %url';
        }
  }

  _faceURL() async {
  var url = Uri.parse('https://www.facebook.com/profile.php?id=100021822726518');
  if(await canLaunchUrl(url)) {
  await launchUrl(url);
  }else {
  throw 'Could not launch %url';
  }
}

   _instURL()  async {
     var url = Uri.parse('https://www.instagram.com/sk3356337/');
     if(await canLaunchUrl(url)) {
       await launchUrl(url);
     }else {
       throw 'Could not launch %url';
     }
   }
}
