import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false, //menghilangkan watermark
  home: home(), //halaman yang akan ditampilkan pertama ketika di run
));

class home extends StatelessWidget {
  const home({ Key? key }) : super( key: key );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, //diatur sesuai lebar layar
        height: MediaQuery.of(context).size.height , //diatur sesuai tinggi layar
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/beg.jpg"),
          fit: BoxFit.cover,
          )
        ),

        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width, 
              height: MediaQuery.of(context).size.shortestSide, //tinggi menyesuaikan isi konten
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                color: Colors.white.withOpacity(0.9) , // Warna dengan alpha 150
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage("assets/images/photo.jpg"),
                        ),
                        Text("Salma Hayya",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text("Vocational High School Student at SMK Wikrama Bogor",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        }, child: Text('See More',
                        style: TextStyle(color: Colors.blue),
                        ),
                        )
                      ],
                    ),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
