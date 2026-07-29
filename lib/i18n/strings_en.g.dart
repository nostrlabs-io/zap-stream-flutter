///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
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
	///
	/// en: 'Upload Avatar'
	String get upload_avatar => 'Upload Avatar';

	/// Heading over listed top streamers by zaps
	///
	/// en: 'Most Zapped Streamers'
	String get most_zapped_streamers => 'Most Zapped Streamers';

	/// No user found when searching
	///
	/// en: 'No user found'
	String get no_user_found => 'No user found';

	/// An anonymous user
	///
	/// en: 'Anon'
	String get anon => 'Anon';

	/// en: '${n:decimalPattern} sats'
	String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('en').format(n)} sats';

	/// Number of viewers of the stream
	///
	/// en: '(one) {1 viewer} (other) {${n:decimalPattern} viewers}'
	String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '1 viewer',
		other: '${NumberFormat.decimalPattern('en').format(n)} viewers',
	);

	late final Translations$stream$en stream = Translations$stream$en.internal(_root);
	late final Translations$goal$en goal = Translations$goal$en.internal(_root);
	late final Translations$button$en button = Translations$button$en.internal(_root);
	late final Translations$embed$en embed = Translations$embed$en.internal(_root);

	/// Headings on stream lists by stream type live/ended/planned etc.
	late final Translations$stream_list$en stream_list = Translations$stream_list$en.internal(_root);

	late final Translations$zap$en zap = Translations$zap$en.internal(_root);
	late final Translations$profile$en profile = Translations$profile$en.internal(_root);
	late final Translations$settings$en settings = Translations$settings$en.internal(_root);
	late final Translations$login$en login = Translations$login$en.internal(_root);
	late final Translations$live$en live = Translations$live$en.internal(_root);
}

// Path: stream
class Translations$stream$en {
	Translations$stream$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$stream$status$en status = Translations$stream$status$en.internal(_root);

	/// en: 'Started $timestamp'
	String started({required Object timestamp}) => 'Started ${timestamp}';

	/// en: '${name} went live!'
	String notification({required Object name}) => '${name} went live!';

	late final Translations$stream$chat$en chat = Translations$stream$chat$en.internal(_root);
	late final Translations$stream$error$en error = Translations$stream$error$en.internal(_root);

	/// en: 'Select Quality'
	String get select_quality => 'Select Quality';

	/// en: 'Auto'
	String get quality_auto => 'Auto';
}

// Path: goal
class Translations$goal$en {
	Translations$goal$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Goal: $amount'
	String title({required Object amount}) => 'Goal: ${amount}';

	/// en: 'Remaining: $amount'
	String remaining({required Object amount}) => 'Remaining: ${amount}';

	/// en: 'COMPLETE'
	String get complete => 'COMPLETE';
}

// Path: button
class Translations$button$en {
	Translations$button$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Button text for the login button
	///
	/// en: 'Login'
	String get login => 'Login';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'Edit Profile'
	String get edit_profile => 'Edit Profile';

	/// Button text for the follow button
	///
	/// en: 'Follow'
	String get follow => 'Follow';

	/// Button text for the unfollow button
	///
	/// en: 'Unfollow'
	String get unfollow => 'Unfollow';

	/// en: 'Mute'
	String get mute => 'Mute';

	/// en: 'Unmute'
	String get unmute => 'Unmute';

	/// en: 'Share'
	String get share => 'Share';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Connect'
	String get connect => 'Connect';

	/// en: 'Settings'
	String get settings => 'Settings';
}

// Path: embed
class Translations$embed$en {
	Translations$embed$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Article by ${name}'
	String article_by({required Object name}) => 'Article by ${name}';

	/// en: 'Note by $name'
	String note_by({required Object name}) => 'Note by ${name}';

	/// en: 'Live stream by ${name}'
	String live_stream_by({required Object name}) => 'Live stream by ${name}';
}

// Path: stream_list
class Translations$stream_list$en {
	Translations$stream_list$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Following'
	String get following => 'Following';

	/// en: 'Live'
	String get live => 'Live';

