import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class sc2 extends StatefulWidget {
  const sc2({super.key});

  @override
  State<sc2> createState() => _sc2State();
}

class _sc2State extends State<sc2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://i.pinimg.com/564x/5b/64/77/5b647737de6d0e1f88daba72beffc7f2.jpg"),
          ),
        ),
        child: Column(
          children: [
            Divider(height: 200),
            Text(
              "Dream",
              style: TextStyle(
                  fontSize: 50, color: Color.fromARGB(255, 157, 34, 188)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  label: Text("Search Dream or type a URL"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ),
            ),
            
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 150, 87, 239),
                ),
                onPressed: (() {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  });
                }),
                child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
