import 'package:chat/configurations/configurations.dart';
import 'package:chat/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// A page with email and password fields to login
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  FormGroup get _form => fb.group({
        'email': FormControl<String>(
          validators: [
            Validators.required,
            Validators.email,
          ],
        ),
        'password': FormControl<String>(
          validators: [
            Validators.required,
            Validators.minLength(6),
          ],
        ),
      });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: AutofillGroup(
        child: ReactiveFormBuilder(
            form: () => _form,
            builder: (context, form, child) => ListView(
                  children: [
                    Text(
                      'Welcome to DFChat',
                      style: textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: kPadding * 2,
                    ),
                    Text(
                      'Please login to continue',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: kPadding * 2,
                    ),
                    ReactiveTextField(
                      formControlName: 'email',
                      autofillHints: const [AutofillHints.email],
                    ),
                    const SizedBox(
                      height: kPadding * 2,
                    ),
                    ReactiveTextField(
                      formControlName: 'password',
                      obscureText: true,
                      autofillHints: const [AutofillHints.password],
                    ),
                    const SizedBox(
                      height: kPadding * 2,
                    ),
                    ReactiveFormConsumer(
                      builder: (context, form, child) => ElevatedButton(
                        onPressed: form.valid
                            ? () {
                                context
                                    .read<AuthCubit>()
                                    .loginWithEmailPassword(
                                      email: form.value['email'] as String,
                                      password:
                                          form.value['password'] as String,
                                    );
                              }
                            : null,
                        child: const Text('Login'),
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}
