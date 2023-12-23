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
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'What\'s New',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'See all',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 400, height: 360, child: scrollView()),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 400,
              height: 600,
              child: Image.asset('assets/crismas.png'),
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
          children: [
            Expanded(
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      height: 540,
                      color: Colors.cyan,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              flex: 3,
                              child: Image.asset(
                                'assets/04_01_cardnews.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(' 12월20일, 그리팅 카드및 모바일 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Greeting Card & 물품형 선택권 잔액\n 충전가능 오픈!',
                                style: TextStyle(fontSize: 12),
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.cyan,
                      ),
                      width: 400,
                      height: 540,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              flex: 3,
                              child: Image.asset(
                                'assets/04_02_cardnews.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('스벅TV 스타벅스 10대 매장 선정 기념 구독자 이벤트',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '스타벅스 코리아 10대 매장을 스벅 TV에서 만나 \n 보세요!',
                                style: TextStyle(fontSize: 12),
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      height: 540,
                      color: Colors.cyan,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              flex: 3,
                              child: Image.asset(
                                'assets/04_03_cardnews.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(' 스타벅스 앱 보안 강화',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '안전한 서비스 이용을 위하여 pay탭 이용, 다중기기 /해외 로그인 시 인증 절차 적용',
                                style: TextStyle(fontSize: 12),
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      height: 540,
                      color: Colors.cyan,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              flex: 3,
                              child: Image.asset(
                                'assets/04_04_cardnews.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(' 기장임랑원 크리스마스 이벤트 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '가장 임랑원 그랑스 하우스에서 베어리스타와 특별한 크리스마스 추억을 남겨보세요',
                                style: TextStyle(fontSize: 13),
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
