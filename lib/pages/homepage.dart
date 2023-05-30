import 'package:flutter/material.dart';
import 'package:responsi_prak_tpm/pages/news_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 300,
              height: 300,
              child: Image.network(
                  "https://static.republika.co.id/files/images/logo.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "terbaru",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xff009688)),
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    child: Text("TERBARU"),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "daerah",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xff009688)),
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    child: Text("DAERAH"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "internasional",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xff009688)),
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    child: Text("INTERNASIONAL"),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "islam",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xff009688)),
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    child: Text("ISLAM"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
