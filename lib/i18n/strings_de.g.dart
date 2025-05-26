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
class TranslationsDe extends Translations {
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

	/// Überschrift über gelistete Top-Streamer von zaps
	@override String get most_zapped_streamers => 'Meistgezappte Streamer';

	/// Kein Benutzer bei der Suche gefunden
	@override String get no_user_found => 'Kein Benutzer gefunden';

	/// Ein anonymer Benutzer
	@override String get anon => 'Anon';

	/// Anzahl der Betrachter des Streams
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '1 Zuschauer',
		other: '${n} Zuschauer',
	);

	@override late final _TranslationsStreamDe stream = _TranslationsStreamDe._(_root);
	@override late final _TranslationsGoalDe goal = _TranslationsGoalDe._(_root);
	@override late final _TranslationsButtonDe button = _TranslationsButtonDe._(_root);
	@override late final _TranslationsEmbedDe embed = _TranslationsEmbedDe._(_root);

	/// Überschriften auf Stream-Listen nach Stream-Typ live/beendet/geplant usw.
	@override late final _TranslationsStreamListDe stream_list = _TranslationsStreamListDe._(_root);

	@override late final _TranslationsZapDe zap = _TranslationsZapDe._(_root);
	@override late final _TranslationsProfileDe profile = _TranslationsProfileDe._(_root);
	@override late final _TranslationsLoginDe login = _TranslationsLoginDe._(_root);
}

// Path: stream
class _TranslationsStreamDe extends TranslationsStreamEn {
	_TranslationsStreamDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusDe status = _TranslationsStreamStatusDe._(_root);
	@override String started({required Object timestamp}) => 'Gestartet ${timestamp}';
	@override late final _TranslationsStreamChatDe chat = _TranslationsStreamChatDe._(_root);
}

// Path: goal
class _TranslationsGoalDe extends TranslationsGoalEn {
	_TranslationsGoalDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Ziel: ${amount}';
	@override String remaining({required Object amount}) => 'Verbleibend: ${amount}';
	@override String get complete => 'COMPLETE';
}

// Path: button
class _TranslationsButtonDe extends TranslationsButtonEn {
	_TranslationsButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
}

// Path: embed
class _TranslationsEmbedDe extends TranslationsEmbedEn {
	_TranslationsEmbedDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artikel von ${name}';
	@override String note_by({required Object name}) => 'Note von ${name}';
	@override String live_stream_by({required Object name}) => 'Live-Stream von ${name}';
}

// Path: stream_list
class _TranslationsStreamListDe extends TranslationsStreamListEn {
	_TranslationsStreamListDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get following => 'Folge ich';
	@override String get live => 'Live';
	@override String get planned => 'Geplant';
	@override String get ended => 'Beendet';
}

// Path: zap
class _TranslationsZapDe extends TranslationsZapEn {
	_TranslationsZapDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => '${name} zappen';
	@override String get custom_amount => 'Benutzerdefinierter Betrag';
	@override String get confirm => 'Bestätigen';
	@override String get comment => 'Kommentar';
	@override String button_zap_ready({required Object amount}) => '${amount} sats zappen';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'In Brieftasche öffnen';
	@override String get copy => 'In die Zwischenablage kopiert';
	@override late final _TranslationsZapErrorDe error = _TranslationsZapErrorDe._(_root);
}

// Path: profile
class _TranslationsProfileDe extends TranslationsProfileEn {
	_TranslationsProfileDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Vergangene Streams';
	@override late final _TranslationsProfileEditDe edit = _TranslationsProfileEditDe._(_root);
}

// Path: login
class _TranslationsLoginDe extends TranslationsLoginEn {
	_TranslationsLoginDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get username => 'Benutzername';
	@override String get amber => 'Anmeldung mit Amber';
	@override String get key => 'Anmeldung mit Schlüssel';
	@override String get create => 'Konto erstellen';
	@override late final _TranslationsLoginErrorDe error = _TranslationsLoginErrorDe._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusDe extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'ENDED';
	@override String get planned => 'GEPLANT';
}

// Path: stream.chat
class _TranslationsStreamChatDe extends TranslationsStreamChatEn {
	_TranslationsStreamChatDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DEAKTIVIERT';
	@override String disabled_timeout({required Object time}) => 'Die Zeitüberschreitung läuft ab: ${time}';

	/// Chat-Nachricht mit Zeitüberschreitungsereignissen
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' Zeitüberschreitung '),
		user,
		const TextSpan(text: ' für '),
		time,
	]);

	/// Stream beendet Fußzeile am Ende des Chats
	@override String get ended => 'STREAM BEENDET';

	/// Chatnachricht mit Stream Zaps
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' hat '),
		amount,
		const TextSpan(text: ' sats gezappt'),
	]);

	@override late final _TranslationsStreamChatWriteDe write = _TranslationsStreamChatWriteDe._(_root);
	@override late final _TranslationsStreamChatBadgeDe badge = _TranslationsStreamChatBadgeDe._(_root);
	@override late final _TranslationsStreamChatRaidDe raid = _TranslationsStreamChatRaidDe._(_root);
}

