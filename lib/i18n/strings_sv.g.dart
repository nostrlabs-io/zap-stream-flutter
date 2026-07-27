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
class TranslationsSv extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSv({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.sv,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sv>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsSv _root = this; // ignore: unused_field

	@override 
	TranslationsSv $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSv(meta: meta ?? this.$meta);

	// Translations

	/// Text som uppmanar användaren att trycka på avatar platshållaren för att påbörja uppladdningen
	@override String get upload_avatar => 'Ladda upp avatar';

	/// Rubrik över listade topp streamers av zaps
	@override String get most_zapped_streamers => 'De flest zappade streamers';

	/// Ingen användare hittades vid sökning
	@override String get no_user_found => 'Ingen användare hittades';

	/// En anonym användare
	@override String get anon => 'Anno';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('sv').format(n)} sats';

	/// Antal tittare på strömmingen
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '1 tittare',
		other: '${NumberFormat.decimalPattern('sv').format(n)} tittare',
	);

	@override late final _Translations$stream$sv stream = _Translations$stream$sv._(_root);
	@override late final _Translations$goal$sv goal = _Translations$goal$sv._(_root);
	@override late final _Translations$button$sv button = _Translations$button$sv._(_root);
	@override late final _Translations$embed$sv embed = _Translations$embed$sv._(_root);

	/// Rubriker på strömlistor efter strömtyp live/avslutad/planerad etc.
	@override late final _Translations$stream_list$sv stream_list = _Translations$stream_list$sv._(_root);

	@override late final _Translations$zap$sv zap = _Translations$zap$sv._(_root);
	@override late final _Translations$profile$sv profile = _Translations$profile$sv._(_root);
	@override late final _Translations$settings$sv settings = _Translations$settings$sv._(_root);
	@override late final _Translations$login$sv login = _Translations$login$sv._(_root);
	@override late final _Translations$live$sv live = _Translations$live$sv._(_root);
}

// Path: stream
class _Translations$stream$sv extends Translations$stream$en {
	_Translations$stream$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$sv status = _Translations$stream$status$sv._(_root);
	@override String started({required Object timestamp}) => 'Startad ${timestamp}';
	@override String notification({required Object name}) => '${name} gick live!';
	@override late final _Translations$stream$chat$sv chat = _Translations$stream$chat$sv._(_root);
}

// Path: goal
class _Translations$goal$sv extends Translations$goal$en {
	_Translations$goal$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Mål: ${amount}';
	@override String remaining({required Object amount}) => 'Kvarvarande: ${amount}';
	@override String get complete => 'KOMPLETT';
}

// Path: button
class _Translations$button$sv extends Translations$button$en {
	_Translations$button$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations

	/// Knapptext för inloggningsknappen
	@override String get login => 'Logga in';

	@override String get logout => 'Logga ut';
	@override String get edit_profile => 'Redigera profil';

	/// Knapptext för följ-knappen
	@override String get follow => 'Följ';

	/// Knapptext för sluta följa knappen
	@override String get unfollow => 'Sluta följa';

	@override String get mute => 'Tysta';
	@override String get unmute => 'Avtysta';
	@override String get share => 'Dela';
	@override String get save => 'Spara';
	@override String get connect => 'Anslut';
	@override String get settings => 'Inställningar';
}

// Path: embed
class _Translations$embed$sv extends Translations$embed$en {
	_Translations$embed$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artikel av ${name}';
	@override String note_by({required Object name}) => 'Anteckning av ${name}';
	@override String live_stream_by({required Object name}) => 'Direktsändning via ${name}';
}

// Path: stream_list
class _Translations$stream_list$sv extends Translations$stream_list$en {
	_Translations$stream_list$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get following => 'Följer';
	@override String get live => 'Live';
	@override String get planned => 'Planerade';
	@override String get ended => 'Avslutade';
}

// Path: zap
class _Translations$zap$sv extends Translations$zap$en {
	_Translations$zap$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Anpassat belopp';
	@override String get confirm => 'Bekräfta';
	@override String get comment => 'Kommentar';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Öppna i plånboken';
	@override String get button_connect_wallet => 'Anslut plånbok';
	@override String get copy => 'Kopieras till urklipp';
	@override late final _Translations$zap$error$sv error = _Translations$zap$error$sv._(_root);
}

// Path: profile
class _Translations$profile$sv extends Translations$profile$en {
	_Translations$profile$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Tidigare streamar';
}

// Path: settings
class _Translations$settings$sv extends Translations$settings$en {
	_Translations$settings$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Redigera profil';
	@override String get button_wallet => 'Inställningar för plånbok';
	@override late final _Translations$settings$profile$sv profile = _Translations$settings$profile$sv._(_root);
	@override late final _Translations$settings$wallet$sv wallet = _Translations$settings$wallet$sv._(_root);
}

