                                                                                                                                                                      import 'package:flutter/material.dart';
import 'package:http_post/Model.dart';
import 'package:http_post/mycontroller.dart';
import 'package:provider/provider.dart';


void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home:

      ChangeNotifierProvider(create: (context) => Mycontroller(),child: Home(),)
  ));

}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Mycontroller my = Provider.of(context);
    my.get_http();
    return Scaffold(
      appBar: AppBar(title: Text("Mock API"),
      actions: [],
      ),
      body: ListView.builder(
        itemCount: my.l.length,
        itemBuilder: (context, index) {
          Model m = Model.fromJson(my.l[index]);
        return Card(child:

        ListTile(title: Text("${m.name}"),
        subtitle: Text("${m.city}"),
        ),);
      },),

    );
  }
}
