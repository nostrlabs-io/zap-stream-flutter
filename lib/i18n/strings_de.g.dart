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
class TranslationsDe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations

	/// Text, der den Benutzer auffordert, auf den Avatar-Platzhalter zu klicken, um den Upload zu starten
	@override String get upload_avatar => 'Avatar hochladen';

	/// Überschrift über gelistete Top-Streamer nach Zaps
	@override String get most_zapped_streamers => 'Meistgezappte Streamer';

	/// Kein Benutzer bei der Suche gefunden
	@override String get no_user_found => 'Kein Benutzer gefunden';

	/// Ein anonymer Benutzer
	@override String get anon => 'Anon';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('de').format(n)} sats';

	/// Anzahl der Zuschauer des Streams
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '1 Zuschauer',
		other: '${NumberFormat.decimalPattern('de').format(n)} Zuschauer',
	);

	@override late final _Translations$stream$de stream = _Translations$stream$de._(_root);
	@override late final _Translations$goal$de goal = _Translations$goal$de._(_root);
	@override late final _Translations$button$de button = _Translations$button$de._(_root);
	@override late final _Translations$embed$de embed = _Translations$embed$de._(_root);

	/// Überschriften auf Stream-Listen nach Stream-Typ live/beendet/geplant usw.
	@override late final _Translations$stream_list$de stream_list = _Translations$stream_list$de._(_root);

	@override late final _Translations$zap$de zap = _Translations$zap$de._(_root);
	@override late final _Translations$profile$de profile = _Translations$profile$de._(_root);
	@override late final _Translations$settings$de settings = _Translations$settings$de._(_root);
	@override late final _Translations$login$de login = _Translations$login$de._(_root);
	@override late final _Translations$live$de live = _Translations$live$de._(_root);
}

// Path: stream
class _Translations$stream$de extends Translations$stream$en {
	_Translations$stream$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$de status = _Translations$stream$status$de._(_root);
	@override String started({required Object timestamp}) => 'Gestartet ${timestamp}';
	@override String notification({required Object name}) => '${name} ging live!';
	@override late final _Translations$stream$chat$de chat = _Translations$stream$chat$de._(_root);
}

// Path: goal
class _Translations$goal$de extends Translations$goal$en {
	_Translations$goal$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Ziel: ${amount}';
	@override String remaining({required Object amount}) => 'Verbleibend: ${amount}';
	@override String get complete => 'COMPLETE';
}

// Path: button
class _Translations$button$de extends Translations$button$en {
	_Translations$button$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations

	/// Schaltflächentext für die Anmeldeschaltfläche
	@override String get login => 'Anmelden';

	@override String get logout => 'Abmelden';
	@override String get edit_profile => 'Profil anpassen';

	/// Schaltflächentext für die Schaltfläche "Folgen
	@override String get follow => 'Folgen';

	/// Schaltflächentext für die "Unfollow"-Schaltfläche
	@override String get unfollow => 'Entfolgen';

	@override String get mute => 'Stummschalten';
	@override String get unmute => 'Entstummen';
	@override String get share => 'Teilen';
	@override String get save => 'Speichern';
	@override String get connect => 'Verbinden Sie';
	@override String get settings => 'Einstellungen';
}

// Path: embed
class _Translations$embed$de extends Translations$embed$en {
	_Translations$embed$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artikel von ${name}';
	@override String note_by({required Object name}) => 'Note von ${name}';
	@override String live_stream_by({required Object name}) => 'Live-Stream von ${name}';
}

// Path: stream_list
class _Translations$stream_list$de extends Translations$stream_list$en {
	_Translations$stream_list$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get following => 'Folge ich';
	@override String get live => 'Live';
	@override String get planned => 'Geplant';
	@override String get ended => 'Beendet';
}

// Path: zap
class _Translations$zap$de extends Translations$zap$en {
	_Translations$zap$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => '${name} zappen';
	@override String get custom_amount => 'Benutzerdefinierter Betrag';
	@override String get confirm => 'Bestätigen';
	@override String get comment => 'Kommentar';
	@override String button_zap_ready({required Object amount}) => '${amount} sats zappen';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'In Brieftasche öffnen';
	@override String get button_connect_wallet => 'Brieftasche verbinden';
	@override String get copy => 'In die Zwischenablage kopiert';
	@override late final _Translations$zap$error$de error = _Translations$zap$error$de._(_root);
}

// Path: profile
class _Translations$profile$de extends Translations$profile$en {
	_Translations$profile$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Vergangene Streams';
}

// Path: settings
class _Translations$settings$de extends Translations$settings$en {
	_Translations$settings$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Profil bearbeiten';
	@override String get button_wallet => 'Wallet-Einstellungen';
	@override late final _Translations$settings$profile$de profile = _Translations$settings$profile$de._(_root);
	@override late final _Translations$settings$wallet$de wallet = _Translations$settings$wallet$de._(_root);
}

// Path: login
class _Translations$login$de extends Translations$login$en {
	_Translations$login$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get username => 'Benutzername';
	@override String get amber => 'Anmeldung mit Amber';
	@override String get key => 'Anmeldung mit Schlüssel';
	@override String get create => 'Konto erstellen';
	@override late final _Translations$login$error$de error = _Translations$login$error$de._(_root);
}

