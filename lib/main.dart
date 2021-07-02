import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*import 'dart:async';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';*/
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(primarySwatch:Colors.amber),
      home: Scaffold(appBar: AppBar(title: Row(
        children: [
          Text('Coffee is Waiting',style: TextStyle(color: Colors.brown,fontSize: 20,fontWeight:FontWeight.w900,fontStyle:FontStyle.italic  ), ),
          Container(child: Row(
            children: [

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(child: Icon(Icons.coffee,size: 28,)),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(child: Icon(Icons.home,size:28)),
              ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(child: Icon(Icons.logout,size:28)),
            )
            ],
          ),margin:const EdgeInsets.only(left:60.0))
        ],
      )
        ,)
       ,drawer: Drawer(
          child:Column(
            children: [
              Container(
                alignment: Alignment(2.0,0.0),
                height: 80,
                decoration: BoxDecoration(color: Colors.amber),
                child: ListTile(
                  title:  Container(margin: const EdgeInsets.only(top:20.0),
                      child: Text('Welcome to Coffee House',style:TextStyle(fontSize: 18,color:Colors.brown,fontWeight: FontWeight.bold) )),
                  trailing: Icon(Icons.coffee_outlined,color:Colors.brown),
                  subtitle: Container(margin: const EdgeInsets.only(left: 50.0),child: Text('~ Taste of Real Coffee',style:TextStyle(fontStyle: FontStyle.italic),textDirection:TextDirection.ltr,)),
                ),
              ),
             const Divider(
               height: 10.0,
               thickness: 10.0,

               color:  Colors.brown,

             ),
              ListTile(
                title:Text('Catalogue', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                trailing: Icon(Icons.category,color: Colors.amber,),
              ),
              const Divider(
                height: 10.0,
                thickness: 2.0,

                color:  Colors.brown,
                endIndent: 20.0,
              ),
              ListTile(
                title:Text('Profile', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                trailing: Icon(Icons.person,color: Colors.amber,),
              ),
              const Divider(
                height: 10.0,
                thickness: 2.0,

                color:  Colors.brown,
                endIndent: 20.0,
              ),
              ListTile(
                title:Text('About us', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                trailing: Icon(Icons.help,color: Colors.amber,),
              ),
              const Divider(
                height: 10.0,
                thickness: 2.0,

                color:  Colors.brown,
                endIndent: 20.0,
              ),
            ],
          )
        )
        ,body: Center(
          child:  Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.brown),
            child: ListView(
              children: [
                Align(alignment: Alignment.topCenter,
                    child: Container(margin: const EdgeInsets.only(top:60.0),

                        child: Image.asset('assests/coffetruck.jpg'))),
                Container(
                  margin: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      ElevatedButton(onPressed: (){}, child: Row(
                        children: [
                          Text('Login ',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w900),),
                          Icon(Icons.login,color:Colors.brown)
                        ],
                      ),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                      ),
                      ElevatedButton(onPressed: (){}, child: Row(
                        children: [
                          Text('Register '),
                          Icon(Icons.app_registration,color:Colors.brown)
                        ],
                      ),
                     style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)) )
                    ],
                  ),
                )
             ,Container(
                  width: 100,
               child: ElevatedButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center
                 , children: [
                   Text('Login with facebook  '),
                   Icon(Icons.facebook,color:Colors.white)
                 ],
               ),
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.blue[300])),
                  ),
             ),
             Image.asset('assests/coffee.jpg') ],
            ),
          ),

        ),),
    );
  }
}