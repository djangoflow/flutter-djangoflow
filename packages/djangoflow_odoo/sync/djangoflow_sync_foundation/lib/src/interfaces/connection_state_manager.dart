abstract class ConnectionStateManager {
  bool get isOnline;
  Stream<bool> get connectionStateStream;
  Future<bool> checkConnection();
}
