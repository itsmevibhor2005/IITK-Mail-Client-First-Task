import 'package:flutter/material.dart';

class EmailListApp extends StatelessWidget{
  const EmailListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmailListPage(),
    );
  }
}
class EmailListPage extends StatelessWidget{
  EmailListPage({super.key});
  final List<String> emails = List.generate(20, (index) => 'user$index@example.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email List'),
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(emails[index][0].toUpperCase()),
            ),
            title: Text(emails[index]),
            subtitle: Text('This is the subtitle for ${emails[index]}'),
          );
        },
      ),
    );
  }
}
