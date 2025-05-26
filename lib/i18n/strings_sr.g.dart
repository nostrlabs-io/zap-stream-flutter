///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsSr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.sr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsSr _root = this; // ignore: unused_field

	@override 
	TranslationsSr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSr(meta: meta ?? this.$meta);

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
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sr'))(n,
		one: '1 viewer',
		other: '${n} viewers',
	);

	@override late final _TranslationsStreamSr stream = _TranslationsStreamSr._(_root);
	@override late final _TranslationsGoalSr goal = _TranslationsGoalSr._(_root);
	@override late final _TranslationsButtonSr button = _TranslationsButtonSr._(_root);
	@override late final _TranslationsEmbedSr embed = _TranslationsEmbedSr._(_root);

	/// Headings on stream lists by stream type live/ended/planned etc.
	@override late final _TranslationsStreamListSr stream_list = _TranslationsStreamListSr._(_root);

	@override late final _TranslationsZapSr zap = _TranslationsZapSr._(_root);
	@override late final _TranslationsProfileSr profile = _TranslationsProfileSr._(_root);
	@override late final _TranslationsSettingsSr settings = _TranslationsSettingsSr._(_root);
	@override late final _TranslationsLoginSr login = _TranslationsLoginSr._(_root);
}

// Path: stream
class _TranslationsStreamSr extends TranslationsStreamEn {
	_TranslationsStreamSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusSr status = _TranslationsStreamStatusSr._(_root);
	@override String started({required Object timestamp}) => 'Started ${timestamp}';
	@override late final _TranslationsStreamChatSr chat = _TranslationsStreamChatSr._(_root);
}

// Path: goal
class _TranslationsGoalSr extends TranslationsGoalEn {
	_TranslationsGoalSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Goal: ${amount}';
	@override String remaining({required Object amount}) => 'Remaining: ${amount}';
	@override String get complete => 'COMPLETE';
}

// Path: button
class _TranslationsButtonSr extends TranslationsButtonEn {
	_TranslationsButtonSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

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
	@override String get connect => 'Connect';
	@override String get settings => 'Settings';
}

// Path: embed
class _TranslationsEmbedSr extends TranslationsEmbedEn {
	_TranslationsEmbedSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Article by ${name}';
	@override String note_by({required Object name}) => 'Note by ${name}';
	@override String live_stream_by({required Object name}) => 'Live stream by ${name}';
}

// Path: stream_list
class _TranslationsStreamListSr extends TranslationsStreamListEn {
	_TranslationsStreamListSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get following => 'Following';
	@override String get live => 'Live';
	@override String get planned => 'Planned';
	@override String get ended => 'Ended';
}

// Path: zap
class _TranslationsZapSr extends TranslationsZapEn {
	_TranslationsZapSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Custom Amount';
	@override String get confirm => 'Confirm';
	@override String get comment => 'Comment';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Open in Wallet';
	@override String get button_connect_wallet => 'Connect Wallet';
	@override String get copy => 'Copied to clipboard';
	@override late final _TranslationsZapErrorSr error = _TranslationsZapErrorSr._(_root);
}

// Path: profile
class _TranslationsProfileSr extends TranslationsProfileEn {
	_TranslationsProfileSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Past Streams';
}

// Path: settings
class _TranslationsSettingsSr extends TranslationsSettingsEn {
	_TranslationsSettingsSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Edit Profile';
	@override String get button_wallet => 'Wallet Settings';
	@override late final _TranslationsSettingsProfileSr profile = _TranslationsSettingsProfileSr._(_root);
	@override late final _TranslationsSettingsWalletSr wallet = _TranslationsSettingsWalletSr._(_root);
}

// Path: login
class _TranslationsLoginSr extends TranslationsLoginEn {
	_TranslationsLoginSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get username => 'Username';
	@override String get amber => 'Login with Amber';
	@override String get key => 'Login with Key';
	@override String get create => 'Create Account';
	@override late final _TranslationsLoginErrorSr error = _TranslationsLoginErrorSr._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusSr extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'ENDED';
	@override String get planned => 'PLANNED';
}

// Path: stream.chat
class _TranslationsStreamChatSr extends TranslationsStreamChatEn {
	_TranslationsStreamChatSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DISABLED';
	@override String disabled_timeout({required Object time}) => 'Timeout expires: ${time}';

	/// Chat message showing timeout events
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' timed out '),
		user,
		const TextSpan(text: ' for '),
		time,
	]);

	/// Stream ended footer at bottom of chat
	@override String get ended => 'STREAM ENDED';

	/// Chat message showing stream zaps
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _TranslationsStreamChatWriteSr write = _TranslationsStreamChatWriteSr._(_root);
	@override late final _TranslationsStreamChatBadgeSr badge = _TranslationsStreamChatBadgeSr._(_root);
	@override late final _TranslationsStreamChatRaidSr raid = _TranslationsStreamChatRaidSr._(_root);
}