// Path: live
class _Translations$live$de extends Translations$live$en {
	_Translations$live$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get start => 'LIVE GEHEN';
	@override String get configure_stream => 'Stream konfigurieren';
	@override String get endpoint => 'Endpunkt';
	@override String get accept_tos => 'TOS akzeptieren';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Titel';
	@override String get summary => 'Zusammenfassung';
	@override String get image => 'Titelbild';
	@override String get tags => 'Tags';
	@override String get nsfw => 'NSFW-Inhalt';
	@override String get nsfw_description => 'Prüfen Sie hier, ob dieser Stream Nacktheit oder pornografische Inhalte enthält.';
	@override late final _Translations$live$error$de error = _Translations$live$error$de._(_root);
}

// Path: stream.status
class _Translations$stream$status$de extends Translations$stream$status$en {
	_Translations$stream$status$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'BEENDET';
	@override String get planned => 'GEPLANT';
}

// Path: stream.chat
class _Translations$stream$chat$de extends Translations$stream$chat$en {
	_Translations$stream$chat$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DEAKTIVIERT';
	@override String disabled_timeout({required Object time}) => 'Timeout läuft ab: ${time}';

	/// Chat-Nachricht mit Timeout-Ereignissen
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' gibt '),
		user,
		const TextSpan(text: ' einen Timeout für '),
		time,
	]);

	/// Stream beendet Fußzeile am Ende des Chats
	@override String get ended => 'STREAM BEENDET';

	/// Chat-Nachricht mit Stream-Zaps
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' hat '),
		amount,
		const TextSpan(text: ' sats gezappt'),
	]);

	@override late final _Translations$stream$chat$write$de write = _Translations$stream$chat$write$de._(_root);
	@override late final _Translations$stream$chat$badge$de badge = _Translations$stream$chat$badge$de._(_root);
	@override late final _Translations$stream$chat$raid$de raid = _Translations$stream$chat$raid$de._(_root);
}

// Path: zap.error
class _Translations$zap$error$de extends Translations$zap$error$en {
	_Translations$zap$error$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Ungültiger benutzerdefinierter Betrag';
	@override String get no_wallet => 'Keine Lightning-Brieftasche installiert';
	@override String get no_lud16 => 'Keine Blitzadresse gefunden';
}

// Path: settings.profile
class _Translations$settings$profile$de extends Translations$settings$profile$en {
	_Translations$settings$profile$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Name anzeigen';
	@override String get about => 'Über';
	@override String get nip05 => 'Nostr-Adresse';
	@override String get lud16 => 'Blitz-Adresse';
	@override late final _Translations$settings$profile$error$de error = _Translations$settings$profile$error$de._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$de extends Translations$settings$wallet$en {
	_Translations$settings$wallet$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Brieftasche abtrennen';
	@override String get connect_1tap => '1-Tap-Verbindung';
	@override String get paste => 'URL einfügen';
	@override String get balance => 'Bilanz';
	@override String get name => 'Brieftasche';
	@override late final _Translations$settings$wallet$error$de error = _Translations$settings$wallet$error$de._(_root);
}

// Path: login.error
class _Translations$login$error$de extends Translations$login$error$en {
	_Translations$login$error$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Ungültiger Schlüssel';
}

// Path: live.error
class _Translations$live$error$de extends Translations$live$error$en {
	_Translations$live$error$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Stream fehlgeschlagen';
	@override String get connection_error => 'Verbindungsfehler';
	@override String get start_failed => 'Streamstart fehlgeschlagen, bitte überprüfen Sie Ihr Guthaben';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$de extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations

	/// Beschriftung des Eingabefeldes für Chatnachrichten
	@override String get label => 'Nachricht schreiben';

	/// Chat-Eingabemeldung wird angezeigt, wenn der Benutzer nur mit Pubkey eingeloggt ist
	@override String get no_signer => 'Mit npub-Login können keine Nachrichten geschrieben werden';

	/// Chat-Eingabemeldung wird angezeigt, wenn der Benutzer abgemeldet ist
	@override String get login => 'Bitte anmelden, um Nachrichten zu senden';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$de extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations

	/// Überschrift über der Liste der Benutzer, die ein Abzeichen erhalten haben
	@override String get awarded_to => 'Verliehen an:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$de extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations

	/// Chat-Überfallnachricht an einen anderen Stream
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat-Raid-Nachricht aus einem anderen Stream
	@override String from({required Object name}) => 'RAID VON ${name}';

