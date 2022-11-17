import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String adamdinAty = 'Kubat';
  List<Icon> icons = <Icon>[];
  @override
  void initState() {
    icons.add(
      const Icon(
        Icons.favorite,
        color: Colors.red,
        size: 50.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              'Quiz App',
              style: TextStyle(fontSize: 30),
            ),
            Divider(
              height: 10,
              color: Colors.white,
              endIndent: 145,
              thickness: 5,
              indent: 145,
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Кыргызстанда 7 область барбы?',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            InkWell(
              onTap: () {
                setState(() {});
                icons.add(
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 50.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                color: const Color(0xff4CAF52),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                  child: Text(
                    'Туура',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  icons.add(
                    const Icon(
                      Icons.clear,
                      color: Colors.red,
                      size: 50.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  );
                });
              },
              child: Container(
                color: const Color(0xffF54335),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                  child: Text(
                    'Ката',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(children: icons)
          ],
        ),
      ),
    );
  }
}
