/// This enum defines the [AppState].
///
/// It can be either [AppState.foreground], [AppState.background] or [AppState.closed].
enum AppState {
  /// [foreground] means that the app is in the foreground, i.e. currently open.
  foreground,

  /// [background] means that the app is in the background.
  background,

  /// [closed] means that the app is completely closed.
  closed,
}