import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyAppCupertino());

class MyAppCupertino extends StatelessWidget {
  const MyAppCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: HomeScreen(),
      );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book_solid), label: '书籍'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.eye_solid), label: '观看')
        ]),
        tabBuilder: (context, position) {
          return CupertinoTabView(
            builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: (position == 0) ? Text('书籍') : Text('观看'),
                ),
                child: Center(
                    child: CupertinoButton(
                        child: Text(
                          'this is tab:$position',
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(CupertinoPageRoute(builder: (context) {
                            return DetailScreen((position == 0) ? "书籍" : "观看");
                          }));
                        })),
              );
            },
          );
        });
  }
}

class DetailScreen extends StatelessWidget {
  final String title;

  DetailScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Details"),
        ),
        child: Center(
          child: Text("欢迎来到 :$title"),
        ));
  }
}
