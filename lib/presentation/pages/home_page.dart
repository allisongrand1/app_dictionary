import 'package:app_dictionary/common/dictionary/dictionary.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/new');
          },
          child: Text('home'),
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 10,
            child: ClipShadow(
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, -5),
                    spreadRadius: 1,
                    blurRadius: 15),
                BoxShadow(
                    color: Color.fromARGB(143, 84, 112, 124),
                    offset: Offset(5, 5),
                    spreadRadius: 1,
                    blurRadius: 15),
              ],
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(24, 84, 112, 124)),
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Color.fromARGB(108, 84, 112, 124),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/new');
                    }),
              ),
            ),
          ),
          Container(
            height: 70,
          ),
        ],
      ),
    );
  }
}
