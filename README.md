# FlutterWidgetExtension
## :large_blue_circle: Internationalization

English | [中文文档](README_zh.md)

## :information_source: Introductions

A Flutter package for chain build widget, decrease widget nested hell. Only pick the frequently used function. Some method may introduce unnecessary container. Please refre the souce code.

Example
Before:
```dart
  Widget widget() {
    return Padding(
        padding: EdgeInsets.all(20.0),
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
                  margin: EdgeInsets.all(4.0),
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
```
After:
```yaml
dependencies:
  flutter_widget_extension: ^0.0.1
```
```dart
import 'package:flutter_widget_extension/flutter_widget_extension.dart';

  Widget widget() {
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
```
## :stuck_out_tongue_winking_eye: Authors

[mamz](https://github.com/mamz)

## :copyright: License

[License MIT](LICENSE)
