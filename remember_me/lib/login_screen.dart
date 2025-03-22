import 'package:flutter/material.dart';
import 'package:remember_me/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = '';
  String password = '';

  bool rememberMe = false;
  bool obscurePass = true;

  @override
  void initState(){
    super.initState();
    fillFields();
  }

  void fillFields() async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    email= prefs.getString('email') ?? '';
    password = prefs.getString('password') ?? '';

    if(email.isNotEmpty && password.isNotEmpty){
      emailController.text = email;
      passwordController.text = password;
      rememberMe = true;
    }
    setState(() {});
  }

  void loginFun() async {
    if (rememberMe) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', emailController.text);
      prefs.setString('password', passwordController.text);
    }else{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove('email');
      prefs.remove('password');
    }
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Remember me')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 35,
            children: [
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscurePass,
                decoration: InputDecoration(
                  label: Text('Password'),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscurePass = !obscurePass;
                      });
                    },
                    icon:
                        obscurePass
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),
                      Text('Remember me'),
                    ],
                  ),
                  ElevatedButton(onPressed: loginFun, child: Text('Login')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
