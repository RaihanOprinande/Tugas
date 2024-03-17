
import 'package:flutter/material.dart';

class PagePassingData extends StatelessWidget {
  const PagePassingData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.orange,
      //   title: Text('Page Passing Data'),
      // ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text('Judul Berita ke $index'),
                subtitle: Text('Ini sub judul berita ke $index'),
                onTap: (){
                  //ke page detail
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageGetData(index)));

                },
              ),
            );
          }
      ),
    );
  }
}


class PageGetData extends StatelessWidget {
  final int index;
  const PageGetData(this.index,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Paage Get Data'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Ini adalah judul berita ke $index'),
            Text('Ini adalah sub judul berita ke $index'),
          ],
        ),
      ),
    );
  }
}

class PageLoginState extends StatefulWidget {
  const PageLoginState({super.key});

  @override
  State<PageLoginState> createState() => PageLoginStateState();
}

class PageLoginStateState extends State<PageLoginState> {

  //dapatkan value dari text field
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('page Login'),
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: txtUsername,
              decoration: InputDecoration(
                hintText: 'Input Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
            const SizedBox(height: 8,),
            TextFormField(
    controller: txtPassword,
    obscureText: true,
    decoration: InputDecoration(
    hintText: 'Input Password',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)
            ),
          ),
            ),
            const SizedBox(height: 15,),
            MaterialButton(onPressed: (){
              setState(() {
                String username = txtUsername.text;
                String pwd = txtPassword.text;
                if(username == 'admin' && pwd == '123456'){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminPage(),
                    ),
                  );

                }else{
                  _showSnackBar(context, 'Username atau password salah');
                }

              });


            },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text('login'),
            )
          ],
        ),
      ),
    );
  }
}



class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: const Center(
        child: Text(
          'Hello, Selamat Datang Admin'
        ),
      ),
    );
  }
}


