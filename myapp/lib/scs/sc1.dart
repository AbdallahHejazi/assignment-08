import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/scs/sc2.dart';


class sc1 extends StatefulWidget {
  const sc1({super.key});

  @override
  State<sc1> createState() => _sc1State();
}

class _sc1State extends State<sc1> {
  

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();
    

    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 203, 146, 249 )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://i.pinimg.com/564x/89/78/cd/8978cd4a6b2efbd479d4e23639bcdaac.jpg"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),


            Form(
              key: formstate,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
              
                      decoration: InputDecoration(
                      
                        hintMaxLines: 1,
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 83, 83, 83), fontSize: 15),
                        enabledBorder: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 203, 146, 249),
                          ),
                        ),
                        // hintText: "enter your email ",
                      ),
                      validator: (text) {

                        
                        if (text! == "abd@gmail.com") {
                          return null;
                        }
                        return " email not valid ";
                      },
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 203, 146, 249),
                          ),
                        ),
                        // hintText: "enter your password ",
                        hintMaxLines: 1, prefixIcon: Icon(Icons.lock),

                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 91, 91, 91), fontSize: 15),
                      ),
                       validator: (text) {
                         if (text == "1234") {
                         return null;
                         
                         }
                         return "incorrect password";
                       },
                    ),
                  ),
                  RaisedButton(
                  
                    color: Color.fromARGB(255, 249, 192, 230),
                    onPressed: () {
                      var formdata = formstate.currentState;

                      if (formdata!.validate()) {

                          print(" valid");
                        setState(() {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) {
                            return MyApp();
                          }));
                        });
                      } else {
                        print("not valid");
                        
                      }
                    },
                    child: Text("Go!",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),

            ElevatedButton(
            
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 177, 177, 177),
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
