import 'package:flutter/material.dart';
import 'package:online_purchase/components/reusable_widgets.dart';
import 'package:online_purchase/screens/auth/sign_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController? _editingControllerUsername, _editingControllerPassword;

  @override
  void initState() {
    _editingControllerUsername = TextEditingController();
    _editingControllerPassword = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            rPrimaryTextField(
                controller: _editingControllerUsername,
                keyboardType: TextInputType.emailAddress,
                borderColor: Theme.of(context).primaryColor,
                prefixIcon: Icon(
                  Icons.email,
                  color: Theme.of(context).primaryColor,
                ),
                hintText: 'Email or username'),
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
            const Text(
              'Forgot Password ?',
              textAlign: TextAlign.right,
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: rPrimaryButton(
                      backgroundColor: Theme.of(context).primaryColor,
                      buttonText: 'Login',
                      onPressed: () async {}),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: rPrimaryButton(
                      backgroundColor: Theme.of(context).primaryColor,
                      buttonText: 'Sign Up',
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const SignUp(),
                            fullscreenDialog: true,
                          ),
                        );
                      }),
                )
              ],
            ),
            const Center(
                child: Padding(
              padding: EdgeInsets.all(64.0),
              child: Text('OR'),
            )),
            Center(
              child: GestureDetector(
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/facebook.png'),
                ),
                onTap: () async {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
