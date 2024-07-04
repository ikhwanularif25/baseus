import 'package:baseus/screens/initial_screen.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isSwitched = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left_rounded),
        ),
        title: const Center(
          child: Text(
            "Settings",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Account & Security",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Region",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "USA/Japan/Other",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Open Source License",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Allow Devices Connection\nProtection",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "Reduce the probability that app background\nrunning is recycled",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 0.85, // Ubah nilai scale sesuai kebutuhan
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeColor: Colors.yellow,
                      activeTrackColor: Colors.black,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Tailored Push Management",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "Content you may like",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 0.85, // Ubah nilai scale sesuai kebutuhan
                    child: Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                        });
                      },
                      activeColor: Colors.yellow,
                      activeTrackColor: Colors.black,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              "Customer Email : care@baseus.coom",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InitialScreen()),
                );
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[900]!,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
