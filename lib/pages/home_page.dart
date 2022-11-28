import 'package:flutter/material.dart';
import 'package:quiz_app/data/local_data/local_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String adamdinAty = 'Kubat';
  List<Icon> icons = <Icon>[];
  // @override
  // void initState() {
  //   icons.add(
  //     const Icon(
  //       Icons.favorite,
  //       color: Colors.red,
  //       size: 50.0,
  //     ),
  //   );
  //   super.initState();
  // }

  void userdinJoobu(bool userAnswer) {
    bool tuuraJoop = localData.joopAlipKel();
    if (tuuraJoop == userAnswer) {
      icons.add(
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 50.0,
        ),
      );
    } else {
      icons.add(
        const Icon(
          Icons.clear,
          color: Colors.red,
          size: 50.0,
        ),
      );
    }

    localData.suroonuOtkoz();
    setState(() {});

    /// Variant 2
    // tuuraJoop == userAnswer
    //     ? icons.add(
    //         const Icon(
    //           Icons.check,
    //           color: Colors.green,
    //           size: 50.0,
    //         ),
    //       )
    //     : icons.add(
    //         const Icon(
    //           Icons.clear,
    //           color: Colors.red,
    //           size: 50.0,
    //         ),
    //       );
  }

// kiin karaibiz
  // Future<void> _showMyDialog() async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('AlertDialog Title'),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: const <Widget>[
  //               Text('This is a demo alert dialog.'),
  //               Text('Would you like to approve of this message?'),
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: const Text('Approve'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  //// ===>>
  // _onAlertButtonsPressed(context) {
  //   Alert(
  //     context: context,
  //     type: AlertType.warning,
  //     title: "RFLUTTER ALERT",
  //     desc: "Flutter is more awesome with RFlutter Alert.",
  //     buttons: [
  //       DialogButton(
  //         onPressed: () => Navigator.pop(context),
  //         color: const Color.fromRGBO(0, 179, 134, 1.0),
  //         child: const Text(
  //           "FLAT",
  //           style: TextStyle(color: Colors.white, fontSize: 18),
  //         ),
  //       ),
  //       DialogButton(
  //         onPressed: () => Navigator.pop(context),
  //         gradient: const LinearGradient(colors: [
  //           Color.fromRGBO(116, 116, 191, 1.0),
  //           Color.fromRGBO(52, 138, 199, 1.0),
  //         ]),
  //         child: const Text(
  //           "GRADIENT",
  //           style: TextStyle(color: Colors.white, fontSize: 18),
  //         ),
  //       )
  //     ],
  //   ).show();
  // }

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
            localData.surooAlipKel() == ''
                ? GestureDetector(
                    onTap: () {
                      setState(() {});
                      localData.reset();
                      icons = [];
                    },
                    child: Container(
                      color: Colors.teal,
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Кайра башта суроо түгөндү!',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  )
                : Text(
                    // LocalData().surooAlipKel(),
                    localData.surooAlipKel(),
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
            InkWell(
              onTap: () => userdinJoobu(true),
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
              onTap: () => userdinJoobu(false),
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
