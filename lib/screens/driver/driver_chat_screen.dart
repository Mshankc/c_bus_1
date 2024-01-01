import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../utils/app_text_styles.dart';
import '../../utils/colors.dart';

class DriverChatScreen extends StatefulWidget {
  const DriverChatScreen({Key? key}) : super(key: key);

  @override
  _DriverChatScreenState createState() => _DriverChatScreenState();
}

class _DriverChatScreenState extends State<DriverChatScreen> {
  TextEditingController _messageController = TextEditingController();
  late String _username;
  late String _userRole;
  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString('username') ?? '';
      _userRole = prefs.getString('userRole') ?? '';
    });
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      FirebaseFirestore.instance.collection('messages').add({
        'username': _username,
        'userRole': _userRole,
        'message': _messageController.text,
        'timestamp': FieldValue.serverTimestamp(),
      });
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('messages')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView.builder(
                  reverse: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var message = snapshot.data!.docs[index].data() as Map<String, dynamic>;
                    return _buildMessage(message);
                  },
                );
              },
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildMessage(Map<String, dynamic> message) {
    return ListTile(
      title: Text(message['username'].toString()),
      subtitle: Text(message['message']),
    );
  }

  Widget _buildInputField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          FloatingActionButton(
            onPressed: _sendMessage,
            child: Icon(Icons.send),
            backgroundColor: AppColors.kChildConatinerColor,
          ),
        ],
      ),
    );
  }
}