/// Configuration for error messages
class ErrorMessageConfig {
  final String serverUnreachable;
  final String maintenance;
  final String connectionTimeout;
  final String connectionError;
  final String offline;
  final String serverFault;

  const ErrorMessageConfig({
    this.serverUnreachable = 'Server unreachable',
    this.maintenance = 'Server maintenance - try again later',
    this.connectionTimeout =
        'Server connection timed out - check your connection',
    this.connectionError =
        'Failed to connect to server - check your connection',
    this.offline = 'You seem to be offline',
    this.serverFault = 'Server fault - work in progress',
  });
}
