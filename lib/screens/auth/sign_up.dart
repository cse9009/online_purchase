import 'package:flutter/material.dart';
import 'package:online_purchase/components/reusable_widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController? _editingControllerUsername,
      _editingControllerPassword,
      _editingControllerName,
      _editingControllerPhone,
      _editingControllerEmail,
      _editingControllerAddress;

  @override
  void initState() {
    _editingControllerUsername = TextEditingController();
    _editingControllerPassword = TextEditingController();
    _editingControllerName = TextEditingController();
    _editingControllerPhone = TextEditingController();
    _editingControllerEmail = TextEditingController();
    _editingControllerAddress = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('Create Account'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              rPrimaryTextField(
                  controller: _editingControllerUsername,
                  keyboardType: TextInputType.name,
                  borderColor: Theme.of(context).primaryColor,
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintText: 'Username'),
              const SizedBox(
                height: 16,
              ),
              rPrimaryTextField(
                  controller: _editingControllerPassword,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  borderColor: Theme.of(context).primaryColor,
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintText: 'Password'),
              const SizedBox(
                height: 16,
              ),
              rPrimaryTextField(
                  controller: _editingControllerName,
                  keyboardType: TextInputType.name,
                  borderColor: Theme.of(context).primaryColor,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintText: 'Name'),
              const SizedBox(
                height: 16,
              ),
              rPrimaryTextField(
                  controller: _editingControllerPhone,
                  keyboardType: TextInputType.number,
                  borderColor: Theme.of(context).primaryColor,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintText: 'Phone'),
              const SizedBox(
                height: 16,
              ),
              rPrimaryTextField(
                  controller: _editingControllerEmail,
                  keyboardType: TextInputType.emailAddress,
                  borderColor: Theme.of(context).primaryColor,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintText: 'Email'),
              const SizedBox(
                height: 16,
              ),
              rPrimaryTextField(
                  controller: _editingControllerAddress,
                  keyboardType: TextInputType.streetAddress,
                  borderColor: Theme.of(context).primaryColor,
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintText: 'Address'),
              const SizedBox(
                height: 16,
              ),
              rPrimaryButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  buttonText: 'Submit',
                  onPressed: () {})
            ],
          ),
        ));
  }
}
