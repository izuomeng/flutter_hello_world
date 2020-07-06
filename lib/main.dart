import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          Text('41')
        ],
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('布局demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
            titleSection,
            renderButtonSection()
          ],
        ),
      ),
      theme: ThemeData(primaryColor: Colors.green),
    );
  }

  Widget renderButtonSection() {
    List<Widget> renderSectionItem(
        {String iconName, String text, IconData icon}) {
      return [
        IconButton(
          icon: Icon(icon),
          onPressed: () {
            print("You click $iconName");
          },
        ),
        Text(text)
      ];
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
            children: renderSectionItem(
                iconName: 'call', text: 'CALL', icon: Icons.call)),
        Column(
          children: renderSectionItem(
              iconName: 'route', text: 'ROUTE', icon: Icons.navigation),
        ),
        Column(
            children: renderSectionItem(
                iconName: 'share', text: 'SHARE', icon: Icons.share)),
      ],
    );
  }
}