// Path: zap.error
class _TranslationsZapErrorSr extends TranslationsZapErrorEn {
	_TranslationsZapErrorSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Invalid custom amount';
	@override String get no_wallet => 'No lightning wallet installed';
	@override String get no_lud16 => 'No lightning address found';
}

// Path: settings.profile
class _TranslationsSettingsProfileSr extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfileSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Display Name';
	@override String get about => 'About';
	@override String get nip05 => 'Nostr Address';
	@override String get lud16 => 'Lightning Address';
	@override late final _TranslationsSettingsProfileErrorSr error = _TranslationsSettingsProfileErrorSr._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletSr extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nwc://)';
	@override String get disconnect_wallet => 'Disconnect Wallet';
	@override late final _TranslationsSettingsWalletErrorSr error = _TranslationsSettingsWalletErrorSr._(_root);
}

// Path: login.error
class _TranslationsLoginErrorSr extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Invalid key';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteSr extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations

	/// Label on the chat message input box
	@override String get label => 'Write message';

	/// Chat input message shown when the user is logged in only with pubkey
	@override String get no_signer => 'Can\'t write messages with npub login';

	/// Chat input message shown when the user is logged out
	@override String get login => 'Please login to send messages';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeSr extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations

	/// Heading over list of users who are awarded a badge
	@override String get awarded_to => 'Awarded to:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidSr extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations

	/// Chat raid message to another stream
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid message from another stream
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// Countdown timer for auto-raiding
	@override String countdown({required Object time}) => 'Raiding in ${time}';
}

// Path: settings.profile.error
class _TranslationsSettingsProfileErrorSr extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Cant edit profile when logged out';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorSr extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorSr._(TranslationsSr root) : this._root = root, super.internal(root);

	final TranslationsSr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Cant connect wallet when logged out';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsSr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Upload Avatar';
			case 'most_zapped_streamers': return 'Most Zapped Streamers';
			case 'no_user_found': return 'No user found';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sr'))(n,
				one: '1 viewer',
				other: '${n} viewers',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'ENDED';
			case 'stream.status.planned': return 'PLANNED';
			case 'stream.started': return ({required Object timestamp}) => 'Started ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT DISABLED';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Timeout expires: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' timed out '),
				user,
				const TextSpan(text: ' for '),
				time,
			]);
			case 'stream.chat.ended': return 'STREAM ENDED';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Write message';
			case 'stream.chat.write.no_signer': return 'Can\'t write messages with npub login';
			case 'stream.chat.write.login': return 'Please login to send messages';
			case 'stream.chat.badge.awarded_to': return 'Awarded to:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Raiding in ${time}';
			case 'goal.title': return ({required Object amount}) => 'Goal: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Remaining: ${amount}';
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
			case 'button.connect': return 'Connect';
			case 'button.settings': return 'Settings';
			case 'embed.article_by': return ({required Object name}) => 'Article by ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Note by ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Live stream by ${name}';
			case 'stream_list.following': return 'Following';
			case 'stream_list.live': return 'Live';
			case 'stream_list.planned': return 'Planned';
			case 'stream_list.ended': return 'Ended';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Custom Amount';
			case 'zap.confirm': return 'Confirm';
			case 'zap.comment': return 'Comment';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Open in Wallet';
			case 'zap.button_connect_wallet': return 'Connect Wallet';
			case 'zap.copy': return 'Copied to clipboard';
			case 'zap.error.invalid_custom_amount': return 'Invalid custom amount';
			case 'zap.error.no_wallet': return 'No lightning wallet installed';
			case 'zap.error.no_lud16': return 'No lightning address found';
			case 'profile.past_streams': return 'Past Streams';
			case 'settings.button_profile': return 'Edit Profile';
			case 'settings.button_wallet': return 'Wallet Settings';
			case 'settings.profile.display_name': return 'Display Name';
			case 'settings.profile.about': return 'About';
			case 'settings.profile.nip05': return 'Nostr Address';
			case 'settings.profile.lud16': return 'Lightning Address';
			case 'settings.profile.error.logged_out': return 'Cant edit profile when logged out';
			case 'settings.wallet.connect_wallet': return 'Connect Wallet (NWC nwc://)';
			case 'settings.wallet.disconnect_wallet': return 'Disconnect Wallet';
			case 'settings.wallet.error.logged_out': return 'Cant connect wallet when logged out';
			case 'login.username': return 'Username';
			case 'login.amber': return 'Login with Amber';
			case 'login.key': return 'Login with Key';
			case 'login.create': return 'Create Account';
			case 'login.error.invalid_key': return 'Invalid key';
			default: return null;
		}
	}
}

