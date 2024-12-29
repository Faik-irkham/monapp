import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _opacity = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 2),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              'Battleground',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -90,
                      left: -200,
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: Image.asset(
                          'assets/img-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Text(
                  'V/S',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 10),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -90,
                      left: -100,
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: Image.asset(
                          'assets/img-2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Image.asset('assets/player-1.png')),
                Expanded(child: Image.asset('assets/you.png')),
              ],
            ),
            Divider(
              color: const Color(0XFF333333),
              thickness: 4.98,
            ),
            const SizedBox(height: 30),
            Text(
              'Choose Your Attack',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 124,
                        width: 184,
                        decoration: BoxDecoration(
                          color: const Color(0XFFFFE4DD),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0XFFFF4210),
                            width: 2,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 20,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/gmb1.png',
                              height: 100,
                              width: 130,
                            ),
                            Text(
                              'Giga Impact',
                              style: TextStyle(
                                color: const Color(0XFFFF4210),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 124,
                        width: 184,
                        decoration: BoxDecoration(
                          color: const Color(0XFF222222),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 20,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/gmb2.png',
                              height: 130,
                              width: 150,
                            ),
                            Text(
                              'Aerial Ace',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 124,
                        width: 184,
                        decoration: BoxDecoration(
                          color: const Color(0XFF222222),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 20,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/gmb3.png',
                              height: 100,
                              width: 130,
                            ),
                            Text(
                              'Giga Impact',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 124,
                        width: 184,
                        decoration: BoxDecoration(
                          color: const Color(0XFF222222),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 20,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/gmb4.png',
                              height: 130,
                              width: 150,
                            ),
                            Text(
                              'Aerial Ace',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // More widgets follow here...
          ],
        ),
      ),
    );
  }
}
