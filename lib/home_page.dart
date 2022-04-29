import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyProvider.dart';

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int indexPage=Provider.of<MyProvider>(context).currentIndex;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: Provider.of<MyProvider>(context, listen: false).items,
        currentIndex:indexPage,
        onTap: (int index) {
          Provider.of<MyProvider>(context, listen: false).changeIndex(index);
        },
      ),
      body: Provider.of<MyProvider>(context, listen: false).screens[indexPage],
    );
  }
}
