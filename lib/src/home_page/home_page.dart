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
              child: Row(
                children: [
                  Text(tWelcomeText1, style: TextStyle(fontSize: 20)),
                  Text(
                    tWelcomeText2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
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
                for (final moodImage in [
                  tMoodImage1,
                  tMoodImage2,
                  tMoodImage3,
                  tMoodImage4
                ])
                  _buildMoodContainer(moodImage),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (final moodText in [
                  tMoodText1,
                  tMoodText2,
                  tMoodText3,
                  tMoodText4
                ])
                  _buildMoodText(moodText),
              ],
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tTitleText1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Row(
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
                ],
              ),
            ),
            const SizedBox(height: 20),
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
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
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
                for (var i = 0; i < 3; i++)
                  Indicator(isActive: _selectedIndex == i),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tTitleText3,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Row(
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
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _buildExerciseContainer(tExerciseIconImage1, tExerciseTexts1,
                    const Color.fromARGB(255, 128, 149, 245)),
                _buildExerciseContainer(tExerciseIconImage2, tExerciseTexts2,
                    const Color.fromARGB(255, 203, 69, 248)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _buildExerciseContainer(tExerciseIconImage3, tExerciseTexts3,
                    const Color.fromARGB(255, 243, 150, 56)),
                _buildExerciseContainer(tExerciseIconImage4, tExerciseTexts4,
                    const Color.fromARGB(255, 80, 154, 202)),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps_outlined, color: Colors.black),
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

  Widget _buildMoodContainer(String imageAsset) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 70.0,
      width: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        border: Border.all(width: 10, color: Colors.grey),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(imageAsset),
      ),
    );
  }

  Widget _buildMoodText(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36.0),
      child: Text(text),
    );
  }

  Widget _buildExerciseContainer(
      String iconImage, String text, Color iconColor) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: iconColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Image.asset(
              iconImage,
              color: iconColor,
              width: 30.0,
              height: 30.0,
            ),
            const SizedBox(width: 16.0),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
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
