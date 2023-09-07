import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class VersionSettingsTile extends AbstractSettingsTile {
  final String appVersion;

  const VersionSettingsTile({Key? key, required this.appVersion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      appVersion,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
