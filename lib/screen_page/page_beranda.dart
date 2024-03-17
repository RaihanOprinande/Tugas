import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:projects/screen_page/Page_list.dart';
import 'package:projects/screen_page/Page_navigation_bar.dart';
import 'package:projects/screen_page/page_bottom_navigation.dart';

class PageBeranda extends StatelessWidget {
  const PageBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Projek MI 2C'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'gambar/PPOOLLII.png',
                fit: BoxFit.contain,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 8,
              ),
              const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                fit: BoxFit.contain,
                height: 100,
                width: 100,
              ),
              const Text('Program Studi: Manajemen Informatika'),
              const Text('Kampus Politeknik Negeri Padang'),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  //tambahkan code toast
                  showToast(
                    'Pindah ke Page Navigation Drawer',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom,
                    toastHorizontalMargin: 28,
                    fullWidth: true,
                  );

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PageNavigationBar()
                      ));

                },
                color: Colors.green,
                textColor: Colors.white,
                child: const Text(
                  'Page Navigation Utama',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  showToast('This is normal toast with animation',
                      context: context,
                      animation: StyledToastAnimation.slideFromTop,
                      reverseAnimation: StyledToastAnimation.slideToTop,
                      position: StyledToastPosition.top,
                      startOffset: const Offset(0.0, -3.0),
                      reverseEndOffset: const Offset(0.0, -3.0),
                      duration: const Duration(seconds: 4),
                      //Animation duration   animDuration * 2 <= duration
                      animDuration: const Duration(seconds: 1),
                      curve: Curves.elasticOut,
                      reverseCurve: Curves.fastOutSlowIn);
                },
                color: Colors.green,
                textColor: Colors.white,
                child: const Text(
                  'Toast atas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              MaterialButton(
                onPressed: () {
                  showToast(
                    'This is normal',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom,
                    toastHorizontalMargin: 20,
                    fullWidth: true,
                  );
                },
                color: Colors.green,
                textColor: Colors.white,
                child: const Text(
                  'Explore Here',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              const SizedBox(height: 5,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>const PageBottomNavigationBar()
                ));
              },
                color: Colors.green,
                textColor: Colors.white,
                child: const Text('Button Navigator Bar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>const PageListUsers()
                ));
              },
                color: Colors.green,
                textColor: Colors.white,
                child: const Text('List User',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}