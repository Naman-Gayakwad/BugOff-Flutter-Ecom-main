import 'package:engage_files/responsivescreen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black)),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveScreen.halfRepWidth(context, 16),
                ),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: ResponsiveScreen.halfRepWidth(context, 24),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveScreen.fullRepHeight(context, 24),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveScreen.halfRepWidth(context, 16),
                ),
                child: Text(
                  'Enter your email address below to reset your password.',
                  style: TextStyle(
                    fontSize: ResponsiveScreen.halfRepWidth(context, 16),
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveScreen.fullRepHeight(context, 40),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveScreen.halfRepWidth(context, 16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveScreen.fullRepHeight(context, 24),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveScreen.halfRepWidth(context, 16),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement password reset logic here
                  },
                  child: Text('Reset Password'),
                ),
              ),
            ])));
  }
}