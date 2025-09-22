import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/quran_details.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = 'QuranDetails';

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verser = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as quranModels;
    if (verser.isEmpty) {
      loadFile(args.index);
    }
    ;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
        ),
      ),

      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) =>
              Divider(thickness: 2, indent: 40, endIndent: 40),
          itemBuilder: (context, index) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: (Text(
                "${verser[index]}(${index + 1})",
                textAlign: TextAlign.center,
              )),
            );
          },
          itemCount: verser.length,
        ),
      ),
    );
  }

  void loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split('\n');
    print(lines);
    verser = lines;
    setState(() {});
  }
}