// Path: zap.error
class _TranslationsZapErrorDe extends TranslationsZapErrorEn {
	_TranslationsZapErrorDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Ungültiger benutzerdefinierter Betrag';
	@override String get no_wallet => 'Keine Lightning-Brieftasche installiert';
	@override String get no_lud16 => 'Keine Blitzadresse gefunden';
}

// Path: profile.edit
class _TranslationsProfileEditDe extends TranslationsProfileEditEn {
	_TranslationsProfileEditDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Name anzeigen';
	@override String get about => 'Über';
	@override String get nip05 => 'Nostr-Adresse';
	@override String get lud16 => 'Lightning-Adresse';
	@override late final _TranslationsProfileEditErrorDe error = _TranslationsProfileEditErrorDe._(_root);
}

// Path: login.error
class _TranslationsLoginErrorDe extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Ungültiger Schlüssel';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteDe extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsStreamChatBadgeDe extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations

	/// Überschrift über der Liste der Benutzer, die ein Abzeichen erhalten haben
	@override String get awarded_to => 'Verliehen an:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidDe extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations

	/// Chat-Überfallnachricht an einen anderen Stream
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat-Raid-Nachricht aus einem anderen Stream
	@override String from({required Object name}) => 'RAID VON ${name}';

	/// Countdown-Timer für automatisches Reiten
	@override String countdown({required Object time}) => 'Raubzüge auf ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorDe extends TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Profil kann nicht bearbeitet werden, wenn es abgemeldet ist';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Avatar hochladen';
			case 'most_zapped_streamers': return 'Meistgezappte Streamer';
			case 'no_user_found': return 'Kein Benutzer gefunden';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
				one: '1 Zuschauer',
				other: '${n} Zuschauer',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'ENDED';
			case 'stream.status.planned': return 'GEPLANT';
			case 'stream.started': return ({required Object timestamp}) => 'Gestartet ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT DEAKTIVIERT';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Die Zeitüberschreitung läuft ab: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' Zeitüberschreitung '),
				user,
				const TextSpan(text: ' für '),
				time,
			]);
			case 'stream.chat.ended': return 'STREAM BEENDET';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' hat '),
				amount,
				const TextSpan(text: ' sats gezappt'),
			]);
			case 'stream.chat.write.label': return 'Nachricht schreiben';
			case 'stream.chat.write.no_signer': return 'Mit npub-Login können keine Nachrichten geschrieben werden';
			case 'stream.chat.write.login': return 'Bitte anmelden, um Nachrichten zu senden';
			case 'stream.chat.badge.awarded_to': return 'Verliehen an:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID VON ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Raubzüge auf ${time}';
			case 'goal.title': return ({required Object amount}) => 'Ziel: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Verbleibend: ${amount}';
			case 'goal.complete': return 'COMPLETE';
			case 'button.login': return 'Anmelden';
			case 'button.logout': return 'Abmelden';
			case 'button.edit_profile': return 'Profil anpassen';
			case 'button.follow': return 'Folgen';
			case 'button.unfollow': return 'Entfolgen';
			case 'button.mute': return 'Stummschalten';
			case 'button.unmute': return 'Entstummen';
			case 'button.share': return 'Teilen';
			case 'button.save': return 'Speichern';
			case 'embed.article_by': return ({required Object name}) => 'Artikel von ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Note von ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Live-Stream von ${name}';
			case 'stream_list.following': return 'Folge ich';
			case 'stream_list.live': return 'Live';
			case 'stream_list.planned': return 'Geplant';
			case 'stream_list.ended': return 'Beendet';
			case 'zap.title': return ({required Object name}) => '${name} zappen';
			case 'zap.custom_amount': return 'Benutzerdefinierter Betrag';
			case 'zap.confirm': return 'Bestätigen';
			case 'zap.comment': return 'Kommentar';
			case 'zap.button_zap_ready': return ({required Object amount}) => '${amount} sats zappen';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'In Brieftasche öffnen';
			case 'zap.copy': return 'In die Zwischenablage kopiert';
			case 'zap.error.invalid_custom_amount': return 'Ungültiger benutzerdefinierter Betrag';
			case 'zap.error.no_wallet': return 'Keine Lightning-Brieftasche installiert';
			case 'zap.error.no_lud16': return 'Keine Blitzadresse gefunden';
			case 'profile.past_streams': return 'Vergangene Streams';
			case 'profile.edit.display_name': return 'Name anzeigen';
			case 'profile.edit.about': return 'Über';
			case 'profile.edit.nip05': return 'Nostr-Adresse';
			case 'profile.edit.lud16': return 'Lightning-Adresse';
			case 'profile.edit.error.logged_out': return 'Profil kann nicht bearbeitet werden, wenn es abgemeldet ist';
			case 'login.username': return 'Benutzername';
			case 'login.amber': return 'Anmeldung mit Amber';
			case 'login.key': return 'Anmeldung mit Schlüssel';
			case 'login.create': return 'Konto erstellen';
			case 'login.error.invalid_key': return 'Ungültiger Schlüssel';
			default: return null;
		}
	}
}

