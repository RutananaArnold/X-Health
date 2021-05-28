import '../packages_exporter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print("${myIss.title}");

    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // SliverToBoxAdapter(
        //   child: Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(40),
        //       color: Colors.blue.withOpacity(0.5),

        //     ),
        //     child: TextFormField(
        //       decoration: InputDecoration(
        //         hintText: "Medical Description",
        //         labelText: "Type your Medicine description",
        //       ),
        //       maxLines: 8,
        //     ),
        //   ),
        // ),
        // SliverAppBar(
        //   centerTitle: true,
        //   elevation: 16,
        //   floating: true,
        //   stretch: true,
        //   flexibleSpace: FlexibleSpaceBar(
        //     centerTitle: true,
        //     title: Text(
        //       "X Health",
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //     background: Icon(
        //       Icons.stream,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),

        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                var myIss = myIssue[index];

                var color = Theme.of(context).primaryColor;
                return Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: color,
                      width: 2,
                    ),
                    // gradient: LinearGradient(
                    //   colors: [
                    //     Colors.blueAccent.withOpacity(0.3),
                    //     Colors.blueAccent[700],
                    //   ],
                    //   stops: [
                    //     0.0,
                    //     0.8,
                    //   ],
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    // ),
                    borderRadius: BorderRadius.circular(12),
                    color: color,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          topLeft: Radius.circular(12),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: myIss.imageUrl,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.center,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                        child: myIss.subCategories.length == 0
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SelectLocation(
                                          cause: "${myIss.title}"),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "${myIss.title}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                            : ExpansionTile(
                                backgroundColor:
                                    Colors.blueAccent[700].withOpacity(0.5),
                                title: Text(
                                  "${myIss.title}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                children: myIss.subCategories
                                    .map(
                                      (subCategory) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        child: ListTile(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          title: Text(
                                            "$subCategory",
                                            style: TextStyle(
                                              // color: Theme.of(context).primaryColor
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SelectLocation(
                                                        cause: "$subCategory"),
                                              ),
                                            );
                                          },
                                          tileColor: Colors.white70,
                                          selectedTileColor: Colors.white,
                                          trailing: Icon(
                                            Icons.launch,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                      ),
                    ],
                  ),
                );
              },
              childCount: myIssue.length,
            ),
          ),
        ),
      ],
    );
  }
}
