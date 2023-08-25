# Enabling CopyWith extension with Djangoflow OpenAPI client script

This script adds the `CopyWith` extension with locally generated `djangoflow_openapi` models to enable the `copyWith` extension method. It automates the process of adding the `@CopyWith` annotation and necessary imports to the Dart model files.

## Prerequisites

- [Flutter](https://flutter.dev) installed (for running Flutter commands)
- [Dart](https://dart.dev) installed (for running Dart commands)

## Usage

You can directly execute the script using the following `curl | sh` command:

```bash
curl -sSL https://raw.githubusercontent.com/djangoflow/flutter-djangoflow/main/packages/djangoflow_openapi_extensions/tool/generate-openapi-copywith.sh | sh
```

## Notes

- as `json_serialiable` does not support copyWith method, this script installs `copy_with_extension` and `copy_with_extension_gen`
  in the locally generated `djangoflow_openapi` package and adds `@CopyWith` annotation to all the models.
- it also generates the generated files `copyWith` methods.
- Make sure to have the required tools (Flutter, Dart, and OpenAPI Generator) installed and configured in your environment.

## Troublshooting

- It may not run `build_runner` due to https://github.com/dart-lang/pub/issues/3978, to resolve it please navigate to `YOUR_DIR/packages/djangoflow_openapi` and run `dart run build_runner build` manually.
