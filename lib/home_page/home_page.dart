import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
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
              Text("Hello, ", style: TextStyle(fontSize: 20)),
              Text("Sara Rose",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            ]),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("How are you feeling today ?"),
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
                  backgroundImage: AssetImage('assets/images/love.png'),
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
                  backgroundImage: AssetImage('assets/images/cool.png'),
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
                  backgroundImage: AssetImage('assets/images/happy.png'),
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
                  backgroundImage: AssetImage('assets/images/sad.png'),
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
                    child: const Text("Love"),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 36.0),
                    child: const Text("Cool"),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 36.0),
                    child: const Text("Happy"),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 36.0),
                    child: const Text("Sad"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "Feature",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      children: [
                        Text(
                          "See more ",
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
              Container(),
            ],
          ),
        ],
      ),
    );
  }
}
