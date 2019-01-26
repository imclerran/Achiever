import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:achiever/pages/tab_screen.dart';
import 'package:achiever/models/app_state.dart';
import 'package:achiever/reducers/app_reducer.dart';

void main() => new MainApp();

class MainApp extends StatelessWidget {
  final title = 'Achiever';
  final routes = <String, WidgetBuilder>{
    '/home': (BuildContext context) => new TabScreen()
  };
    //
    // Store is just a class that holds your apps State tree.
    // AppState is something that we will (but haven't yet) established
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
    middleware: [],
  );

  MainApp() {
    runApp(StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        routes: routes,
        theme: new ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.lightBlue,
          canvasColor: Colors.white,
        ),
        home: new TabScreen(),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: title,
        routes: routes,
        home: new TabScreen(),
      ),
    );
  }
}