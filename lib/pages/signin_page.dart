import 'package:bhookmandu/pages/signup_page.dart';
import 'package:bhookmandu/widgets/custom_testfield.dart';
import 'package:bhookmandu/widgets/customappbar.dart';
import 'package:bhookmandu/widgets/drawer.dart';
import 'package:bhookmandu/widgets/footer.dart';
import 'package:flutter/material.dart';

class SiginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SiginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const AppDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Sign In',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          textInputType: TextInputType.emailAddress,
                          contoller: _emailController,
                          hintText: "Email Address",
                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          textInputType: TextInputType.visiblePassword,
                          contoller: _passwordController,
                          hintText: "Password",
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              backgroundColor: Colors.grey.shade300),
                          onPressed: () {},
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.grey.shade600),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SigUpPage()));
                            },
                            child: Text(
                              "Don't Have An Account?",
                              style: TextStyle(color: Colors.grey.shade600),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
