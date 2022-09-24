import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropDownSearch Dark Mode',
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          cardColor: Color(0xFF101010),
          primarySwatch: Colors.teal,
          primaryColor: Colors.teal,
          textTheme: TextTheme(button: TextStyle(color: Colors.teal)),
          appBarTheme:
              AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark)),
      home: const MyHomePage(title: 'DropDownSearch Dark Mode'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownSearch<String>(
              popupProps: PopupProps.modalBottomSheet(
                  showSearchBox: true,
                  searchFieldProps: TextFieldProps(
                    autofocus: true,
                  )),
              items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Menu mode",
                  hintText: "country in menu mode",
                ),
              ),
              onChanged: print,
              selectedItem: "Brazil",
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