	/// en: 'Planned'
	String get planned => 'Planned';

	/// en: 'Ended'
	String get ended => 'Ended';
}

// Path: zap
class Translations$zap$en {
	Translations$zap$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Zap $name'
	String title({required Object name}) => 'Zap ${name}';

	/// en: 'Custom Amount'
	String get custom_amount => 'Custom Amount';

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Comment'
	String get comment => 'Comment';

	/// en: 'Zap $amount sats'
	String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';

	/// en: 'Zap'
	String get button_zap => 'Zap';

	/// en: 'Open in Wallet'
	String get button_open_wallet => 'Open in Wallet';

	/// en: 'Connect Wallet'
	String get button_connect_wallet => 'Connect Wallet';

	/// en: 'Copied to clipboard'
	String get copy => 'Copied to clipboard';

	late final Translations$zap$error$en error = Translations$zap$error$en.internal(_root);
}

// Path: profile
class Translations$profile$en {
	Translations$profile$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Past Streams'
	String get past_streams => 'Past Streams';
}

// Path: settings
class Translations$settings$en {
	Translations$settings$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get button_profile => 'Edit Profile';

	/// en: 'Wallet Settings'
	String get button_wallet => 'Wallet Settings';

	late final Translations$settings$profile$en profile = Translations$settings$profile$en.internal(_root);
	late final Translations$settings$wallet$en wallet = Translations$settings$wallet$en.internal(_root);
}

// Path: login
class Translations$login$en {
	Translations$login$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Username'
	String get username => 'Username';

	/// en: 'Login with Amber'
	String get amber => 'Login with Amber';

	/// en: 'Login with Key'
	String get key => 'Login with Key';

	/// en: 'Create Account'
	String get create => 'Create Account';

	late final Translations$login$error$en error = Translations$login$error$en.internal(_root);
}

// Path: live
class Translations$live$en {
	Translations$live$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'GO LIVE'
	String get start => 'GO LIVE';

	/// en: 'Configure Stream'
	String get configure_stream => 'Configure Stream';

	/// en: 'Endpoint'
	String get endpoint => 'Endpoint';

	/// en: 'Accept TOS'
	String get accept_tos => 'Accept TOS';

	/// en: '(zero) {∞} (other) {~${time}}'
	String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: '∞',
		other: '~${time}',
	);

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Summary'
	String get summary => 'Summary';

	/// en: 'Cover Image'
	String get image => 'Cover Image';

	/// en: 'Tags'
	String get tags => 'Tags';

	/// en: 'NSFW Content'
	String get nsfw => 'NSFW Content';

	/// en: 'Check here if this stream contains nudity or pornographic content.'
	String get nsfw_description => 'Check here if this stream contains nudity or pornographic content.';

	late final Translations$live$error$en error = Translations$live$error$en.internal(_root);
}

// Path: stream.status
class Translations$stream$status$en {
	Translations$stream$status$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'LIVE'
	String get live => 'LIVE';

	/// en: 'ENDED'
	String get ended => 'ENDED';

	/// en: 'PLANNED'
	String get planned => 'PLANNED';
}

// Path: stream.chat
class Translations$stream$chat$en {
	Translations$stream$chat$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'CHAT DISABLED'
	String get disabled => 'CHAT DISABLED';

	/// en: 'Timeout expires: $time'
	String disabled_timeout({required Object time}) => 'Timeout expires: ${time}';

	/// Chat message showing timeout events
	///
	/// en: '$mod timed out $user for ${time}'
	TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' timed out '),
		user,
		const TextSpan(text: ' for '),
		time,
	]);

	/// Stream ended footer at bottom of chat
	///
	/// en: 'STREAM ENDED'
	String get ended => 'STREAM ENDED';

	/// Chat message showing stream zaps
	///
	/// en: '$user zapped $amount sats'
	TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	late final Translations$stream$chat$write$en write = Translations$stream$chat$write$en.internal(_root);
	late final Translations$stream$chat$badge$en badge = Translations$stream$chat$badge$en.internal(_root);
	late final Translations$stream$chat$raid$en raid = Translations$stream$chat$raid$en.internal(_root);
}

