import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart' as web;

import 'package:djangoflow_auth_google/src/google_sign_in_button/google_sign_in_button.dart';

class GoogleSignInButton extends BaseGoogleSignInButton {
  GoogleSignInButton({super.key, super.onPressed, super.configurationWrapper})
      : super(
          child: (GoogleSignInPlatform.instance as web.GoogleSignInPlugin)
              .renderButton(
            configuration: configurationWrapper?.webConfiguration,
          ),
        );
}

extension GSIButtonConfigurationWrapperExtension on GSIButtonConfigWrapper {
  web.GSIButtonConfiguration? get webConfiguration =>
      web.GSIButtonConfiguration(
        minimumWidth: minimumWidth,
        locale: locale,
        theme: theme != null ? web.GSIButtonTheme.values[theme!.index] : null,
        logoAlignment: logoAlignment != null
            ? web.GSIButtonLogoAlignment.values[logoAlignment!.index]
            : null,
        shape: shape != null ? web.GSIButtonShape.values[shape!.index] : null,
        size: size != null ? web.GSIButtonSize.values[size!.index] : null,
        text: text != null ? web.GSIButtonText.values[text!.index] : null,
        type: type != null ? web.GSIButtonType.values[type!.index] : null,
      );
}
