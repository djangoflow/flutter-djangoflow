<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow Logo" width="200">
  <h1>DjangoFlow OpenAPI Extensions 👻</h1>
  <p align="center">
  <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_openapi_extensions">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_openapi_extensions.svg">
  </a>
</p>
</div>

## Overview

🚀 `djangoflow_openapi_extensions` is a Flutter package that empowers your Dio error handling in DjangoFlow OpenAPI projects with style and ease. Say goodbye to confusing error messages!

## Features

🎉 **Configurable Error Messages:** Customize error messages according to your app's vibe.

🔮 **Enhanced Error Handling:** Transform Dio error messages into user-friendly and meaningful forms.

🛠️ **Easy Integration:** Effortlessly integrate enhanced error handling into your Dio client.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_openapi_extensions: <latest_version>
```

## Usage

<ol>
  <li>Configure Error Messages:</li>
</ol>

```dart
import 'package:djangoflow_openapi_extensions/djangoflow_openapi_extensions.dart';

void main() {
  // Customize error messages as needed
  final customConfig = ErrorMessageConfig(
    serverUnreachable: 'Cannot reach the server',
    maintenance: 'Under maintenance - try again later',
    // ... other custom messages
  );

  final transformer = ErrorMessageTransformer(config: customConfig);

  final errorInterceptor = ErrorInterceptor(errorMessageTransformer: transformer);

  // Use errorInterceptor with your Dio client
  final dio = Dio();
  dio.interceptors.add(errorInterceptor);
  DjangoflowOpenapi(
    dio:dio
    // other properties...
  );
}
```

<ol start="2">
  <li>Handling Dio Errors:</li>
</ol>

```dart
try {
  // Make Dio requests
} on DioException catch (error) {
  // Errors will be transformed based on your configuration
  print(error.message);
}
```

## Contributing

🙌 Contributions are welcome! Feel free to submit issues and pull requests to enhance this package.

## License

📜 This package is released under the [MIT License](./LICENSE).

---

If you encounter any issues or have questions, please feel free to <a href="https://github.com/djangoflow/flutter-djangoflow/issues">open an issue</a>.

Happy coding! ✨🚀
