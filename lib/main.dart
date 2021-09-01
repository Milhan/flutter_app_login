import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    double ekranYuksekligi = ekranBilgisi.size.height;
    double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi / 20),
                child: SizedBox(
                    width: ekranGenisligi / 4,
                    height: ekranYuksekligi / 4,
                    child: Image.asset("assets/images/login.png")),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 50),
                child: SizedBox(
                  width: ekranGenisligi / 2,
                  height: ekranYuksekligi / 12,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    onPressed: () {
                      print("Giriş Yapıldı.");
                    },
                    child: Text("GİRİŞ YAP"),
                  ),
                ),
              ),
              Text(
                "Yardım",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        print("FaceBook İle Kaydol");
                      },
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.red,
                      ),
                      label: Text("Facebook İle Kaydol")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      onPressed: () {
                        print("Mail İle Kaydol");
                      },
                      icon: Icon(
                        Icons.mail_outline,
                        color: Colors.red,
                      ),
                      label: Text("Mail İle Kaydol")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