// Path: login
class _Translations$login$sv extends Translations$login$en {
	_Translations$login$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get username => 'Användarnamn';
	@override String get amber => 'Logga in med Amber';
	@override String get key => 'Logga in med nyckel';
	@override String get create => 'Skapa konto';
	@override late final _Translations$login$error$sv error = _Translations$login$error$sv._(_root);
}

// Path: live
class _Translations$live$sv extends Translations$live$en {
	_Translations$live$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get start => 'GÅ DIREKT';
	@override String get configure_stream => 'Konfigurera ström';
	@override String get endpoint => 'Slutpunkt';
	@override String get accept_tos => 'Acceptera TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Titel';
	@override String get summary => 'Sammanfattning';
	@override String get image => 'Omslagsbild';
	@override String get tags => 'Etiketter';
	@override String get nsfw => 'NSFW-innehåll';
	@override String get nsfw_description => 'Markera här om denna stream innehåller nakenhet eller pornografiskt innehåll.';
	@override late final _Translations$live$error$sv error = _Translations$live$error$sv._(_root);
}

// Path: stream.status
class _Translations$stream$status$sv extends Translations$stream$status$en {
	_Translations$stream$status$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'AVSLUTAD';
	@override String get planned => 'PLANERADE';
}

// Path: stream.chat
class _Translations$stream$chat$sv extends Translations$stream$chat$en {
	_Translations$stream$chat$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT AVSTÄNGD';
	@override String disabled_timeout({required Object time}) => 'Tidsgränsen går ut: ${time}';

	/// Chattmeddelande som visar timeout-händelser
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' tidsbegränsad '),
		user,
		const TextSpan(text: ' för '),
		time,
	]);

	/// Streama slutade sidfot längst ned i chatten
	@override String get ended => 'STREAM AVSLUTAD';

	/// Chattmeddelande som visar strömavbrott
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$sv write = _Translations$stream$chat$write$sv._(_root);
	@override late final _Translations$stream$chat$badge$sv badge = _Translations$stream$chat$badge$sv._(_root);
	@override late final _Translations$stream$chat$raid$sv raid = _Translations$stream$chat$raid$sv._(_root);
}

// Path: zap.error
class _Translations$zap$error$sv extends Translations$zap$error$en {
	_Translations$zap$error$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Ogiltigt anpassat belopp';
	@override String get no_wallet => 'Ingen blixtplånbok installerad';
	@override String get no_lud16 => 'Ingen blixtadress hittades';
}

