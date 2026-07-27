///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsDa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.da,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <da>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDa _root = this; // ignore: unused_field

	@override 
	TranslationsDa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDa(meta: meta ?? this.$meta);

	// Translations

	/// Tekst, der beder brugeren om at trykke på avatar-pladsholderen for at begynde at uploade
	@override String get upload_avatar => 'Upload avatar';

	/// På vej over listede topstreamere af zaps
	@override String get most_zapped_streamers => 'De fleste zappede streamere';

	/// Ingen bruger fundet ved søgning
	@override String get no_user_found => 'Ingen bruger fundet';

	/// En anonym bruger
	@override String get anon => 'Anon';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('da').format(n)} sats';

	/// Antal seere af streamingen
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '1 seer',
		other: '${NumberFormat.decimalPattern('da').format(n)} seere',
	);

	@override late final _Translations$stream$da stream = _Translations$stream$da._(_root);
	@override late final _Translations$goal$da goal = _Translations$goal$da._(_root);
	@override late final _Translations$button$da button = _Translations$button$da._(_root);
	@override late final _Translations$embed$da embed = _Translations$embed$da._(_root);

	/// Overskrifter på streaminglister efter streamingtype live/afsluttet/planlagt osv.
	@override late final _Translations$stream_list$da stream_list = _Translations$stream_list$da._(_root);

	@override late final _Translations$zap$da zap = _Translations$zap$da._(_root);
	@override late final _Translations$profile$da profile = _Translations$profile$da._(_root);
	@override late final _Translations$settings$da settings = _Translations$settings$da._(_root);
	@override late final _Translations$login$da login = _Translations$login$da._(_root);
	@override late final _Translations$live$da live = _Translations$live$da._(_root);
}

// Path: stream
class _Translations$stream$da extends Translations$stream$en {
	_Translations$stream$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$da status = _Translations$stream$status$da._(_root);
	@override String started({required Object timestamp}) => 'Startet ${timestamp}';
	@override String notification({required Object name}) => '${name} gik live!';
	@override late final _Translations$stream$chat$da chat = _Translations$stream$chat$da._(_root);
}

// Path: goal
class _Translations$goal$da extends Translations$goal$en {
	_Translations$goal$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Mål: ${amount}';
	@override String remaining({required Object amount}) => 'Resterende: ${amount}';
	@override String get complete => 'KOMPLET';
}

// Path: button
class _Translations$button$da extends Translations$button$en {
	_Translations$button$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations

	/// Knaptekst til login-knappen
	@override String get login => 'Login';

	@override String get logout => 'Log ud';
	@override String get edit_profile => 'Rediger profil';

	/// Knaptekst til følg-knappen
	@override String get follow => 'Følg med';

	/// Knaptekst til unfollow-knappen
	@override String get unfollow => 'Ikke følge';

	@override String get mute => 'Dæmpet';
	@override String get unmute => 'Slå lyden fra';
	@override String get share => 'Del';
	@override String get save => 'Gemme';
	@override String get connect => 'Opret forbindelse';
	@override String get settings => 'Indstillinger';
}

// Path: embed
class _Translations$embed$da extends Translations$embed$en {
	_Translations$embed$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artikel af ${name}';
	@override String note_by({required Object name}) => 'Note fra ${name}';
	@override String live_stream_by({required Object name}) => 'Livestream på ${name}';
}

// Path: stream_list
class _Translations$stream_list$da extends Translations$stream_list$en {
	_Translations$stream_list$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get following => 'Efterfølgende';
	@override String get live => 'Live';
	@override String get planned => 'Planlagt';
	@override String get ended => 'Afsluttet';
}

// Path: zap
class _Translations$zap$da extends Translations$zap$en {
	_Translations$zap$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Brugerdefineret beløb';
	@override String get confirm => 'Bekræft';
	@override String get comment => 'Kommentar';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Åbn i tegnebogen';
	@override String get button_connect_wallet => 'Forbind tegnebog';
	@override String get copy => 'Kopieret til udklipsholder';
	@override late final _Translations$zap$error$da error = _Translations$zap$error$da._(_root);
}

// Path: profile
class _Translations$profile$da extends Translations$profile$en {
	_Translations$profile$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Tidligere strømme';
}

// Path: settings
class _Translations$settings$da extends Translations$settings$en {
	_Translations$settings$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Rediger profil';
	@override String get button_wallet => 'Indstillinger for tegnebog';
	@override late final _Translations$settings$profile$da profile = _Translations$settings$profile$da._(_root);
	@override late final _Translations$settings$wallet$da wallet = _Translations$settings$wallet$da._(_root);
}

