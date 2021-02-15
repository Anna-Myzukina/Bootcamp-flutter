import 'package:flutter/material.dart';

import 'package:chat/components/user_services.dart';
import 'package:chat/components/user_data.dart';

class UserPage extends StatefulWidget {
  // UserPage({Key key, this.name, this.email}) : super(key: key);
  // final String name;
  // final String email;

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<User> _users;
  bool _loading;
  bool _hasError;

  @override
  void initState() {
    super.initState();
    _loading = true;
    UserServices.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
        _hasError = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _loading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: null == _users ? 0 : _users.length,
                itemBuilder: (cotext, index) {
                  User user = _users[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text(user.email),
                  );
                },
              ));
  }
}
