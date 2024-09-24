import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 20,
    lineLength: 50,
    colors: true,
    printEmojis: true,
    printTime: true,
  ),
);
