///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsCa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ca,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ca>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsCa _root = this; // ignore: unused_field

	@override 
	TranslationsCa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCa(meta: meta ?? this.$meta);

	// Translations

	/// Text prompting user to hit avatar placeholder to begin upload
	@override String get upload_avatar => 'Upload Avatar';

	/// Heading over listed top streamers by zaps
	@override String get most_zapped_streamers => 'Most Zapped Streamers';

	/// No user found when searching
	@override String get no_user_found => 'No user found';

	/// An anonymous user
	@override String get anon => 'Anon';

	/// Number of viewers of the stream
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '1 viewer',
		other: '${n} viewers',
	);

	@override late final _TranslationsStreamCa stream = _TranslationsStreamCa._(_root);
	@override late final _TranslationsGoalCa goal = _TranslationsGoalCa._(_root);
	@override late final _TranslationsButtonCa button = _TranslationsButtonCa._(_root);
	@override late final _TranslationsEmbedCa embed = _TranslationsEmbedCa._(_root);

	/// Headings on stream lists by stream type live/ended/planned etc.
	@override late final _TranslationsStreamListCa stream_list = _TranslationsStreamListCa._(_root);

	@override late final _TranslationsZapCa zap = _TranslationsZapCa._(_root);
	@override late final _TranslationsProfileCa profile = _TranslationsProfileCa._(_root);
	@override late final _TranslationsLoginCa login = _TranslationsLoginCa._(_root);
}

// Path: stream
class _TranslationsStreamCa implements TranslationsStreamEn {
	_TranslationsStreamCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusCa status = _TranslationsStreamStatusCa._(_root);
	@override String started({ required Object timestamp}) => 'Started ${timestamp}';
	@override late final _TranslationsStreamChatCa chat = _TranslationsStreamChatCa._(_root);
}

// Path: goal
class _TranslationsGoalCa implements TranslationsGoalEn {
	_TranslationsGoalCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Goal: ${amount}';
	@override String remaining({ required Object amount}) => 'Remaining: ${amount}';
	@override String get complete => 'COMPLETE';
}

// Path: button
class _TranslationsButtonCa implements TranslationsButtonEn {
	_TranslationsButtonCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations

	/// Button text for the login button
	@override String get login => 'Login';

	@override String get logout => 'Logout';
	@override String get edit_profile => 'Edit Profile';

	/// Button text for the follow button
	@override String get follow => 'Follow';

	/// Button text for the unfollow button
	@override String get unfollow => 'Unfollow';

	@override String get mute => 'Mute';
	@override String get unmute => 'Unmute';
	@override String get share => 'Share';
	@override String get save => 'Save';
}

// Path: embed
class _TranslationsEmbedCa implements TranslationsEmbedEn {
	_TranslationsEmbedCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Article by ${name}';
	@override String note_by({ required Object name}) => 'Note by ${name}';
	@override String live_stream_by({ required Object name}) => 'Live stream by ${name}';
}

// Path: stream_list
class _TranslationsStreamListCa implements TranslationsStreamListEn {
	_TranslationsStreamListCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get following => 'Following';
	@override String get live => 'Live';
	@override String get planned => 'Planned';
	@override String get ended => 'Ended';
}

// Path: zap
class _TranslationsZapCa implements TranslationsZapEn {
	_TranslationsZapCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Custom Amount';
	@override String get confirm => 'Confirm';
	@override String get comment => 'Comment';
	@override String button_zap_ready({ required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Open in Wallet';
	@override String get copy => 'Copied to clipboard';
	@override late final _TranslationsZapErrorCa error = _TranslationsZapErrorCa._(_root);
}

// Path: profile
class _TranslationsProfileCa implements TranslationsProfileEn {
	_TranslationsProfileCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Past Streams';
	@override late final _TranslationsProfileEditCa edit = _TranslationsProfileEditCa._(_root);
}

// Path: login
class _TranslationsLoginCa implements TranslationsLoginEn {
	_TranslationsLoginCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get username => 'Username';
	@override String get amber => 'Login with Amber';
	@override String get key => 'Login with Key';
	@override String get create => 'Create Account';
	@override late final _TranslationsLoginErrorCa error = _TranslationsLoginErrorCa._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusCa implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'ENDED';
	@override String get planned => 'PLANNED';
}

// Path: stream.chat
class _TranslationsStreamChatCa implements TranslationsStreamChatEn {
	_TranslationsStreamChatCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DISABLED';
	@override String disabled_timeout({ required Object time}) => 'Timeout expires: ${time}';

	/// Chat message showing timeout events
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' timed out '),
		user,
		const TextSpan(text: ' for '),
		time,
	], style: style, recognizer: recognizer);

	/// Stream ended footer at bottom of chat
	@override String get ended => 'STREAM ENDED';

	/// Chat message showing stream zaps
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteCa write = _TranslationsStreamChatWriteCa._(_root);
	@override late final _TranslationsStreamChatBadgeCa badge = _TranslationsStreamChatBadgeCa._(_root);
	@override late final _TranslationsStreamChatRaidCa raid = _TranslationsStreamChatRaidCa._(_root);
}

