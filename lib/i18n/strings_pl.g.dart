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
class TranslationsPl implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPl _root = this; // ignore: unused_field

	@override 
	TranslationsPl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPl(meta: meta ?? this.$meta);

	// Translations

	/// Tekst zachęcający użytkownika do kliknięcia symbolu zastępczego awatara w celu rozpoczęcia przesyłania.
	@override String get upload_avatar => 'Prześlij awatar';

	/// Przechodzenie nad wymienionymi topowymi streamerami przez zapy
	@override String get most_zapped_streamers => 'Większość zapped streamerów';

	/// Nie znaleziono użytkownika podczas wyszukiwania
	@override String get no_user_found => 'Nie znaleziono użytkownika';

	/// Anonimowy użytkownik
	@override String get anon => 'Anon';

	/// Liczba widzów strumienia
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '1 przeglądarka',
		other: '${n} widzowie',
	);

	@override late final _TranslationsStreamPl stream = _TranslationsStreamPl._(_root);
	@override late final _TranslationsGoalPl goal = _TranslationsGoalPl._(_root);
	@override late final _TranslationsButtonPl button = _TranslationsButtonPl._(_root);
	@override late final _TranslationsEmbedPl embed = _TranslationsEmbedPl._(_root);

	/// Nagłówki na listach strumieni według typu strumienia na żywo / zakończony / planowany itp.
	@override late final _TranslationsStreamListPl stream_list = _TranslationsStreamListPl._(_root);

	@override late final _TranslationsZapPl zap = _TranslationsZapPl._(_root);
	@override late final _TranslationsProfilePl profile = _TranslationsProfilePl._(_root);
	@override late final _TranslationsLoginPl login = _TranslationsLoginPl._(_root);
}

// Path: stream
class _TranslationsStreamPl implements TranslationsStreamEn {
	_TranslationsStreamPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusPl status = _TranslationsStreamStatusPl._(_root);
	@override String started({ required Object timestamp}) => 'Start ${timestamp}';
	@override late final _TranslationsStreamChatPl chat = _TranslationsStreamChatPl._(_root);
}

// Path: goal
class _TranslationsGoalPl implements TranslationsGoalEn {
	_TranslationsGoalPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Cel: ${amount}';
	@override String remaining({ required Object amount}) => 'Pozostałe: ${amount}';
	@override String get complete => 'ZAKOŃCZONE';
}

// Path: button
class _TranslationsButtonPl implements TranslationsButtonEn {
	_TranslationsButtonPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations

	/// Tekst przycisku logowania
	@override String get login => 'Logowanie';

	@override String get logout => 'Wylogowanie';
	@override String get edit_profile => 'Edytuj profil';

	/// Tekst przycisku dla przycisku śledzenia
	@override String get follow => 'Śledź';

	/// Tekst przycisku cofnięcia obserwowania
	@override String get unfollow => 'Nie obserwuj';

	@override String get mute => 'Wyciszenie';
	@override String get unmute => 'Wyłącz wyciszenie';
	@override String get share => 'Udział';
	@override String get save => 'Zapisz';
}

// Path: embed
class _TranslationsEmbedPl implements TranslationsEmbedEn {
	_TranslationsEmbedPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Artykuł autorstwa ${name}';
	@override String note_by({ required Object name}) => 'Uwaga ${name}';
	@override String live_stream_by({ required Object name}) => 'Transmisja na żywo przez ${name}';
}

// Path: stream_list
class _TranslationsStreamListPl implements TranslationsStreamListEn {
	_TranslationsStreamListPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get following => 'Następujący';
	@override String get live => 'Na żywo';
	@override String get planned => 'Planowane';
	@override String get ended => 'Zakończony';
}

// Path: zap
class _TranslationsZapPl implements TranslationsZapEn {
	_TranslationsZapPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Kwota niestandardowa';
	@override String get confirm => 'Potwierdzenie';
	@override String get comment => 'Komentarz';
	@override String button_zap_ready({ required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Otwórz w portfelu';
	@override String get copy => 'Skopiowane do schowka';
	@override late final _TranslationsZapErrorPl error = _TranslationsZapErrorPl._(_root);
}

// Path: profile
class _TranslationsProfilePl implements TranslationsProfileEn {
	_TranslationsProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Poprzednie strumienie';
	@override late final _TranslationsProfileEditPl edit = _TranslationsProfileEditPl._(_root);
}

// Path: login
class _TranslationsLoginPl implements TranslationsLoginEn {
	_TranslationsLoginPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nazwa użytkownika';
	@override String get amber => 'Zaloguj się za pomocą Amber';
	@override String get key => 'Logowanie za pomocą klucza';
	@override String get create => 'Utwórz konto';
	@override late final _TranslationsLoginErrorPl error = _TranslationsLoginErrorPl._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusPl implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get live => 'NA ŻYWO';
	@override String get ended => 'ZAKOŃCZONY';
	@override String get planned => 'PLANOWANE';
}

// Path: stream.chat
class _TranslationsStreamChatPl implements TranslationsStreamChatEn {
	_TranslationsStreamChatPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CZAT WYŁĄCZONY';
	@override String disabled_timeout({ required Object time}) => 'Upłynął limit czasu: ${time}';

	/// Komunikat czatu pokazujący zdarzenia przekroczenia limitu czasu
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' upłynął limit czasu '),
		user,
		const TextSpan(text: ' dla '),
		time,
	], style: style, recognizer: recognizer);

	/// Stream zakończył stopkę na dole czatu
	@override String get ended => 'TRANSMISJA ZAKOŃCZONA';

	/// Wiadomość na czacie pokazująca zapy strumienia
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWritePl write = _TranslationsStreamChatWritePl._(_root);
	@override late final _TranslationsStreamChatBadgePl badge = _TranslationsStreamChatBadgePl._(_root);
	@override late final _TranslationsStreamChatRaidPl raid = _TranslationsStreamChatRaidPl._(_root);
}

