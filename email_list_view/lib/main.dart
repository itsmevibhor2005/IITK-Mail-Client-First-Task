import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const EmailListApp(),
      debugShowCheckedModeBanner: false,

      
    );
  }
}
class EmailListApp extends StatelessWidget{
  const EmailListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Email List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmailListPage(),
    );
  }
}
class EmailListPage extends StatefulWidget {
  EmailListPage({super.key});

  @override
  _EmailListPageState createState() => _EmailListPageState();
}
class _EmailListPageState extends State<EmailListPage> {
  
  final List<String> emails = List.generate(20, (index) => 'user$index@example.com');
  final List<bool> isStarred = List.generate(20, (index) => false);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 27, 79),
        title: Center(
          child: Text('INBOX', style: TextStyle(
            
            color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        iconTheme: IconThemeData(color: Colors.white), 
        // Set hamburger icon color to white
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Handle user icon pressed
            },
          ),
          
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.inbox),
              title: const Text('Inboxes'),
              onTap: () {
                // Handle inboxes button tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: const Text('Sent'),
              onTap: () {
                // Handle sent button tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.drafts),
              title: const Text('Draft'),
              onTap: () {
                // Handle draft button tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Starred'),
              onTap: () {
                // Handle starred button tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Trash'),
              onTap: () {
                // Handle trash button tap
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Handle logout button tap
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView.separated(
            itemCount: emails.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(emails[index][0].toUpperCase()),
                ),
                title: Text(emails[index]),
                subtitle: Text('This is the subtitle for ${emails[index]}'),
                trailing: IconButton(
                  icon: Icon(
                    isStarred[index] ? Icons.star : Icons.star_border,
                    color: isStarred[index] ? Colors.yellow : null,
                  ),
                  onPressed: () {
                    setState(() {
                      isStarred[index] = !isStarred[index];
                    });
                  },
                ),
              );
            },
            separatorBuilder: (context, index) {
          return Divider(
            thickness: 1,
            color: Colors.grey[300],
          );
        },
      
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Handle compose button press
              },
              child: const Icon(Icons.create),
              tooltip: 'Compose',
            ),
          ),
        ],
      ),
    );
  }
}
