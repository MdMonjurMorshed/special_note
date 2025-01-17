import 'package:flutter/material.dart';
import 'package:special_note/themes/theme_data.dart';
import 'package:special_note/views/ofline_loby.dart';
import 'package:special_note/views/online_loby.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Special Note"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: AppTheme.color.appBarColor,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Offline")
                .alignment(Alignment.center)
                .height(height / 16)
                .width(width / 2)
                .backgroundColor(Colors.deepOrange.shade400)
                .clipRRect(all: 8)
                .ripple()
                .gestures(onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OfflineNoteLoby()));
            }),
            SizedBox(
              height: height / 100,
            ),
            const Text("Online")
                .alignment(Alignment.center)
                .height(height / 16)
                .width(width / 2)
                .backgroundColor(AppTheme.color.appBarColor)
                .clipRRect(all: 8)
                .ripple()
                .gestures(onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OnlineNoteLoby()));
            })
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
