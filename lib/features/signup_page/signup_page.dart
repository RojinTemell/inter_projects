
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inter_projects/features/login_page/login_page.dart';
import 'package:provider/provider.dart';

import '../mixins/navigator_manager.dart';
import '../services/auth/auth_service.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_large_widget.dart';
import '../widgets/textfield_widget.dart';


class SignUpPage extends StatefulWidget with NavigatorManager {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  CollectionReference user = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController mailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    

    Future<void> signUp() async {
      final authService = Provider.of<AuthService>(context, listen: false);

      try {
        await authService.signUpUser(
            mailController.text, passwordController.text,userNameController.text);
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.3,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextLargeWidget(text: 'SIGN UP')),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Never Lost. Discover New Music.')),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                child: TextFieldWidget(
                  hintText: 'user name',
                  keyboardType: TextInputType.text,
                  controller: userNameController,
                 
                ),
              ),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                child: TextFieldWidget(
                  hintText: 'email address',
                  keyboardType: TextInputType.emailAddress,
                  controller: mailController,
                          
                ),
              ),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                child: TextFieldWidget(
                  hintText: ' password',
                  visiblePassword: true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBottonWidget(
                      title: 'CREATE ACCOUNT',
                      width: size.width * 0.5,
                      color: Colors.blue,
                      callback: () async {
                        if (_formKey.currentState!.validate()) {
                          signUp();
                          // SignUpProcess();

                           widget.navigateToWidget(context,const LoginPage());
                        }
                      },
                    ),
                    SvgPicture.asset(
                      'assets/spotify.svg',
                      width: 50,
                      height: 50,
                      // ignore: deprecated_member_use
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    const Text("Don't you have account?  "),
                    InkWell(
                        onTap: () {
                          widget.navigateToWidget(context, const LoginPage());
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}