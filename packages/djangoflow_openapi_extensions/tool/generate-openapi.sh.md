# OpenAPI Client Generation Script

This script automates the process of generating an OpenAPI client packaged as `djangoflow_openapi` locally using a specified hostname and API version. Then we can override the remote `djangoflow_openapi` with this local one to access our project specific models, endpoints etc. It uses the OpenAPI Generator to create a Dart client based on the provided or default parameters.

## Prerequisites

- [Flutter](https://flutter.dev) installed (for running Flutter commands)
- [Dart](https://dart.dev) installed (for running Dart commands)
- [OpenAPI Generator](https://openapi-generator.tech) CLI installed (or set in the environment as OPENAPI_GENERATOR)

## Usage

You can directly execute the script using the following `curl | sh` command:

```bash
curl -sSL https://raw.githubusercontent.com/djangoflow/flutter-djangoflow/main/packages/djangoflow_openapi_extensions/tool/generate-openapi.sh | sh -s [hostname] [API_VERSION]
```

Replace `[hostname]` with the base URL for the OpenAPI schema. If not provided, the script will default to `http://127.0.0.1:8000`. Replace `[API_VERSION]` with the version of the API. If not provided, it defaults to `v1`.

## Example

To generate the OpenAPI client using a specific hostname and API version:

```bash
curl -sSL https://raw.githubusercontent.com/djangoflow/flutter-djangoflow/main/packages/djangoflow_openapi_extensions/tool/generate-openapi.sh | sh -s http://api.example.com:8000 v2
```

To use the default hostname and API version:

```bash
curl -sSL https://raw.githubusercontent.com/djangoflow/flutter-djangoflow/main/packages/djangoflow_openapi_extensions/tool/generate-openapi.sh | sh
```

## Notes

- The script performs the following steps:
  - Sets up required environment variables.
  - Creates a target directory for the generated code.
  - Uses OpenAPI Generator to generate Dart client code.
  - Modifies generated code to fix an issue related to null fields.
  - Upgrades Flutter packages.
  - Runs Dart build runner to generate code.
- You can modify the default API version and other configuration options directly in the script.
- Make sure to have the required tools (Flutter, Dart, and OpenAPI Generator) installed and configured in your environment.

## Troublshooting

- It may not run `build_runner` due to https://github.com/dart-lang/pub/issues/3978, to resolve it please navigate to `YOUR_DIR/packages/djangoflow_openapi` and run `dart run build_runner build`.
