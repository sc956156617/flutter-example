// import 'package:flutter/material.dart';
import 'dart:async';
// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:convert';
// import 'package:first_flutter/model/Person.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

// void main() => getHttp();

// void getHttp() async {
//   try {
//     Response response = await Dio().post("http://192.168.1.107:8181/getDatas");
//     print("我很帅" + response.toString());
//   } catch (e) {
//     print("我不帅" + e.toString());
//   }
// }

// In this example we download a image and listen the downloading progress.

void main() {
  runZoned(() {
    runApp(FlutterReduxApp('小帅伙子'));
    PaintingBinding.instance.imageCache.maximumSize = 100;
  }, onError: (Object obj, StackTrace stack) {
    print(obj);
    print(stack);
  });
}

class FlutterReduxApp extends StatelessWidget{
  final String text;
  FlutterReduxApp(this.text);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
       title: "sunny's demo",
       home: Scaffold(
          appBar: AppBar(
            title: Text("sunny's dmeo"),
          ),
          body: Center(
            child: Container(
              width: 200.0,
              height: 200.0, 
              margin: const EdgeInsets.all(4.0,),
              decoration: BoxDecoration(
                color: Color(0xff4588),
                border: new Border.all(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                ),
              ),
              child: new RaisedButton(
                onPressed: (){
                   print('种花家');
                },
                child: Image.network(
                  'https://avatars0.githubusercontent.com/u/7021745?s=400&v=4',
                  fit: BoxFit.fitWidth,
                ),
              ),
          ),
        ),
      )
    );
  }
}

void sunnyPutDown(){
  
}

// main() async {
//   var dio = new Dio();
//   dio.interceptors.add(LogInterceptor());
//   // This is big file(about 200M)
// //   var url = "http://download.dcloud.net.cn/HBuilder.9.0.2.macosx_64.dmg";

//  var url = "https://github.com/CarGuo/GSYGithubAppFlutter/blob/master/logo.png";
//  // await download1(dio, url, "./example/book1.jp g");
//  var saveUrl = await getLocalFile();
//  await download1(dio, url, (HttpHeaders headers)=> saveUrl);
//   //await download2(dio, url, "./example/book2.jpg");
// }

// Future download1(Dio dio, String url, savePath) async {
//   try {
//     await dio.download(
//       url,
//       savePath,
//       onReceiveProgress: showDownloadProgress,
//     );
//   } catch (e) {
//     print(e);
//   } finally {
//     print("buzhid");
//   }
// }

// Future download2(Dio dio, String url, String savePath) async {
//   try {
//     Response response = await dio.get(
//       url,
//       onReceiveProgress: showDownloadProgress,
//       //Received data with List<int>
//       options: Options(
//         responseType: ResponseType.bytes,
//         followRedirects: false,
//       ),
//     );
//     print(response.headers);
//     File file = new File(savePath);
//     var raf = file.openSync(mode: FileMode.write);
//     // response.data is List<int> type
//     raf.writeFromSync(response.data);
//     await raf.close();
//   } catch (e) {
//     print(e);
//   }
// }

// void showDownloadProgress(received, total) {
//   if (total != -1) {
//     print((received / total * 100).toStringAsFixed(0) + "%");
//   }
// }

// Future<String> getLocalFile() async {
//     // get the path to the document directory.
//     String dir = (await getApplicationDocumentsDirectory()).path;
//     return '$dir/abc.png';
// }





