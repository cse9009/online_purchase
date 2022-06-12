import 'package:flutter/material.dart';
import 'package:online_purchase/components/reusable_widgets.dart';
import 'package:online_purchase/sate_management/app_settings.dart';
import 'package:online_purchase/sate_management/preferences_settings.dart';
import 'package:online_purchase/screens/auth/sign_up.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.onStateChange}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
  final VoidCallback onStateChange;
}

class _LoginState extends State<Login> {
  late StreamingSharedPreferencesSettings _streamingSharedPreferencesSettings;
  TextEditingController? _editingControllerUsername, _editingControllerPassword;

  @override
  void initState() {
    _editingControllerUsername = TextEditingController();
    _editingControllerPassword = TextEditingController();
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _streamingSharedPreferencesSettings =
        Provider.of<AppSettings>(context).streamingSharedPreferencesSettings;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _streamingSharedPreferencesSettings.token.getValue().isEmpty
            ? Column(
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
                            onPressed: () async {
                              //TODO: For Testing purpose only
                              _streamingSharedPreferencesSettings.token
                                  .setValue('my-token');
                              _streamingSharedPreferencesSettings.fullName
                                  .setValue('Than Aung Kyow');
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Demo Sign In is completed',
                                  ),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              setState(() {});
                              widget.onStateChange();
                            }),
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
                                  builder: (BuildContext context) =>
                                      const SignUp(),
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
              )
            : const Center(
                child: Text('You are authenticated now'),
              ),
      ),
    );
  }
}
