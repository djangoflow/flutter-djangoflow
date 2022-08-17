## Features

This is a very opinionated setup of a production grade flutter app.

What you get out of the box:

- a safe way to run your material app
- exception handling
- sentry setup
- 
- analytics - firebase, facebook and mixpanel with screen events logging
- auto_route setup
- sandbox and live environments and switching between them
- switching of app theme
- switching op app locale
- firebase message handling
- app lifecycle handling

## Getting started


```dart

class MyAnalyticsEvents extends BasicAnalyticsEvents {
  
}

Future<void> main() async => App.run(
  sentryDSN: kSentryDSN,
  onInit: () async {
    await AnalyticsRepository.init(
      events: AnalyticsEvents(),
      defaultParameters: {}
    );
    if (kIsWeb) {
      await FacebookAuth.i.webInitialize(
        appId: facebookAppId,
        cookie: true,
        xfbml: true,
        version: 'v13.0',
      );
    }
  },
    
  onMessage(context, RemoteMessage message){}
  onNotificationTap(context, RemoteMessage message){}
    title: 'GetEase Client',
    router: AppRouter(authGuard: AuthGuard(), firstRunGuard: FirstRunGuard()),
    initialRoutes: kIsWeb
        ? null
        : [
      const HomeTabRouter(),
      if (!kIsWeb) SplashRoute(backgroundColor: AppColors.white),
    ],
    fallbackTheme: AppTheme.light,
    builder: (context, widget) => FirebaseMessageListener(
      child: ResponsiveBuilder(
child: SandboxBannerBuilder(
      child: AuthCubitListener(
child: widget,
)
)
) SandboxBanner.builder()
);
```

## Usage


```dart
FirebaseNotificationsListener(
  onMessage(context, remoteMessage)
  onRemoteNotifcationTap(context, remoteMessage)
)
```