// Path: stream.error
class Translations$stream$error$en {
	Translations$stream$error$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Failed to load stream from ${url}'
	String load_failed({required Object url}) => 'Failed to load stream from ${url}';
}

// Path: zap.error
class Translations$zap$error$en {
	Translations$zap$error$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invalid custom amount'
	String get invalid_custom_amount => 'Invalid custom amount';

	/// en: 'No lightning wallet installed'
	String get no_wallet => 'No lightning wallet installed';

	/// en: 'No lightning address found'
	String get no_lud16 => 'No lightning address found';
}

// Path: settings.profile
class Translations$settings$profile$en {
	Translations$settings$profile$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Display Name'
	String get display_name => 'Display Name';

	/// en: 'About'
	String get about => 'About';

	/// en: 'Nostr Address'
	String get nip05 => 'Nostr Address';

	/// en: 'Lightning Address'
	String get lud16 => 'Lightning Address';

	late final Translations$settings$profile$error$en error = Translations$settings$profile$error$en.internal(_root);
}

// Path: settings.wallet
class Translations$settings$wallet$en {
	Translations$settings$wallet$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Connect Wallet (NWC nostr+walletconnect://)'
	String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';

	/// en: 'Disconnect Wallet'
	String get disconnect_wallet => 'Disconnect Wallet';

	/// en: '1-Tap Connection'
	String get connect_1tap => '1-Tap Connection';

	/// en: 'Paste URL'
	String get paste => 'Paste URL';

	/// en: 'Balance'
	String get balance => 'Balance';

	/// en: 'Wallet'
	String get name => 'Wallet';

	late final Translations$settings$wallet$error$en error = Translations$settings$wallet$error$en.internal(_root);
}

// Path: login.error
class Translations$login$error$en {
	Translations$login$error$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invalid key'
	String get invalid_key => 'Invalid key';
}

// Path: live.error
class Translations$live$error$en {
	Translations$live$error$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Stream failed'
	String get failed => 'Stream failed';

	/// en: 'Connection Error'
	String get connection_error => 'Connection Error';

	/// en: 'Stream start failed, please check your balance'
	String get start_failed => 'Stream start failed, please check your balance';
}

// Path: stream.chat.write
class Translations$stream$chat$write$en {
	Translations$stream$chat$write$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Label on the chat message input box
	///
	/// en: 'Write message'
	String get label => 'Write message';

	/// Chat input message shown when the user is logged in only with pubkey
	///
	/// en: 'Can't write messages with npub login'
	String get no_signer => 'Can\'t write messages with npub login';

	/// Chat input message shown when the user is logged out
	///
	/// en: 'Please login to send messages'
	String get login => 'Please login to send messages';
}

// Path: stream.chat.badge
class Translations$stream$chat$badge$en {
	Translations$stream$chat$badge$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Heading over list of users who are awarded a badge
	///
	/// en: 'Awarded to:'
	String get awarded_to => 'Awarded to:';
}

// Path: stream.chat.raid
class Translations$stream$chat$raid$en {
	Translations$stream$chat$raid$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Chat raid message to another stream
	///
	/// en: 'RAIDING ${name}'
	String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid message from another stream
	///
	/// en: 'RAID FROM ${name}'
	String from({required Object name}) => 'RAID FROM ${name}';

	/// Countdown timer for auto-raiding
	///
	/// en: 'Raiding in ${time}'
	String countdown({required Object time}) => 'Raiding in ${time}';
}

// Path: settings.profile.error
class Translations$settings$profile$error$en {
	Translations$settings$profile$error$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cant edit profile when logged out'
	String get logged_out => 'Cant edit profile when logged out';
}

// Path: settings.wallet.error
class Translations$settings$wallet$error$en {
	Translations$settings$wallet$error$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cant connect wallet when logged out'
	String get logged_out => 'Cant connect wallet when logged out';

