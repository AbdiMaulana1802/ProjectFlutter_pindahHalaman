
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    title: 'Routing Navigation',
    initialRoute: '/',

    routes: {
      '/': (context) => HalamanPertama(),
      HalamanaKedua.routeName : (context) => HalamanaKedua(),
      HalamanKetiga.routeName : (context) => HalamanKetiga(),
    },

  ));
}

class HalamanPertama extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pertama'),
      ),

      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text('Pindah Halaman kedua'),
              onPressed:(){
                Navigator.pushNamed(context, HalamanaKedua.routeName);
              },
            ),


            RaisedButton(
              child: Text('PIndah Halaman Ketiga'),
              onPressed: (){
                Navigator.pushReplacementNamed(context, HalamanKetiga.routeName);
              },
            ),

          ],
        ),
      ),
    );
      
  }
}



class HalamanaKedua extends StatelessWidget {

  static const String routeName = "/halamankedua";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Kedua"),
      ),

      body: Center(
        child: RaisedButton(
          child: Text('Kembali'),
          onPressed: () {
            Navigator.pop(context);

          },
        ),
      ),
    );
  }
}

class HalamanKetiga extends StatelessWidget {
  static const String routeName = "/halamanketiga";

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Ketiga"),
      ),

      body: Center(
        child: Text('Halaman Ketiga'),
      ),
    );
  }

  
}