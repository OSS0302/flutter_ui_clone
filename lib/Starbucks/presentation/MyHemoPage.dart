import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Column(
              children: [
                Image.asset('assets/studucsMain.png'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              '1 * until Green Level',
                            ),
                            LinearProgressIndicator(
                              value: 20 / 25,
                              minHeight: 8,
                              borderRadius: BorderRadius.circular(12),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.green),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '4/5 ★ ',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                )
              ],
            )),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.mail,
                    size: 30.0,
                  ),
                  Text("What's New"),
                  Icon(
                    Icons.discount_outlined,
                    size: 30.0,
                  ),
                  Text('Coupon'),
                  Spacer(),
                  Icon(
                    Icons.notifications_none,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset('assets/Starad.png'),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.asset('assets/crismas.png'),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(width: 420, height: 400, child: scrollView()),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 200.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget scrollView() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Row(
              children: [
                SizedBox(width: 19, child: Text('dd')),
                SizedBox(width: 19, child: Text('dd')),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 400,
                    height: 400,
                    child: Image.asset('assets/04_01_cardnews.png'),
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    child: Image.asset('assets/04_02_cardnews.png'),
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    child: Image.asset('assets/04_03_cardnews.png'),
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    child: Image.asset('assets/04_04_cardnews.png'),
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    child: Image.asset('assets/04_05_cardnews.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
