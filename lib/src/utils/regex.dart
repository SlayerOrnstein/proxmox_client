/// Proxmox regex for commands
enum ProxmoxRegex {
  /// regex patter for acr-values
  acrValues(r'^[^\x00-\x1F\x7F <>#"]*$'),

  /// regex patter for domain
  domain(r'\S+'),

  /// regex patter for prompt
  prompt(r'(?:none|login|consent|select_account|\S+)'),

  /// regex patter for sync-defaults=options
  syncDefaultsOptions(
    // ignore: lines_longer_than_80_chars
    r'^(enable-new=(1|0))?(,full=(1|0))?(,purge=(1|0))?(,remove-vanished=(acl|entry|properties)(;(acl|entry|properties))*)?(,scope=(users|groups|both))?$',
  ),

  /// regex patter for acr-values
  syncAttributes(r'\w+=[^,]+(,\s*\w+=[^,]+)*'),

  /// regex patter for tfa
  tfa('type=<TFATYPE>[,digits=<COUNT>][,id=<ID>][,key=<KEY>]'
      '[,step=<SECONDS>][,url=<URL>]'),

  /// regex patter for user_attr
  userAttributes(r'\S{2,}');

  const ProxmoxRegex(this.pattern);

  /// Pattern to use for regex
  final String pattern;

  /// The regex itself
  RegExp get regExp => RegExp(pattern);

  /// Shortcut for [RegExp.hasMatch()]
  bool hasMatch(String input) => regExp.hasMatch(input);

  /// Shortcut for [RegExp.allMatches()]
  Iterable<RegExpMatch> allMatches(String input) => regExp.allMatches(input);
}
