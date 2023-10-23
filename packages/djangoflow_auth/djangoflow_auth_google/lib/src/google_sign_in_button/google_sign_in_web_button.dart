import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mounted_state/mounted_state.dart';

import 'google_sign_in_button.dart';

class GoogleSignInWebButton extends StatefulWidget {
  const GoogleSignInWebButton({
    super.key,
    required this.onSignIn,
    required this.googleSignIn,
    this.enableSilentLogin,
    this.configurationWrapper,
  });

  final GoogleSignIn googleSignIn;
  final bool? enableSilentLogin;
  final GSIButtonConfigWrapper? configurationWrapper;

  final Function(GoogleSignInAccount? googleSignInAccount) onSignIn;

  @override
  State<GoogleSignInWebButton> createState() => _GoogleSignInWebButtonState();
}

class _GoogleSignInWebButtonState extends State<GoogleSignInWebButton>
    with MountedStateOverride {
  bool _isAuthorized = false; // has granted permissions?
  @override
  void initState() {
    super.initState();
    final scopes = widget.googleSignIn.scopes;
    widget.googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) async {
      bool isAuthorized = account != null;
      if (kIsWeb && isAuthorized) {
        isAuthorized = await widget.googleSignIn.canAccessScopes(scopes);
        if (isAuthorized) {
          widget.onSignIn(account);
        } else {
          final canAccessScopeNow =
              await widget.googleSignIn.requestScopes(scopes);
          if (canAccessScopeNow) {
            widget.onSignIn(account);
          }
        }

        setState(() {
          _isAuthorized = isAuthorized;
        });
      }
    });
    if (widget.enableSilentLogin ?? false) {
      widget.googleSignIn.signInSilently();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isAuthorized) {
      return const SizedBox();
    } else {
      return GoogleSignInButton(
        configurationWrapper: widget.configurationWrapper,
      );
    }
  }
}
