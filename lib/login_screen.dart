import 'package:flutter/material.dart';
import 'package:login/styles.dart';
import 'package:login/widget/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool isObscure = true;
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyles.title
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, 
              children: [
              Image.asset('assets/images/login.png'),
              const SizedBox(height: 24.0),
              Text(
                'Login Details',
                style: TextStyles.title.copyWith(fontSize: 20.0),
              ),
              const SizedBox(height: 24.0,),
              CustomTextfield(
                controller: emailController, 
                textInputType: TextInputType.emailAddress, 
                textInputAction: TextInputAction.next, 
                hint: 'Email or Username'
              ),
              const SizedBox(height: 16.0),
              CustomTextfield(
                controller: passwordController, 
                textInputType: TextInputType.visiblePassword, 
                textInputAction: TextInputAction.done, 
                hint: 'Password',
                isObscure: isObscure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
            const SizedBox(height: 8.0,),
            Text('Forgot Password? ', style: TextStyles.body),
            const SizedBox(height: 24.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.darkBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {}, 
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Login', 
                  style: TextStyles.title.copyWith(
                    fontSize: 20.0, 
                    color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Text(
              'Don\'t have an account?', 
              style: TextStyles.body.copyWith(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            Text(
              'Sign Up', 
              style: TextStyles.body.copyWith(fontSize: 18.0, 
              color: AppColors.darkBlue,
              ),
              textAlign: TextAlign.center
            ),
           ],
          ),
        ),
      ),
    );
  }
}