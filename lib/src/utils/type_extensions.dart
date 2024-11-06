/// Extensions to help with proxmox to dart booleans
extension ProxmoxBool on bool {
  /// Takes a Proxmox int to a bool
  static bool parse(int value) => value == 1;

  ///  Turns a [bool] into an int bool
  int toInt() => this ? 1 : 0;
}

extension UriExtras on Uri {
  /// Adds to path
  Uri addPath(String path) => replace(path: '${this.path}/$path');
}
