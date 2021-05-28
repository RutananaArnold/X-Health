import 'package:cached_network_image/cached_network_image.dart';

import '../packages_exporter.dart';

class SelectLocation extends StatelessWidget {
  final String cause;

  const SelectLocation({Key key, @required this.cause}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
            child: BackButton(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SizedBox.expand(
        child: InteractiveViewer(
          child: CachedNetworkImage(
            imageUrl:
                'https://images.unsplash.com/photo-1538514860079-8443cff3cb21?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hcHxlbnwwfDF8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
            fit: BoxFit.cover,
            placeholder: (context, url) {
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).primaryColor,
                  ),
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 200,
        // width: double.infinity,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                width: 20,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Set Pick Up Location",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.pin_drop,
                        color: Theme.of(context).primaryColor,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "My Current Location",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("object search");
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Cause: ",
                style: TextStyle(
                  color: Colors.orangeAccent[100],
                  fontWeight: FontWeight.w900,
                ),
                children: [
                  TextSpan(
                    text: "$cause",
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  print("object tapped");
                },
                label: Text(
                  "Order Ambulance",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                icon: Icon(
                  Icons.local_shipping,
                  color: Theme.of(context).primaryColor,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.all(12),
                  shape: StadiumBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
