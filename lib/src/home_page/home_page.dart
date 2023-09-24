import 'package:flutter/material.dart';
import 'package:hero_games_case/src/constant/image_strings.dart';
import 'package:hero_games_case/src/constant/text_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(children: [
                Text(tWelcomeText1, style: TextStyle(fontSize: 20)),
                Text(tWelcomeText2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
              ]),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(tWelcomeText3),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(width: 10, color: Colors.grey),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(tMoodImage1),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(width: 10, color: Colors.grey),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(tMoodImage2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(width: 10, color: Colors.grey),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(tMoodImage3),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(width: 10, color: Colors.grey),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(tMoodImage4),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: const Text(tMoodText1),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: const Text(tMoodText2),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: const Text(tMoodText3),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: const Text(tMoodText4),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        tTitleText1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Text(
                            tTitleText2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 15),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.green,
                            size: 17,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 26.0),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color.fromARGB(255, 224, 247, 224),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        controller: PageController(viewportFraction: 1),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      tPageBuilderText1,
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 15.0),
                                    Text(
                                      tPageBuilderText2,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Icon(Icons.play_circle_fill,
                                            color: Colors.green, size: 35),
                                        SizedBox(width: 10),
                                        Text(
                                          tPageBuilderText3,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              Container(
                                width: 150,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(tPageBuilderImage),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          3,
                          (index) => Indicator(
                              isActive: _selectedIndex == index ? true : false),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        tTitleText3,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Text(
                            tTitleText2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 15),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.green,
                            size: 17,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 216, 191, 221),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          tExerciseIconImage1,
                          color: const Color.fromARGB(255, 227, 119, 247),
                          width: 30.0,
                          height: 30.0,
                        ),
                        const SizedBox(width: 16.0),
                        const Text(
                          tExerciseTexts1,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 233, 253),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          tExerciseIconImage2,
                          width: 30.0,
                          height: 30.0,
                        ),
                        const SizedBox(width: 16.0),
                        const Text(
                          tExerciseTexts2,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 246, 246),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          tExerciseIconImage3,
                          color: const Color.fromARGB(255, 255, 190, 185),
                          width: 30.0,
                          height: 30.0,
                        ),
                        const SizedBox(width: 16.0),
                        const Text(
                          tExerciseTexts3,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 220, 239, 252),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          tExerciseIconImage4,
                          width: 30.0,
                          height: 30.0,
                        ),
                        const SizedBox(width: 16.0),
                        const Text(
                          tExerciseTexts4,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps, color: Colors.black),
              label: 'App',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined, color: Colors.black),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.black),
              label: 'Profile',
            ),
          ],
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: isActive ? 8.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromARGB(255, 116, 115, 115)
            : const Color.fromARGB(255, 182, 180, 180),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