// Path: login
class _Translations$login$da extends Translations$login$en {
	_Translations$login$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get username => 'Brugernavn';
	@override String get amber => 'Log ind med Amber';
	@override String get key => 'Login med nøgle';
	@override String get create => 'Opret konto';
	@override late final _Translations$login$error$da error = _Translations$login$error$da._(_root);
}

// Path: live
class _Translations$live$da extends Translations$live$en {
	_Translations$live$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get start => 'GO LIVE';
	@override String get configure_stream => 'Konfigurer stream';
	@override String get endpoint => 'Slutpunkt';
	@override String get accept_tos => 'Accepter TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Titel';
	@override String get summary => 'Sammenfatning';
	@override String get image => 'Forsidebillede';
	@override String get tags => 'Tags';
	@override String get nsfw => 'NSFW-indhold';
	@override String get nsfw_description => 'Tjek her, om denne stream indeholder nøgenhed eller pornografisk indhold.';
	@override late final _Translations$live$error$da error = _Translations$live$error$da._(_root);
}

// Path: stream.status
class _Translations$stream$status$da extends Translations$stream$status$en {
	_Translations$stream$status$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'AFSLUTTET';
	@override String get planned => 'PLANLAGT';
}

// Path: stream.chat
class _Translations$stream$chat$da extends Translations$stream$chat$en {
	_Translations$stream$chat$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DEAKTIVERET';
	@override String disabled_timeout({required Object time}) => 'Timeout udløber: ${time}';

	/// Chatbesked, der viser timeout-hændelser
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' udløbet '),
		user,
		const TextSpan(text: ' for '),
		time,
	]);

	/// Stream afsluttede footer i bunden af chatten
	@override String get ended => 'STREAM AFSLUTTET';

	/// Chatbesked, der viser stream-zaps
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zappet '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$da write = _Translations$stream$chat$write$da._(_root);
	@override late final _Translations$stream$chat$badge$da badge = _Translations$stream$chat$badge$da._(_root);
	@override late final _Translations$stream$chat$raid$da raid = _Translations$stream$chat$raid$da._(_root);
}

// Path: zap.error
class _Translations$zap$error$da extends Translations$zap$error$en {
	_Translations$zap$error$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Ugyldigt brugerdefineret beløb';
	@override String get no_wallet => 'Ingen lightning wallet installeret';
	@override String get no_lud16 => 'Ingen lyn-adresse fundet';
}

// Path: settings.profile
class _Translations$settings$profile$da extends Translations$settings$profile$en {
	_Translations$settings$profile$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Vis navn';
	@override String get about => 'Omkring';
	@override String get nip05 => 'Nostr-adresse';
	@override String get lud16 => 'Adresse for lynnedslag';
	@override late final _Translations$settings$profile$error$da error = _Translations$settings$profile$error$da._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$da extends Translations$settings$wallet$en {
	_Translations$settings$wallet$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Afbryd forbindelsen til tegnebogen';
	@override String get connect_1tap => '1-Tap-forbindelse';
	@override String get paste => 'Indsæt URL';
	@override String get balance => 'Balance';
	@override String get name => 'Tegnebog';
	@override late final _Translations$settings$wallet$error$da error = _Translations$settings$wallet$error$da._(_root);
}

// Path: login.error
class _Translations$login$error$da extends Translations$login$error$en {
	_Translations$login$error$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Ugyldig nøgle';
}

// Path: live.error
class _Translations$live$error$da extends Translations$live$error$en {
	_Translations$live$error$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Strømmen mislykkedes';
	@override String get connection_error => 'Forbindelsesfejl';
	@override String get start_failed => 'Stream-start mislykkedes, tjek venligst din saldo';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$da extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations

	/// Label på chatbeskedens inputfelt
	@override String get label => 'Skriv en besked';

	/// Chat-inputmeddelelse vises, når brugeren kun er logget ind med pubkey
	@override String get no_signer => 'Kan ikke skrive beskeder med npub-login';

	/// Chat-inputmeddelelse vises, når brugeren er logget ud
	@override String get login => 'Log ind for at sende beskeder';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$da extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations

	/// Overskrift over liste over brugere, der har fået tildelt et badge
	@override String get awarded_to => 'Tildelt til:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$da extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations

	/// Chat raid-besked til en anden stream
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid-besked fra en anden stream
	@override String from({required Object name}) => 'RAID FRA ${name}';

