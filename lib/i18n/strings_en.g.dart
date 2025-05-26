///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// Text prompting user to hit avatar placeholder to begin upload
	String get upload_avatar => 'Upload Avatar';

	/// Heading over listed top streamers by zaps
	String get most_zapped_streamers => 'Most Zapped Streamers';

	/// No user found when searching
	String get no_user_found => 'No user found';

	/// An anonymous user
	String get anon => 'Anon';

	/// Number of viewers of the stream
	String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '1 viewer',
		other: '${n} viewers',
	);

	late final TranslationsStreamEn stream = TranslationsStreamEn.internal(_root);
	late final TranslationsGoalEn goal = TranslationsGoalEn.internal(_root);
	late final TranslationsButtonEn button = TranslationsButtonEn.internal(_root);
	late final TranslationsEmbedEn embed = TranslationsEmbedEn.internal(_root);

	/// Headings on stream lists by stream type live/ended/planned etc.
	late final TranslationsStreamListEn stream_list = TranslationsStreamListEn.internal(_root);

	late final TranslationsZapEn zap = TranslationsZapEn.internal(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn.internal(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn.internal(_root);
	late final TranslationsLoginEn login = TranslationsLoginEn.internal(_root);
}

// Path: stream
class TranslationsStreamEn {
	TranslationsStreamEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsStreamStatusEn status = TranslationsStreamStatusEn.internal(_root);
	String started({required Object timestamp}) => 'Started ${timestamp}';
	late final TranslationsStreamChatEn chat = TranslationsStreamChatEn.internal(_root);
}

// Path: goal
class TranslationsGoalEn {
	TranslationsGoalEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String title({required Object amount}) => 'Goal: ${amount}';
	String remaining({required Object amount}) => 'Remaining: ${amount}';
	String get complete => 'COMPLETE';
}

// Path: button
class TranslationsButtonEn {
	TranslationsButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Button text for the login button
	String get login => 'Login';

	String get logout => 'Logout';
	String get edit_profile => 'Edit Profile';

	/// Button text for the follow button
	String get follow => 'Follow';

	/// Button text for the unfollow button
	String get unfollow => 'Unfollow';

	String get mute => 'Mute';
	String get unmute => 'Unmute';
	String get share => 'Share';
	String get save => 'Save';
	String get connect => 'Connect';
	String get settings => 'Settings';
}

// Path: embed
class TranslationsEmbedEn {
	TranslationsEmbedEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String article_by({required Object name}) => 'Article by ${name}';
	String note_by({required Object name}) => 'Note by ${name}';
	String live_stream_by({required Object name}) => 'Live stream by ${name}';
}

// Path: stream_list
class TranslationsStreamListEn {
	TranslationsStreamListEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get following => 'Following';
	String get live => 'Live';
	String get planned => 'Planned';
	String get ended => 'Ended';
}

// Path: zap
class TranslationsZapEn {
	TranslationsZapEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String title({required Object name}) => 'Zap ${name}';
	String get custom_amount => 'Custom Amount';
	String get confirm => 'Confirm';
	String get comment => 'Comment';
	String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	String get button_zap => 'Zap';
	String get button_open_wallet => 'Open in Wallet';
	String get button_connect_wallet => 'Connect Wallet';
	String get copy => 'Copied to clipboard';
	late final TranslationsZapErrorEn error = TranslationsZapErrorEn.internal(_root);
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get past_streams => 'Past Streams';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get button_profile => 'Edit Profile';
	String get button_wallet => 'Wallet Settings';
	late final TranslationsSettingsProfileEn profile = TranslationsSettingsProfileEn.internal(_root);
	late final TranslationsSettingsWalletEn wallet = TranslationsSettingsWalletEn.internal(_root);
}

// Path: login
class TranslationsLoginEn {
	TranslationsLoginEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get username => 'Username';
	String get amber => 'Login with Amber';
	String get key => 'Login with Key';
	String get create => 'Create Account';
	late final TranslationsLoginErrorEn error = TranslationsLoginErrorEn.internal(_root);
}

// Path: stream.status
class TranslationsStreamStatusEn {
	TranslationsStreamStatusEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get live => 'LIVE';
	String get ended => 'ENDED';
	String get planned => 'PLANNED';
}

// Path: stream.chat
class TranslationsStreamChatEn {
	TranslationsStreamChatEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get disabled => 'CHAT DISABLED';
	String disabled_timeout({required Object time}) => 'Timeout expires: ${time}';

	/// Chat message showing timeout events
	TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' timed out '),
		user,
		const TextSpan(text: ' for '),
		time,
	]);

	/// Stream ended footer at bottom of chat
	String get ended => 'STREAM ENDED';

	/// Chat message showing stream zaps
	TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	late final TranslationsStreamChatWriteEn write = TranslationsStreamChatWriteEn.internal(_root);
	late final TranslationsStreamChatBadgeEn badge = TranslationsStreamChatBadgeEn.internal(_root);
	late final TranslationsStreamChatRaidEn raid = TranslationsStreamChatRaidEn.internal(_root);
}

// Path: zap.error
class TranslationsZapErrorEn {
	TranslationsZapErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_custom_amount => 'Invalid custom amount';
	String get no_wallet => 'No lightning wallet installed';
	String get no_lud16 => 'No lightning address found';
}

// Path: settings.profile
class TranslationsSettingsProfileEn {
	TranslationsSettingsProfileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get display_name => 'Display Name';
	String get about => 'About';
	String get nip05 => 'Nostr Address';
	String get lud16 => 'Lightning Address';
	late final TranslationsSettingsProfileErrorEn error = TranslationsSettingsProfileErrorEn.internal(_root);
}

// Path: settings.wallet
class TranslationsSettingsWalletEn {
	TranslationsSettingsWalletEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get connect_wallet => 'Connect Wallet (NWC nwc://)';
	String get disconnect_wallet => 'Disconnect Wallet';
	late final TranslationsSettingsWalletErrorEn error = TranslationsSettingsWalletErrorEn.internal(_root);
}

// Path: login.error
class TranslationsLoginErrorEn {
	TranslationsLoginErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_key => 'Invalid key';
}

// Path: stream.chat.write
class TranslationsStreamChatWriteEn {
	TranslationsStreamChatWriteEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Label on the chat message input box
	String get label => 'Write message';

	/// Chat input message shown when the user is logged in only with pubkey
	String get no_signer => 'Can\'t write messages with npub login';

	/// Chat input message shown when the user is logged out
	String get login => 'Please login to send messages';
}

// Path: stream.chat.badge
class TranslationsStreamChatBadgeEn {
	TranslationsStreamChatBadgeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Heading over list of users who are awarded a badge
	String get awarded_to => 'Awarded to:';
}

// Path: stream.chat.raid
class TranslationsStreamChatRaidEn {
	TranslationsStreamChatRaidEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Chat raid message to another stream
	String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid message from another stream
	String from({required Object name}) => 'RAID FROM ${name}';

	/// Countdown timer for auto-raiding
	String countdown({required Object time}) => 'Raiding in ${time}';
}

// Path: settings.profile.error
class TranslationsSettingsProfileErrorEn {
	TranslationsSettingsProfileErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get logged_out => 'Cant edit profile when logged out';
}

// Path: settings.wallet.error
class TranslationsSettingsWalletErrorEn {
	TranslationsSettingsWalletErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get logged_out => 'Cant connect wallet when logged out';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Upload Avatar';
			case 'most_zapped_streamers': return 'Most Zapped Streamers';
			case 'no_user_found': return 'No user found';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
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

