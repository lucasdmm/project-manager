import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Project Manager',
          style: TextStyle(shadows: [
            BoxShadow(color: Colors.black54, offset: Offset(1, 2))
          ]),
        ),
      ),
      body: Container(
        child: Stack(children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 340,
                  width: 900,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        'assets/home-image.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Card(
                margin: EdgeInsets.all(10),
                shadowColor: Theme.of(context).primaryColor,
                elevation: 3,
                child: ListTile(
                  onTap: () {},
                  hoverColor: Colors.grey[300],
                  contentPadding: EdgeInsets.all(10),
                  leading: Icon(
                    Icons.engineering_sharp,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                  title: Text(
                    'Create new Project',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                shadowColor: Theme.of(context).primaryColor,
                elevation: 3,
                child: ListTile(
                  onTap: () {},
                  hoverColor: Colors.grey[300],
                  contentPadding: EdgeInsets.all(10),
                  leading: Icon(
                    Icons.list_alt_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                  title: Text(
                    'All Project',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                shadowColor: Theme.of(context).primaryColor,
                elevation: 3,
                child: ListTile(
                  onTap: () {},
                  hoverColor: Colors.grey[300],
                  contentPadding: EdgeInsets.all(10),
                  leading: Icon(
                    Icons.switch_account,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                  title: Text(
                    'Workers',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