	/// Nedtællingstimer til auto-raiding
	@override String countdown({required Object time}) => 'Raiding i ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$da extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan ikke redigere profil, når jeg er logget ud';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$da extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan ikke oprette forbindelse til wallet, når jeg er logget ud';
	@override String get nwc_auth_event_not_found => 'Ingen wallet-auth-begivenhed fundet';
}

/// The flat map containing all translations for locale <da>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Upload avatar',
			'most_zapped_streamers' => 'De fleste zappede streamere',
			'no_user_found' => 'Ingen bruger fundet',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('da').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '1 seer', other: '${NumberFormat.decimalPattern('da').format(n)} seere', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'AFSLUTTET',
			'stream.status.planned' => 'PLANLAGT',
			'stream.started' => ({required Object timestamp}) => 'Startet ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} gik live!',
			'stream.chat.disabled' => 'CHAT DEAKTIVERET',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Timeout udløber: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' udløbet '), user, const TextSpan(text: ' for '), time, ]), 
			'stream.chat.ended' => 'STREAM AFSLUTTET',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zappet '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Skriv en besked',
			'stream.chat.write.no_signer' => 'Kan ikke skrive beskeder med npub-login',
			'stream.chat.write.login' => 'Log ind for at sende beskeder',
			'stream.chat.badge.awarded_to' => 'Tildelt til:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FRA ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Raiding i ${time}',
			'goal.title' => ({required Object amount}) => 'Mål: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Resterende: ${amount}',
			'goal.complete' => 'KOMPLET',
			'button.login' => 'Login',
			'button.logout' => 'Log ud',
			'button.edit_profile' => 'Rediger profil',
			'button.follow' => 'Følg med',
			'button.unfollow' => 'Ikke følge',
			'button.mute' => 'Dæmpet',
			'button.unmute' => 'Slå lyden fra',
			'button.share' => 'Del',
			'button.save' => 'Gemme',
			'button.connect' => 'Opret forbindelse',
			'button.settings' => 'Indstillinger',
			'embed.article_by' => ({required Object name}) => 'Artikel af ${name}',
			'embed.note_by' => ({required Object name}) => 'Note fra ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Livestream på ${name}',
			'stream_list.following' => 'Efterfølgende',
			'stream_list.live' => 'Live',
			'stream_list.planned' => 'Planlagt',
			'stream_list.ended' => 'Afsluttet',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Brugerdefineret beløb',
			'zap.confirm' => 'Bekræft',
			'zap.comment' => 'Kommentar',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Åbn i tegnebogen',
			'zap.button_connect_wallet' => 'Forbind tegnebog',
			'zap.copy' => 'Kopieret til udklipsholder',
			'zap.error.invalid_custom_amount' => 'Ugyldigt brugerdefineret beløb',
			'zap.error.no_wallet' => 'Ingen lightning wallet installeret',
			'zap.error.no_lud16' => 'Ingen lyn-adresse fundet',
			'profile.past_streams' => 'Tidligere strømme',
			'settings.button_profile' => 'Rediger profil',
			'settings.button_wallet' => 'Indstillinger for tegnebog',
			'settings.profile.display_name' => 'Vis navn',
			'settings.profile.about' => 'Omkring',
			'settings.profile.nip05' => 'Nostr-adresse',
			'settings.profile.lud16' => 'Adresse for lynnedslag',
			'settings.profile.error.logged_out' => 'Kan ikke redigere profil, når jeg er logget ud',
			'settings.wallet.connect_wallet' => 'Connect Wallet (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Afbryd forbindelsen til tegnebogen',
			'settings.wallet.connect_1tap' => '1-Tap-forbindelse',
			'settings.wallet.paste' => 'Indsæt URL',
			'settings.wallet.balance' => 'Balance',
			'settings.wallet.name' => 'Tegnebog',
			'settings.wallet.error.logged_out' => 'Kan ikke oprette forbindelse til wallet, når jeg er logget ud',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Ingen wallet-auth-begivenhed fundet',
			'login.username' => 'Brugernavn',
			'login.amber' => 'Log ind med Amber',
			'login.key' => 'Login med nøgle',
			'login.create' => 'Opret konto',
			'login.error.invalid_key' => 'Ugyldig nøgle',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Konfigurer stream',
			'live.endpoint' => 'Slutpunkt',
			'live.accept_tos' => 'Accepter TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Titel',
			'live.summary' => 'Sammenfatning',
			'live.image' => 'Forsidebillede',
			'live.tags' => 'Tags',
			'live.nsfw' => 'NSFW-indhold',
			'live.nsfw_description' => 'Tjek her, om denne stream indeholder nøgenhed eller pornografisk indhold.',
			'live.error.failed' => 'Strømmen mislykkedes',
			'live.error.connection_error' => 'Forbindelsesfejl',
			'live.error.start_failed' => 'Stream-start mislykkedes, tjek venligst din saldo',
			_ => null,
		};
	}
}
