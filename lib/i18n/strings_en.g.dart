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

	late final TranslationsStreamEn stream = TranslationsStreamEn._(_root);
	late final TranslationsGoalEn goal = TranslationsGoalEn._(_root);
	late final TranslationsButtonEn button = TranslationsButtonEn._(_root);
	late final TranslationsEmbedEn embed = TranslationsEmbedEn._(_root);
	late final TranslationsStreamListEn stream_list = TranslationsStreamListEn._(_root);
	late final TranslationsZapEn zap = TranslationsZapEn._(_root);
}

// Path: stream
class TranslationsStreamEn {
	TranslationsStreamEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsStreamChatEn chat = TranslationsStreamChatEn._(_root);
}

// Path: goal
class TranslationsGoalEn {
	TranslationsGoalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String title({ required Object amount}) => 'Goal: ${amount}';
	String remaining({ required Object amount}) => 'Remaining: ${amount}';
	String get complete => 'COMPLETE';
}

// Path: button
class TranslationsButtonEn {
	TranslationsButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Button text for the login button
	String get login => 'Login';

	/// Button text for the follow button
	String get follow => 'Follow';

	/// Button text for the unfollow button
	String get unfollow => 'Unfollow';

	String get mute => 'Mute';
	String get unmute => 'Unmute';
	String get share => 'Share';
}

// Path: embed
class TranslationsEmbedEn {
	TranslationsEmbedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String article_by({ required Object name}) => 'Article by ${name}';
	String note_by({ required Object name}) => 'Note by ${name}';
	String live_stream_by({ required Object name}) => 'Live stream by ${name}';
}

// Path: stream_list
class TranslationsStreamListEn {
	TranslationsStreamListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get following => 'Following';
	String get live => 'Live';
	String get planned => 'Planned';
	String get ended => 'Ended';
}

// Path: zap
class TranslationsZapEn {
	TranslationsZapEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String title({ required Object name}) => 'Zap ${name}';
	String get custom_amount => 'Custom Amount';
	String get confirm => 'Confirm';
	String get comment => 'Comment';
	String button_zap_ready({ required Object amount}) => 'Zap ${amount} sats';
	String get button_zap => 'Zap';
	String get button_open_wallet => 'Open in Wallet';
	String get copy => 'Copied to clipboard';
	late final TranslationsZapErrorEn error = TranslationsZapErrorEn._(_root);
}

// Path: stream.chat
class TranslationsStreamChatEn {
	TranslationsStreamChatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get disabled => 'CHAT DISABLED';
	String disabled_timeout({ required Object time}) => 'Timeout expires: ${time}';

	/// Chat message showing timeout events
	TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' timed out '),
		user,
		const TextSpan(text: ' for '),
		time,
	], style: style, recognizer: recognizer);

	/// Stream ended footer at bottom of chat
	String get ended => 'STREAM ENDED';

	/// Chat message showing stream zaps
	TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	late final TranslationsStreamChatWriteEn write = TranslationsStreamChatWriteEn._(_root);
	late final TranslationsStreamChatBadgeEn badge = TranslationsStreamChatBadgeEn._(_root);
	late final TranslationsStreamChatRaidEn raid = TranslationsStreamChatRaidEn._(_root);
}

// Path: zap.error
class TranslationsZapErrorEn {
	TranslationsZapErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_custom_amount => 'Invalid custom amount';
	String get no_wallet => 'No lightning wallet installed';
	String get no_lud16 => 'No lightning address found';
}

// Path: stream.chat.write
class TranslationsStreamChatWriteEn {
	TranslationsStreamChatWriteEn._(this._root);

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
	TranslationsStreamChatBadgeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Heading over list of users who are awarded a badge
	String get awarded_to => 'Awarded to:';
}

// Path: stream.chat.raid
class TranslationsStreamChatRaidEn {
	TranslationsStreamChatRaidEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Chat raid message to another stream
	String to({ required Object name}) => 'RAIDING ${name}';

	/// Chat raid message from another stream
	String from({ required Object name}) => 'RAID FROM ${name}';

	/// Countdown timer for auto-raiding
	String countdown({ required Object time}) => 'Raiding in ${time}';
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
			case 'button.follow': return 'Follow';
			case 'button.unfollow': return 'Unfollow';
			case 'button.mute': return 'Mute';
			case 'button.unmute': return 'Unmute';
			case 'button.share': return 'Share';
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
			default: return null;
		}
	}
}

