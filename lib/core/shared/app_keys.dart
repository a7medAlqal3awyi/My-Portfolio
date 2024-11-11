import 'package:flutter/material.dart';

/// This class is to centralize the keys used in the application.
/// To avoid the repetition of the same and to group in a unique way.

class AppKeys {
  static const presentation = Key('presentation');
  static const certifications = Key('certifications');
  static const projects = Key('projects');
  static const experience = Key('experience');
  static const social = Key('social');
  static const contact = Key('contact');
  static const customFooter = Key('custom_footer');

  /// Social
  static const socialItemGitHub = Key('social_list_git_hub');
  static const socialItemLinkedIn = Key('social_list_linked_in');
  static const socialItemTelegram = Key('social_item_telegram');
  static const socialItemDiscord = Key('social_list_discord');
  static const socialItemUdemy = Key('social_list_udemy');
  static const socialItemInstagram = Key('social_list_instagram');

  /// Testing keys
  static const snackBarKey = Key('tap_snack_bar');
}
