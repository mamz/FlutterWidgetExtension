import 'package:flutter/material.dart';
import 'package:flutter_widget_extension/flutter_widget_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Widget Extension Demo",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Widget Extension Demo"),
          ),
          body: Column(children: [
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 200.0,
              child: widget12(),
            ),
            vSpace(20),
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 200.0,
              child: widget22(),
            ),
          ]).verticalScrollable(),
        ));
  }

  Widget widget11() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2000.0),
        child: Container(
          color: Colors.blue,
          padding: const EdgeInsets.all(10.0),
          child: const Text(
            "Hello Flutter!",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget widget12() {
    return const Text("Hello Flutter!",
        style: TextStyle(
          color: Colors.white,
        )).margin(const EdgeInsets.all(10.0)).backgroundColor(Colors.blue).stadium().center();
  }

  Widget widget21() {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            GestureDetector(
              onTap: () => debugPrint("Widget2 is clicked"),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.purple,
                ),
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                        "https://c-ssl.duitang.com/uploads/item/201609/20/20160920124307_mcZHQ.thumb.1000_0.jpeg"),
                  ),
                ),
              ),
            ),
            IconButton(
                onPressed: () => debugPrint("Icon is clicked"),
                icon: const Icon(
                  Icons.highlight_remove,
                  color: Colors.pink,
                )),
          ],
        )));
  }

  Widget widget22() {
    return Image.network("https://c-ssl.duitang.com/uploads/item/201609/20/20160920124307_mcZHQ.thumb.1000_0.jpeg")
        .round(20.0)
        .margin(const EdgeInsets.all(4.0))
        .backgroundColor(Colors.purple)
        .round(20.0)
        .onTap(() => debugPrint("Widget2 is clicked"))
        .badge(IconButton(
            onPressed: () => debugPrint("Icon is clicked"),
            icon: const Icon(
              Icons.highlight_remove,
              color: Colors.pink,
            )))
        .center()
        .padding(const EdgeInsets.all(20.0));
  }
}