	/// Countdown-Timer für automatisches Reiten
	@override String countdown({required Object time}) => 'Raubzüge auf ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$de extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Profil kann nicht bearbeitet werden, wenn es abgemeldet ist';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$de extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kann keine Verbindung zur Brieftasche herstellen, wenn ich abgemeldet bin';
	@override String get nwc_auth_event_not_found => 'Kein Wallet-Authentifizierungsereignis gefunden';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Avatar hochladen',
			'most_zapped_streamers' => 'Meistgezappte Streamer',
			'no_user_found' => 'Kein Benutzer gefunden',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('de').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '1 Zuschauer', other: '${NumberFormat.decimalPattern('de').format(n)} Zuschauer', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'BEENDET',
			'stream.status.planned' => 'GEPLANT',
			'stream.started' => ({required Object timestamp}) => 'Gestartet ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} ging live!',
			'stream.chat.disabled' => 'CHAT DEAKTIVIERT',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Timeout läuft ab: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' gibt '), user, const TextSpan(text: ' einen Timeout für '), time, ]), 
			'stream.chat.ended' => 'STREAM BEENDET',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' hat '), amount, const TextSpan(text: ' sats gezappt'), ]), 
			'stream.chat.write.label' => 'Nachricht schreiben',
			'stream.chat.write.no_signer' => 'Mit npub-Login können keine Nachrichten geschrieben werden',
			'stream.chat.write.login' => 'Bitte anmelden, um Nachrichten zu senden',
			'stream.chat.badge.awarded_to' => 'Verliehen an:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID VON ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Raubzüge auf ${time}',
			'goal.title' => ({required Object amount}) => 'Ziel: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Verbleibend: ${amount}',
			'goal.complete' => 'COMPLETE',
			'button.login' => 'Anmelden',
			'button.logout' => 'Abmelden',
			'button.edit_profile' => 'Profil anpassen',
			'button.follow' => 'Folgen',
			'button.unfollow' => 'Entfolgen',
			'button.mute' => 'Stummschalten',
			'button.unmute' => 'Entstummen',
			'button.share' => 'Teilen',
			'button.save' => 'Speichern',
			'button.connect' => 'Verbinden Sie',
			'button.settings' => 'Einstellungen',
			'embed.article_by' => ({required Object name}) => 'Artikel von ${name}',
			'embed.note_by' => ({required Object name}) => 'Note von ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Live-Stream von ${name}',
			'stream_list.following' => 'Folge ich',
			'stream_list.live' => 'Live',
			'stream_list.planned' => 'Geplant',
			'stream_list.ended' => 'Beendet',
			'zap.title' => ({required Object name}) => '${name} zappen',
			'zap.custom_amount' => 'Benutzerdefinierter Betrag',
			'zap.confirm' => 'Bestätigen',
			'zap.comment' => 'Kommentar',
			'zap.button_zap_ready' => ({required Object amount}) => '${amount} sats zappen',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'In Brieftasche öffnen',
			'zap.button_connect_wallet' => 'Brieftasche verbinden',
			'zap.copy' => 'In die Zwischenablage kopiert',
			'zap.error.invalid_custom_amount' => 'Ungültiger benutzerdefinierter Betrag',
			'zap.error.no_wallet' => 'Keine Lightning-Brieftasche installiert',
			'zap.error.no_lud16' => 'Keine Blitzadresse gefunden',
			'profile.past_streams' => 'Vergangene Streams',
			'settings.button_profile' => 'Profil bearbeiten',
			'settings.button_wallet' => 'Wallet-Einstellungen',
			'settings.profile.display_name' => 'Name anzeigen',
			'settings.profile.about' => 'Über',
			'settings.profile.nip05' => 'Nostr-Adresse',
			'settings.profile.lud16' => 'Blitz-Adresse',
			'settings.profile.error.logged_out' => 'Profil kann nicht bearbeitet werden, wenn es abgemeldet ist',
			'settings.wallet.connect_wallet' => 'Connect Wallet (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Brieftasche abtrennen',
			'settings.wallet.connect_1tap' => '1-Tap-Verbindung',
			'settings.wallet.paste' => 'URL einfügen',
			'settings.wallet.balance' => 'Bilanz',
			'settings.wallet.name' => 'Brieftasche',
			'settings.wallet.error.logged_out' => 'Kann keine Verbindung zur Brieftasche herstellen, wenn ich abgemeldet bin',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Kein Wallet-Authentifizierungsereignis gefunden',
			'login.username' => 'Benutzername',
			'login.amber' => 'Anmeldung mit Amber',
			'login.key' => 'Anmeldung mit Schlüssel',
			'login.create' => 'Konto erstellen',
			'login.error.invalid_key' => 'Ungültiger Schlüssel',
			'live.start' => 'LIVE GEHEN',
			'live.configure_stream' => 'Stream konfigurieren',
			'live.endpoint' => 'Endpunkt',
			'live.accept_tos' => 'TOS akzeptieren',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Titel',
			'live.summary' => 'Zusammenfassung',
			'live.image' => 'Titelbild',
			'live.tags' => 'Tags',
			'live.nsfw' => 'NSFW-Inhalt',
			'live.nsfw_description' => 'Prüfen Sie hier, ob dieser Stream Nacktheit oder pornografische Inhalte enthält.',
			'live.error.failed' => 'Stream fehlgeschlagen',
			'live.error.connection_error' => 'Verbindungsfehler',
			'live.error.start_failed' => 'Streamstart fehlgeschlagen, bitte überprüfen Sie Ihr Guthaben',
			_ => null,
		};
	}
}
