import 'package:flutter/material.dart';
import 'package:islami/them_data.dart';

class SabhaaTap extends StatefulWidget {
  @override
  State<SabhaaTap> createState() => _SabhaaTapState();
}

class _SabhaaTapState extends State<SabhaaTap> {
  int counter = 0;
  int zekrIndex = 0;

  List<String> azkar = ["سبحان الله", "الحمد لله", "الله أكبر", "أستغفر الله"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 55),

            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                  if (counter == 33) {
                    counter = 0;
                    zekrIndex++;
                    if (zekrIndex == azkar.length) {
                      zekrIndex = 0;
                    }
                  }
                });
              },
              child: Image.asset('assets/images/bodysebha.png'),
            ),

            const SizedBox(height: 45),

            Text('عدد التسبيحات', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppTheme.primary,
              ),
              child: Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),


            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppTheme.primary,
              ),
              child: Text(
                azkar[zekrIndex],
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