// Path: zap.error
class _TranslationsZapErrorPl implements TranslationsZapErrorEn {
	_TranslationsZapErrorPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Nieprawidłowa kwota niestandardowa';
	@override String get no_wallet => 'Brak zainstalowanego portfela Lightning';
	@override String get no_lud16 => 'Nie znaleziono adresu pioruna';
}

// Path: profile.edit
class _TranslationsProfileEditPl implements TranslationsProfileEditEn {
	_TranslationsProfileEditPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Wyświetlana nazwa';
	@override String get about => 'O';
	@override String get nip05 => 'Adres Nostr';
	@override String get lud16 => 'Adres błyskawicy';
	@override late final _TranslationsProfileEditErrorPl error = _TranslationsProfileEditErrorPl._(_root);
}

// Path: login.error
class _TranslationsLoginErrorPl implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Nieprawidłowy klucz';
}

// Path: stream.chat.write
class _TranslationsStreamChatWritePl implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWritePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations

	/// Etykieta w polu wprowadzania wiadomości czatu
	@override String get label => 'Napisz wiadomość';

	/// Komunikat wejściowy czatu wyświetlany, gdy użytkownik jest zalogowany tylko za pomocą klucza pubkey
	@override String get no_signer => 'Nie można pisać wiadomości z loginem npub';

	/// Komunikat wejściowy czatu wyświetlany, gdy użytkownik jest wylogowany
	@override String get login => 'Zaloguj się, aby wysyłać wiadomości';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgePl implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations

	/// Nagłówek nad listą użytkowników, którzy otrzymali odznakę
	@override String get awarded_to => 'Przyznano:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidPl implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations

	/// Przesyłanie wiadomości na czacie do innego strumienia
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Nalot na czat z innego strumienia
	@override String from({ required Object name}) => 'RAID Z ${name}';

	/// Zegar odliczający czas do automatycznej jazdy
	@override String countdown({ required Object time}) => 'Naloty w ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorPl implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nie można edytować profilu po wylogowaniu';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Prześlij awatar';
			case 'most_zapped_streamers': return 'Większość zapped streamerów';
			case 'no_user_found': return 'Nie znaleziono użytkownika';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
				one: '1 przeglądarka',
				other: '${n} widzowie',
			);
			case 'stream.status.live': return 'NA ŻYWO';
			case 'stream.status.ended': return 'ZAKOŃCZONY';
			case 'stream.status.planned': return 'PLANOWANE';
			case 'stream.started': return ({ required Object timestamp}) => 'Start ${timestamp}';
			case 'stream.chat.disabled': return 'CZAT WYŁĄCZONY';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Upłynął limit czasu: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' upłynął limit czasu '),
				user,
				const TextSpan(text: ' dla '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'TRANSMISJA ZAKOŃCZONA';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Napisz wiadomość';
			case 'stream.chat.write.no_signer': return 'Nie można pisać wiadomości z loginem npub';
			case 'stream.chat.write.login': return 'Zaloguj się, aby wysyłać wiadomości';
			case 'stream.chat.badge.awarded_to': return 'Przyznano:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID Z ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Naloty w ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Cel: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Pozostałe: ${amount}';
			case 'goal.complete': return 'ZAKOŃCZONE';
			case 'button.login': return 'Logowanie';
			case 'button.logout': return 'Wylogowanie';
			case 'button.edit_profile': return 'Edytuj profil';
			case 'button.follow': return 'Śledź';
			case 'button.unfollow': return 'Nie obserwuj';
			case 'button.mute': return 'Wyciszenie';
			case 'button.unmute': return 'Wyłącz wyciszenie';
			case 'button.share': return 'Udział';
			case 'button.save': return 'Zapisz';
			case 'embed.article_by': return ({ required Object name}) => 'Artykuł autorstwa ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Uwaga ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Transmisja na żywo przez ${name}';
			case 'stream_list.following': return 'Następujący';
			case 'stream_list.live': return 'Na żywo';
			case 'stream_list.planned': return 'Planowane';
			case 'stream_list.ended': return 'Zakończony';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Kwota niestandardowa';
			case 'zap.confirm': return 'Potwierdzenie';
			case 'zap.comment': return 'Komentarz';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Otwórz w portfelu';
			case 'zap.copy': return 'Skopiowane do schowka';
			case 'zap.error.invalid_custom_amount': return 'Nieprawidłowa kwota niestandardowa';
			case 'zap.error.no_wallet': return 'Brak zainstalowanego portfela Lightning';
			case 'zap.error.no_lud16': return 'Nie znaleziono adresu pioruna';
			case 'profile.past_streams': return 'Poprzednie strumienie';
			case 'profile.edit.display_name': return 'Wyświetlana nazwa';
			case 'profile.edit.about': return 'O';
			case 'profile.edit.nip05': return 'Adres Nostr';
			case 'profile.edit.lud16': return 'Adres błyskawicy';
			case 'profile.edit.error.logged_out': return 'Nie można edytować profilu po wylogowaniu';
			case 'login.username': return 'Nazwa użytkownika';
			case 'login.amber': return 'Zaloguj się za pomocą Amber';
			case 'login.key': return 'Logowanie za pomocą klucza';
			case 'login.create': return 'Utwórz konto';
			case 'login.error.invalid_key': return 'Nieprawidłowy klucz';
			default: return null;
		}
	}
}

