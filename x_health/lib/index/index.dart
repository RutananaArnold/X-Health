import '../packages_exporter.dart';
// import 'package:x_health/profile/profile_tab.dart';
import 'package:x_health/trips/trips_tab.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> tabs = [
    PreviousTrips(),
    Home(),
    UserInfoScreen(),
  ];

  var titles = [
    'My X health History',
    'X health',
    'My X health Profile',
  ];

  int currentTabIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: AnimatedSwitcher(
            duration: Duration(milliseconds: 1000),
            child: Text(
              titles[currentTabIndex],
              key: Key(titles[currentTabIndex]),
            ),
          ),
          centerTitle: true),
      body: AnimatedSwitcher(
        child: tabs[currentTabIndex],
        duration: Duration(milliseconds: 1000),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        onTap: _onItemTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Previous\nTrips',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stream,
              size: 35.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
