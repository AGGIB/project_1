import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F7FA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'SMS',
                              style: TextStyle(color: Color(0xFF8693A3)),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'MMS',
                              style: TextStyle(color: Color(0xFF29364E)),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFBFFF07),
                              shadowColor: Colors.transparent,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Voice',
                              style: TextStyle(color: Color(0xFF8693A3)),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: DropdownMenu(
                          width: 280,
                          hintText: 'Landline or Mobile',
                          textStyle: TextStyle(fontWeight: FontWeight.w800),
                          dropdownMenuEntries: <DropdownMenuEntry<Color>>[
                            DropdownMenuEntry(value: Colors.red, label: 'SMS'),
                            DropdownMenuEntry(
                                value: Colors.black, label: 'MMS'),
                            DropdownMenuEntry(
                                value: Colors.blue, label: 'Voice'),
                          ],
                        ),
                      ),
                      CheckboxListTile(
                        title: Text(
                          'Show number without verification',
                          style: TextStyle(fontSize: 13),
                        ),
                        value: isChecked,
                        activeColor: Color(0xFFBFFF07),
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('lib/assets/images.png'),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Text('United States',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          '+1 (201) 123 45 67',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('New Jersey'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.circle_outlined),
                            Icon(Icons.circle_outlined)
                          ],
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          '+1 (201) 123 45 67',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Washington'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.circle_outlined),
                            Icon(Icons.circle_outlined)
                          ],
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          '+1 (201) 123 45 67',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Washington'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.circle_outlined),
                            Icon(Icons.circle_outlined)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('lib/assets/images.png'),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Text('United States',
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      ListTile(
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.circle_outlined),
                            Icon(Icons.circle_outlined),
                          ],
                        ),
                        title: Text(
                          '+1 (201) 123 45 67',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('New Jersey'),
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          '+1 (201) 123 45 67',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Washington'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.circle_outlined),
                            Icon(Icons.circle_outlined),
                          ],
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          '+1 (201) 123 45 67',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Washington'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.circle_outlined),
                            Icon(Icons.circle_outlined),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
