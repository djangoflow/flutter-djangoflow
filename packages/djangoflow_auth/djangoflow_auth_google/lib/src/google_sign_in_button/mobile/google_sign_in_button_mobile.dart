import 'package:flutter/material.dart';

import 'package:djangoflow_auth_google/src/google_sign_in_button/google_sign_in_button.dart';

class GoogleSignInButton extends BaseGoogleSignInButton {
  GoogleSignInButton({super.key, super.onPressed, super.configurationWrapper})
      : super(
          child: ElevatedButton(
            onPressed: onPressed,
            child: const Text('Continue with Google'),
          ),
        );
}
