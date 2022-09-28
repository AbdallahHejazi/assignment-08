import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/scs/sc1.dart';
import 'package:myapp/scs/sc2.dart';

void main() {
  runApp(MaterialApp(home:MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar( 
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(8.0),
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    
                      "https://i.pinimg.com/564x/40/71/53/4071538e92e301133bb5d3135a3b3594.jpg"),
             
                ),

              ),
          ),

      Text("Discover Your Dream " ,style: TextStyle(fontSize: 30),),
      Text("learn more about it " ,style: TextStyle(fontSize: 15),),
      Divider(height: 50),
         Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ElevatedButton.icon(
                icon: Icon(
                  color: Colors.white,
                  Icons.star,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    onPrimary:Colors.white,
                    primary: Color.fromARGB(255, 250, 176, 213),
                  ),
                label: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return sc1();
                    }));
                  });
                }),
 
                  ElevatedButton.icon(
                icon: Icon(
                  color: Color.fromARGB(255, 67, 67, 67),
                  Icons.search,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(255, 67, 67, 67),
                    primary: Color.fromARGB(255, 231, 231, 231),
                    ),
                label: Text(
                  "search",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return sc2();
                    }));
                  });
                }),

          ],
         ),
            
          ]),
        ),

      
      );
  }
}
