# FlutterWidgetExtension
## :large_blue_circle: 国际化

[English](README.md) | 中文

## :information_source: 简介

Flutter组件链式构造，减少嵌套地狱，只挑选了常用功能，有可能引入不必要的容器，具体请看源码。

[pub地址](https://pub.dev/packages/flutter_widget_extension)

示例

之前:
```dart
  Widget widget() {
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
```
现在:
```yaml
dependencies:
  flutter_widget_extension: ^0.0.2
```
```dart
import 'package:flutter_widget_extension/flutter_widget_extension.dart';

  Widget widget() {
    return Image.network(
            "https://c-ssl.duitang.com/uploads/item/201609/20/20160920124307_mcZHQ.thumb.1000_0.jpeg")
        .round(20.0)
        .addMargin(const EdgeInsets.all(4.0))
        .addBackgroundColor(Colors.purple)
        .round(20.0)
        .addOnTap(() => debugPrint("Widget2 is clicked"))
        .badge(IconButton(
            onPressed: () => debugPrint("Icon is clicked"),
            icon: const Icon(
              Icons.highlight_remove,
              color: Colors.pink,
            )))
        .center()
        .addPadding(const EdgeInsets.all(20.0));
  }
```
## :stuck_out_tongue_winking_eye: 作者

[mamz](https://github.com/mamz)

## :copyright: 许可

[License MIT](LICENSE)
