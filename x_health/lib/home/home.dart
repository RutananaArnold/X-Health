import '../packages_exporter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.blue.withOpacity(0.4),
        body: HomeScreen(),

        // bottomNavigationBar: Container(
        //   height: 56,
        //   padding: EdgeInsets.all(10),
        //   decoration: BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         color: Theme.of(context).primaryColor,
        //         offset: Offset(2, -2),
        //         blurRadius: 4,
        //       ),
        //     ],
        //     color: Colors.white,
        //   ),
        //   child: TextButton(
        //     onPressed: () {
        //       print("object Tapped");
        //     },
        //     style: TextButton.styleFrom(
        //       backgroundColor: Theme.of(context).primaryColor,
        //     ),
        //     child: Text(
        //       'Order An Ambulance',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
