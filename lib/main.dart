import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: Splash(), theme: ThemeData(primarySwatch: Colors.blueGrey)));
}

class Quotes extends StatefulWidget {
  const Quotes({Key key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List quotesdata = [
    "Be yourself; everyone else is already taken.",
    "To live is the rarest thing in the world. Most people exist, that is all.",
    "Women are made to be Loved, not understood.",
    "True friends stab you in the front.",
    "Be the change that you wish to see in the world.",
    "Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate; only love can do that.",
    "Life's most persistent and urgent question is, 'What are you doing for others?",
    "Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.",
    "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    "Spread love everywhere you go. Let no one ever come to you without leaving happier.",
    "We should regret our mistakes and learn from them, but never carry them forward into the future with us.",
    "Start by doing what's necessary; then do what's possible; and suddenly you are doing the impossible.",
    "To be a champion, I think you have to see the big picture. It's not about winning and losing; it's about every day hard work and about thriving on a challenge. It's about embracing the pain that you'll experience at the end of a race and not being afraid. I think people think too hard and get afraid of a certain challenge.",
    "A great way to get all the right nutrients is to make a colorful plate - mix of good vegetables, carbohydrates, and protein. If you notice all your vegetables are green, change it up and add another color for a variety of benefits in one meal."
  ];

  int _index = 0;

  _changequote() {
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              child: Icon(
                Icons.developer_board,
              ),
              onTap: () {
                final _mysnackbar = SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Made By Nitin Verma",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.email),
                          Text("@nitinverma03241",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                  backgroundColor: Colors.green.shade50,
                );
                ScaffoldMessenger.of(context).showSnackBar(_mysnackbar);
              })
        ],
        backgroundColor: Colors.yellowAccent.withGreen(12),
        centerTitle: true,
        title: Text("Wisdom"),
      ),
      body: Stack(fit: StackFit.expand, children: [
        Image(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1540039906769-84cf3d448bc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80")),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                thickness: 1.0,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                child: Text(
                  quotesdata[_index % quotesdata.length],
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                height: 220,
                width: 320,
              ),
              SizedBox(height: 30),
              Divider(
                thickness: 1.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade400,
                ),
                width: 120,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny),
                    TextButton(
                        onPressed: _changequote,
                        child: Text(
                          "INSPIRE ME",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WISDOM"),
        backgroundColor: Colors.yellowAccent.withGreen(12),
        centerTitle: true,
      ),
      body: Stack(fit: StackFit.expand, children: [
        Image(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1584901354120-75d29e0640ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80")),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade400,
              ),
              width: 180,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wb_sunny),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Quotes()));
                      },
                      child: Text(
                        "CLICK TO CONTINUE",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
