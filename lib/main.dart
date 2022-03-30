import 'package:flutter/material.dart';
import 'user.dart';

// @dart=2.9
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<Tab> _tablist = [
    Tab(
      child: Text("Novel"),
    ),
    Tab(
      child: Text("Bisnis"),
    ),
    Tab(
      child: Text("Motivation"),
    ),
    Tab(
      child: Text("Horror"),
    ),
  ];

  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(vsync: this, length: _tablist.length);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Book book1 = Book(
      titleBook: 'Padang Bulan ',
      author: 'Andrea Hirata',
    );
    Book book2 = Book(
      titleBook: 'Laskar Pelangi',
      author: 'Andrea Hirata',
    );
    Book book3 = Book(
      titleBook: 'Ayah',
      author: 'Andrea Hirata',
    );
    Book book4 = Book(
      titleBook: 'Guru Aini',
      author: 'Andrea Hirata',
    );
    Book book5 = Book(
      titleBook: 'Orang-Orang Biasa',
      author: 'Andrea Hirata',
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
        title: Text(
          "ReaBok'S",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: _tabcontroller,
            tabs: _tablist,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.network(
                            'https://www.tagar.id/Asset/uploads2019/1607941807684-cover-novel-padang-bulan.jpg'),
                        SizedBox(
                          width: 10,
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book1.getTitleBook(),
                              style: TextStyle(
                                fontSize: 28.0,
                              ),
                            ),

                            Text(
                              book1.getAuthor(),
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            //Text('1032123131'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.network(
                            'https://www.tagar.id/Asset/uploads2019/1607941366232-cover-novel-laskar-pelangi.jpg'),
                        SizedBox(
                          width: 10,
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book2.getTitleBook(),
                              style: TextStyle(
                                fontSize: 28.0,
                              ),
                            ),

                            Text(
                              book2.getAuthor(),
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            //Text('1032123131'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.network(
                            'https://www.tagar.id/Asset/uploads2019/1607941441748-cover-novel-ayah.jpg'),
                        SizedBox(
                          width: 10,
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book3.getTitleBook(),
                              style: TextStyle(
                                fontSize: 28.0,
                              ),
                            ),

                            Text(
                              book3.getAuthor(),
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            //Text('1032123131'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.network(
                            'https://www.tagar.id/Asset/uploads2019/1607941470186-cover-novel-guru-aini.jpg'),
                        SizedBox(
                          width: 10,
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book4.getTitleBook(),
                              style: TextStyle(
                                fontSize: 28.0,
                              ),
                            ),

                            Text(
                              book4.getAuthor(),
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            //Text('1032123131'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.network(
                            'https://www.tagar.id/Asset/uploads2019/1607941409812-cover-novel-orangorang-biasa.jpg'),
                        SizedBox(
                          width: 10,
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book5.getTitleBook(),
                              style: TextStyle(
                                fontSize: 28.0,
                              ),
                            ),

                            Text(
                              book5.getAuthor(),
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            //Text('1032123131'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
        ],
      ),
    );
  }
}
