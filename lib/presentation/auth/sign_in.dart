import 'package:domain_driven_design/application/auth/sign_in/cubit.dart';
import 'package:domain_driven_design/application/auth/sign_in/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<SignInCubit, SignInState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Form(
           /*   autovalidateMode: state.showErrorMessage
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,*/
              child: ListView(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "📝",
                    style: TextStyle(fontSize: 70),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      label: Text("Email"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                    autocorrect: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        label: Text("Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        )),
                    obscureText: true,
                    autocorrect: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: const Text("Log In With Google"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
