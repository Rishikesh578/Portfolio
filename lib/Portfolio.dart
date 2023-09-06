import 'package:flutter/material.dart';

class Personal_portfolio extends StatelessWidget {
  const Personal_portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Personal portfolio',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/bantydp.jpg'),
                    radius: 80,
                    // backgroundColor: Colors.orangeAccent,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Rishikesh Raj',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 7),
                const ListTile(
                  title: Text(
                    'rishirajkumar@gmail.com',
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: Icon(Icons.email),
                ),
                const SizedBox(height: 7),
                const ListTile(
                  title: Text(
                    '7563****78',
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: Icon(Icons.phone),
                ),
                const SizedBox(height: 7),
                const ListTile(
                  title: Text(
                    'Bhojpur,Bihar',
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: Icon(Icons.location_city_outlined),
                ),
                const SizedBox(height: 7),
                const ListTile(
                  title: Text(
                    'Mobile App developer',
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: Icon(Icons.mobile_friendly),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed:() {
                  Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context)=> const Edu_details(),
                   ),
                );}, 
                child: const Text('Education Details'),
                ),
              ]
            )));
  }
}


// import 'package:education/main.dart';
// import 'package:flutter/material.dart';
class Edu_details extends StatelessWidget {
  const Edu_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Education Details',textAlign: TextAlign.center),
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.arrow_back), 
      ),
      body:Column(
        children:  [
          const SizedBox(height: 9),
          const ListTile(
            title: Text('Bachlor of Computer Application'),
            subtitle: Text('Flutter developer'),
            leading: Icon(Icons.school),
            trailing: Text('2021 - 2024'),
          ),
          const SizedBox(height: 9),
          const ListTile(
            title: Text('Tulsi High School'),
            subtitle: Text('Intermediate school'),
            trailing: Text('2020 - 2021'),
            leading: Icon(Icons.school),
          ),
          const SizedBox(height: 9),
          const ListTile(
            title: Text('C B S C Central School'),
            subtitle: Text('High school'),
            leading: Icon(Icons.school),
            trailing: Text('2018 - 2019'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () { 
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) { 
                  return const Personal_portfolio();
                },
                ),
              );
            },
            child: const Text('Go Back'),
            ),
            
        ]
        ),
    );
  }
}