// Path: zap.error
class _TranslationsZapErrorCa implements TranslationsZapErrorEn {
	_TranslationsZapErrorCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Invalid custom amount';
	@override String get no_wallet => 'No lightning wallet installed';
	@override String get no_lud16 => 'No lightning address found';
}

// Path: profile.edit
class _TranslationsProfileEditCa implements TranslationsProfileEditEn {
	_TranslationsProfileEditCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Display Name';
	@override String get about => 'About';
	@override String get nip05 => 'Nostr Address';
	@override String get lud16 => 'Lightning Address';
	@override late final _TranslationsProfileEditErrorCa error = _TranslationsProfileEditErrorCa._(_root);
}

// Path: login.error
class _TranslationsLoginErrorCa implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Invalid key';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteCa implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations

	/// Label on the chat message input box
	@override String get label => 'Write message';

	/// Chat input message shown when the user is logged in only with pubkey
	@override String get no_signer => 'Can\'t write messages with npub login';

	/// Chat input message shown when the user is logged out
	@override String get login => 'Please login to send messages';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeCa implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations

	/// Heading over list of users who are awarded a badge
	@override String get awarded_to => 'Awarded to:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidCa implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations

	/// Chat raid message to another stream
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Chat raid message from another stream
	@override String from({ required Object name}) => 'RAID FROM ${name}';

	/// Countdown timer for auto-raiding
	@override String countdown({ required Object time}) => 'Raiding in ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorCa implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorCa._(this._root);

	final TranslationsCa _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Cant edit profile when logged out';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsCa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Upload Avatar';
			case 'most_zapped_streamers': return 'Most Zapped Streamers';
			case 'no_user_found': return 'No user found';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
				one: '1 viewer',
				other: '${n} viewers',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'ENDED';
			case 'stream.status.planned': return 'PLANNED';
			case 'stream.started': return ({ required Object timestamp}) => 'Started ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT DISABLED';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Timeout expires: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' timed out '),
				user,
				const TextSpan(text: ' for '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'STREAM ENDED';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Write message';
			case 'stream.chat.write.no_signer': return 'Can\'t write messages with npub login';
			case 'stream.chat.write.login': return 'Please login to send messages';
			case 'stream.chat.badge.awarded_to': return 'Awarded to:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Raiding in ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Goal: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Remaining: ${amount}';
			case 'goal.complete': return 'COMPLETE';
			case 'button.login': return 'Login';
			case 'button.logout': return 'Logout';
			case 'button.edit_profile': return 'Edit Profile';
			case 'button.follow': return 'Follow';
			case 'button.unfollow': return 'Unfollow';
			case 'button.mute': return 'Mute';
			case 'button.unmute': return 'Unmute';
			case 'button.share': return 'Share';
			case 'button.save': return 'Save';
			case 'embed.article_by': return ({ required Object name}) => 'Article by ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Note by ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Live stream by ${name}';
			case 'stream_list.following': return 'Following';
			case 'stream_list.live': return 'Live';
			case 'stream_list.planned': return 'Planned';
			case 'stream_list.ended': return 'Ended';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Custom Amount';
			case 'zap.confirm': return 'Confirm';
			case 'zap.comment': return 'Comment';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Open in Wallet';
			case 'zap.copy': return 'Copied to clipboard';
			case 'zap.error.invalid_custom_amount': return 'Invalid custom amount';
			case 'zap.error.no_wallet': return 'No lightning wallet installed';
			case 'zap.error.no_lud16': return 'No lightning address found';
			case 'profile.past_streams': return 'Past Streams';
			case 'profile.edit.display_name': return 'Display Name';
			case 'profile.edit.about': return 'About';
			case 'profile.edit.nip05': return 'Nostr Address';
			case 'profile.edit.lud16': return 'Lightning Address';
			case 'profile.edit.error.logged_out': return 'Cant edit profile when logged out';
			case 'login.username': return 'Username';
			case 'login.amber': return 'Login with Amber';
			case 'login.key': return 'Login with Key';
			case 'login.create': return 'Create Account';
			case 'login.error.invalid_key': return 'Invalid key';
			default: return null;
		}
	}
}

