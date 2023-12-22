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
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                  Image.asset('assets/studucsMain.png'),
                  Row(
                    children: [
                      SizedBox(
                        height: 100,
                        child: Column(
                          children: [
                            Text(
                              '1 * until Green Level|',
                            ),
                            LinearProgressIndicator(
                              backgroundColor: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Text('4/5'),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Icon(
                  //       CupertinoIcons.mail,
                  //       size: 30.0,
                  //     ),
                  //     Text("What's New"),
                  //     SizedBox(width: 12),
                  //     Icon(
                  //       Icons.discount_outlined,
                  //       size: 30.0,
                  //     ),
                  //     Text('Coupon'),
                  //     Spacer(),
                  //     Icon(
                  //       Icons.notifications_none,
                  //       size: 30,
                  //     )
                  //   ],
                  // )
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
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.asset('assets/crismas.png'),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 200.0,
              color: Colors.green,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 200.0,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
