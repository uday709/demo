import 'package:demo/demo_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Demo_p(),
  ));
}

class Home extends StatelessWidget {
  // const Home({super.key});
TextEditingController t1=TextEditingController();
TextEditingController t2=TextEditingController();
ValueNotifier  a=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: t1,),
          TextField(controller: t2,),
        ValueListenableBuilder(valueListenable: a, builder: (context, value, child) {
          return   Text("${a.value}");
        },)
,          ElevatedButton(onPressed: () {
            a.value=int.parse(t1.text)+int.parse(t2.text);
            print(a);

          }, child: const Text("Sum"))
        ],
      ),
    );
  }
}
