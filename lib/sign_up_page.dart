// ignore_for_file: null_check_always_fails

import 'package:flutter/material.dart';
import 'package:my_dairy_farm_frontend/utils/constants/constants.dart';
import 'package:my_dairy_farm_frontend/utils/customs/custom_rich_text.dart';
import 'package:my_dairy_farm_frontend/utils/customs/custom_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _numberController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppConstants.primaryColor_white,
                height: h * 0.3,
                width: w,
                child: Image.asset('assets/images/signup.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 71, left: 14, right: 14),
                child: Container(
                  color: AppConstants.primaryColor_white,
                  height: h * 0.66,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: AppConstants.headingTextStyle_L
                                .copyWith(fontSize: 28),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Sign in to Continue',
                            style: AppConstants.headingTextStyle_S
                                .copyWith(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const CustomRichText(
                            FirstText: 'Number',
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          CustomTextFormField(
                            controller: _numberController,
                            hintText: 'Enter Number',
                            validator: (value) {
                              if (value!.isEmpty || value.length == 10) {
                                return 'Number must be a Mobile Number';
                              }
                              return null!;
                            },
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          const CustomRichText(
                            FirstText: 'Password',
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          CustomTextFormField(
                            controller: _passwordController,
                            hintText: 'Enter Password',
                            isPassword: true,
                            obscureTexts: true,
                            validator: (value) {
                              if (value!.isEmpty || value.length < 6) {
                                return 'Password must be at least 6 characters long';
                              }
                              return null!;
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forget Password?',
                                style: AppConstants.headingTextStyle_S.copyWith(
                                    color: AppConstants.secondaryColor_red,
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        AppConstants.secondaryColor_red),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                width: 300,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        AppConstants.secondaryColor_brightgreen,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    padding: EdgeInsets.zero,
                                    elevation: 0,
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 40),
                                      child: const Text(
                                        'Sign In',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Are you a farm owner',
                                    style: AppConstants.headingTextStyle_S
                                        .copyWith(fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Sign Up',
                                      style: AppConstants.headingTextStyle_M
                                          .copyWith(
                                        color: AppConstants
                                            .secondaryColor_brightgreen,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