	/// en: 'No wallet auth event found'
	String get nwc_auth_event_not_found => 'No wallet auth event found';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Upload Avatar',
			'most_zapped_streamers' => 'Most Zapped Streamers',
			'no_user_found' => 'No user found',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('en').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '1 viewer', other: '${NumberFormat.decimalPattern('en').format(n)} viewers', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'ENDED',
			'stream.status.planned' => 'PLANNED',
			'stream.started' => ({required Object timestamp}) => 'Started ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} went live!',
			'stream.chat.disabled' => 'CHAT DISABLED',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Timeout expires: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' timed out '), user, const TextSpan(text: ' for '), time, ]), 
			'stream.chat.ended' => 'STREAM ENDED',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Write message',
			'stream.chat.write.no_signer' => 'Can\'t write messages with npub login',
			'stream.chat.write.login' => 'Please login to send messages',
			'stream.chat.badge.awarded_to' => 'Awarded to:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Raiding in ${time}',
			'stream.error.load_failed' => ({required Object url}) => 'Failed to load stream from ${url}',
			'stream.select_quality' => 'Select Quality',
			'stream.quality_auto' => 'Auto',
			'goal.title' => ({required Object amount}) => 'Goal: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Remaining: ${amount}',
			'goal.complete' => 'COMPLETE',
			'button.login' => 'Login',
			'button.logout' => 'Logout',
			'button.edit_profile' => 'Edit Profile',
			'button.follow' => 'Follow',
			'button.unfollow' => 'Unfollow',
			'button.mute' => 'Mute',
			'button.unmute' => 'Unmute',
			'button.share' => 'Share',
			'button.save' => 'Save',
			'button.connect' => 'Connect',
			'button.settings' => 'Settings',
			'embed.article_by' => ({required Object name}) => 'Article by ${name}',
			'embed.note_by' => ({required Object name}) => 'Note by ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Live stream by ${name}',
			'stream_list.following' => 'Following',
			'stream_list.live' => 'Live',
			'stream_list.planned' => 'Planned',
			'stream_list.ended' => 'Ended',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Custom Amount',
			'zap.confirm' => 'Confirm',
			'zap.comment' => 'Comment',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Open in Wallet',
			'zap.button_connect_wallet' => 'Connect Wallet',
			'zap.copy' => 'Copied to clipboard',
			'zap.error.invalid_custom_amount' => 'Invalid custom amount',
			'zap.error.no_wallet' => 'No lightning wallet installed',
			'zap.error.no_lud16' => 'No lightning address found',
			'profile.past_streams' => 'Past Streams',
			'settings.button_profile' => 'Edit Profile',
			'settings.button_wallet' => 'Wallet Settings',
			'settings.profile.display_name' => 'Display Name',
			'settings.profile.about' => 'About',
			'settings.profile.nip05' => 'Nostr Address',
			'settings.profile.lud16' => 'Lightning Address',
			'settings.profile.error.logged_out' => 'Cant edit profile when logged out',
			'settings.wallet.connect_wallet' => 'Connect Wallet (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Disconnect Wallet',
			'settings.wallet.connect_1tap' => '1-Tap Connection',
			'settings.wallet.paste' => 'Paste URL',
			'settings.wallet.balance' => 'Balance',
			'settings.wallet.name' => 'Wallet',
			'settings.wallet.error.logged_out' => 'Cant connect wallet when logged out',
			'settings.wallet.error.nwc_auth_event_not_found' => 'No wallet auth event found',
			'login.username' => 'Username',
			'login.amber' => 'Login with Amber',
			'login.key' => 'Login with Key',
			'login.create' => 'Create Account',
			'login.error.invalid_key' => 'Invalid key',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Configure Stream',
			'live.endpoint' => 'Endpoint',
			'live.accept_tos' => 'Accept TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Title',
			'live.summary' => 'Summary',
			'live.image' => 'Cover Image',
			'live.tags' => 'Tags',
			'live.nsfw' => 'NSFW Content',
			'live.nsfw_description' => 'Check here if this stream contains nudity or pornographic content.',
			'live.error.failed' => 'Stream failed',
			'live.error.connection_error' => 'Connection Error',
			'live.error.start_failed' => 'Stream start failed, please check your balance',
			_ => null,
		};
	}
}
