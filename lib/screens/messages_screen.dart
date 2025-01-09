import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: 10, 
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            child: Text('U${index + 1}'), 
          ),
          title: Text('Message ${index + 1}'), 
          subtitle: Text('This is a preview of message ${index + 1}.'), 
          trailing: Icon(Icons.arrow_forward_ios), 
          onTap: () {

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Clicked on Message ${index + 1}')),
            );
          },
        ),
      ),
    );
  }
}