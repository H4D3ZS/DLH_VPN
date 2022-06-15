import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //VPN Data Sent and Received Variables
  int nDataSent = 0;
  dynamic nDataRcvd = 0;
  List netListName = [
    'Country Name',
    'Network Connection',
    'Server Name',
  ];

  //
  void btnNetworkSelection() {
    //implementation of vpn network here

    print("Button For Connection");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demon Lord Hagalaz  VPN"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Expanded(
                child: Text("Network Selected : ${netListName[2]} "),
              ),
            ),
            ElevatedButton(
              onPressed: btnNetworkSelection,
              child: Text("Connect"),
            ),

            //Received and Sent Data

            Text("$nDataSent : kbps"),
            Text("$nDataRcvd : kbps"),
          ],
        ),
      ),
    );
  }
}
