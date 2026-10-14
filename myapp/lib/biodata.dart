
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Bio Data',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const BioDataPage(),
    );
  }
}

class BioDataPage extends StatelessWidget {
  const BioDataPage({super.key});

  Widget bioInfo(String title, String value) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 125,
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),
      appBar: AppBar(
        title: const Text('MY BIO DATA'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Colors.pink,
                child: Icon(
                  Icons.person,
                  size: 65,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                'PERSONAL INFORMATION',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),

            const SizedBox(height: 20),

            bioInfo('Full Name', 'Your Name'),
            bioInfo('Age', '20'),
            bioInfo('Birthday', 'Your Birthday'),
            bioInfo('Gender', 'Female'),
            bioInfo('Civil Status', 'Single'),
            bioInfo('Address', 'Your Address'),
            bioInfo('Contact', 'Your Contact Number'),
            bioInfo('Email', 'Your Email'),

            const SizedBox(height: 15),

            const Text(
              'EDUCATIONAL BACKGROUND',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),

            const SizedBox(height: 15),

            bioInfo('School', 'Your School'),
            bioInfo('Course', 'Your Course'),

            const SizedBox(height: 15),

            const Text(
              'OTHER INFORMATION',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),

            const SizedBox(height: 15),

            bioInfo('Hobbies', 'Your Hobbies'),
            bioInfo('Skills', 'Your Skills'),
            bioInfo('Languages', 'Filipino, English'),
          ],
        ),
      ),
    );
  }
}