// Path: settings.profile
class _Translations$settings$profile$sv extends Translations$settings$profile$en {
	_Translations$settings$profile$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Visa namn';
	@override String get about => 'Om';
	@override String get nip05 => 'Nostr adress';
	@override String get lud16 => 'Lightning-adress';
	@override late final _Translations$settings$profile$error$sv error = _Translations$settings$profile$error$sv._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$sv extends Translations$settings$wallet$en {
	_Translations$settings$wallet$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Anslut plånbok (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Koppla bort plånboken';
	@override String get connect_1tap => '1-tryck anslutning';
	@override String get paste => 'Klistra in URL';
	@override String get balance => 'Balans';
	@override String get name => 'Plånbok';
	@override late final _Translations$settings$wallet$error$sv error = _Translations$settings$wallet$error$sv._(_root);
}

// Path: login.error
class _Translations$login$error$sv extends Translations$login$error$en {
	_Translations$login$error$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Ogiltig nyckel';
}

// Path: live.error
class _Translations$live$error$sv extends Translations$live$error$en {
	_Translations$live$error$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Strömmen misslyckades';
	@override String get connection_error => 'Anslutningsfel';
	@override String get start_failed => 'Stream start misslyckades, vänligen kontrollera ditt saldo';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$sv extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations

	/// Etikett på inmatningsrutan för chattmeddelanden
	@override String get label => 'Skriv meddelande';

	/// Chattinmatningsmeddelande som visas när användaren endast är inloggad med publik nyckel
	@override String get no_signer => 'Det går inte att skriva meddelanden med n-pub inloggning';

	/// Chattinmatningsmeddelande som visas när användaren är utloggad
	@override String get login => 'Logga in för att skicka meddelanden';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$sv extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations

	/// Rubrik över listan över användare som tilldelas ett märke
	@override String get awarded_to => 'Tilldelas till:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$sv extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations

	/// Chatt raid meddelande till en annan ström
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chatt raid meddelande från en annan ström
	@override String from({required Object name}) => 'RAID FRÅN ${name}';

	/// Nedräkningstimer för auto- radiering
	@override String countdown({required Object time}) => 'Radiering i ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$sv extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan inte redigera profil när jag är utloggad';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$sv extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan inte ansluta plånbok när du är utloggad';
	@override String get nwc_auth_event_not_found => 'Inget autentiseringshändelse för plånbok hittades';
}

/// The flat map containing all translations for locale <sv>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsSv {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Ladda upp avatar',
			'most_zapped_streamers' => 'De flest zappade streamers',
			'no_user_found' => 'Ingen användare hittades',
			'anon' => 'Anno',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('sv').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '1 tittare', other: '${NumberFormat.decimalPattern('sv').format(n)} tittare', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'AVSLUTAD',
			'stream.status.planned' => 'PLANERADE',
			'stream.started' => ({required Object timestamp}) => 'Startad ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} gick live!',
			'stream.chat.disabled' => 'CHAT AVSTÄNGD',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Tidsgränsen går ut: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' tidsbegränsad '), user, const TextSpan(text: ' för '), time, ]), 
			'stream.chat.ended' => 'STREAM AVSLUTAD',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Skriv meddelande',
			'stream.chat.write.no_signer' => 'Det går inte att skriva meddelanden med n-pub inloggning',
			'stream.chat.write.login' => 'Logga in för att skicka meddelanden',
			'stream.chat.badge.awarded_to' => 'Tilldelas till:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FRÅN ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Radiering i ${time}',
			'goal.title' => ({required Object amount}) => 'Mål: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Kvarvarande: ${amount}',
			'goal.complete' => 'KOMPLETT',
			'button.login' => 'Logga in',
			'button.logout' => 'Logga ut',
			'button.edit_profile' => 'Redigera profil',
			'button.follow' => 'Följ',
			'button.unfollow' => 'Sluta följa',
			'button.mute' => 'Tysta',
			'button.unmute' => 'Avtysta',
			'button.share' => 'Dela',
			'button.save' => 'Spara',
			'button.connect' => 'Anslut',
			'button.settings' => 'Inställningar',
			'embed.article_by' => ({required Object name}) => 'Artikel av ${name}',
			'embed.note_by' => ({required Object name}) => 'Anteckning av ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Direktsändning via ${name}',
			'stream_list.following' => 'Följer',
			'stream_list.live' => 'Live',
			'stream_list.planned' => 'Planerade',
			'stream_list.ended' => 'Avslutade',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Anpassat belopp',
			'zap.confirm' => 'Bekräfta',
			'zap.comment' => 'Kommentar',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Öppna i plånboken',
			'zap.button_connect_wallet' => 'Anslut plånbok',
			'zap.copy' => 'Kopieras till urklipp',
			'zap.error.invalid_custom_amount' => 'Ogiltigt anpassat belopp',
			'zap.error.no_wallet' => 'Ingen blixtplånbok installerad',
			'zap.error.no_lud16' => 'Ingen blixtadress hittades',
			'profile.past_streams' => 'Tidigare streamar',
			'settings.button_profile' => 'Redigera profil',
			'settings.button_wallet' => 'Inställningar för plånbok',
			'settings.profile.display_name' => 'Visa namn',
			'settings.profile.about' => 'Om',
			'settings.profile.nip05' => 'Nostr adress',
			'settings.profile.lud16' => 'Lightning-adress',
			'settings.profile.error.logged_out' => 'Kan inte redigera profil när jag är utloggad',
			'settings.wallet.connect_wallet' => 'Anslut plånbok (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Koppla bort plånboken',
			'settings.wallet.connect_1tap' => '1-tryck anslutning',
			'settings.wallet.paste' => 'Klistra in URL',
			'settings.wallet.balance' => 'Balans',
			'settings.wallet.name' => 'Plånbok',
			'settings.wallet.error.logged_out' => 'Kan inte ansluta plånbok när du är utloggad',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Inget autentiseringshändelse för plånbok hittades',
			'login.username' => 'Användarnamn',
			'login.amber' => 'Logga in med Amber',
			'login.key' => 'Logga in med nyckel',
			'login.create' => 'Skapa konto',
			'login.error.invalid_key' => 'Ogiltig nyckel',
			'live.start' => 'GÅ DIREKT',
			'live.configure_stream' => 'Konfigurera ström',
			'live.endpoint' => 'Slutpunkt',
			'live.accept_tos' => 'Acceptera TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Titel',
			'live.summary' => 'Sammanfattning',
			'live.image' => 'Omslagsbild',
			'live.tags' => 'Etiketter',
			'live.nsfw' => 'NSFW-innehåll',
			'live.nsfw_description' => 'Markera här om denna stream innehåller nakenhet eller pornografiskt innehåll.',
			'live.error.failed' => 'Strömmen misslyckades',
			'live.error.connection_error' => 'Anslutningsfel',
			'live.error.start_failed' => 'Stream start misslyckades, vänligen kontrollera ditt saldo',
			_ => null,
		};
	}
}
