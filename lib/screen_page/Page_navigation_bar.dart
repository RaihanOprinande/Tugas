import 'package:flutter/material.dart';
import 'package:projects/screen_page/page_column.dart';
import 'package:projects/screen_page/page_passing_data.dart';

class PageNavigationBar extends StatelessWidget {
  const PageNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Page Navigation Bar'),
      ),

      //drawer untuk menu samping
      drawer: SizedBox(
        width: 250,
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Wope'),
                accountEmail: Text('Wope.com'),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  child: Icon(
                    Icons.person,
                    color: Colors.green,
                    size: 65,
                  ),
                ),
              ),
              ListTile(
                //untuk di klik
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PageRow()));
                },
                title: const Text(
                    "Row Widget"
                ),
              ),
              const Divider(),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PageColumn()));
                },
                title: const Text(
                    "Column Widget"
                ),
              ),
              const Divider(),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PageColumnRow()));
                },
                title: const Text(
                    "Row & Column"
                ),
              ),
              const Divider(),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PageListHorizontal()));
                },
                title: const Text(
                    "List Horizontal"
                ),
              ),
              const Divider(),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PagePassingData()));
                },
                title: const Text(
                    "Passing Data"
                ),
              ),
              const Divider(),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PageLoginState()  ));
                },
                title: const Text(
                    "Log in"
                ),
              ),
            ],
          ),
        ),
      ),

      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}


class PageRow extends StatelessWidget {
  const PageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.orange,
      //   title: Text('Page Row'),
      // ),

      //Row. column, list
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.add_business_sharp),
            Icon(Icons.person),
            Icon(
              Icons.add_call,
              color: Colors.orange,
              size: 44,
            ),
          ],
        ),
      ),
    );
  }
}