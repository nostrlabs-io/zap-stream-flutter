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
class TranslationsPl extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('pl').format(n)} sats';

	/// Liczba widzów strumienia
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '1 przeglądarka',
		other: '{n:decimalPattern} widzów',
	);

	@override late final _TranslationsStreamPl stream = _TranslationsStreamPl._(_root);
	@override late final _TranslationsGoalPl goal = _TranslationsGoalPl._(_root);
	@override late final _TranslationsButtonPl button = _TranslationsButtonPl._(_root);
	@override late final _TranslationsEmbedPl embed = _TranslationsEmbedPl._(_root);

	/// Nagłówki na listach strumieni według typu strumienia na żywo / zakończony / planowany itp.
	@override late final _TranslationsStreamListPl stream_list = _TranslationsStreamListPl._(_root);

	@override late final _TranslationsZapPl zap = _TranslationsZapPl._(_root);
	@override late final _TranslationsProfilePl profile = _TranslationsProfilePl._(_root);
	@override late final _TranslationsSettingsPl settings = _TranslationsSettingsPl._(_root);
	@override late final _TranslationsLoginPl login = _TranslationsLoginPl._(_root);
	@override late final _TranslationsLivePl live = _TranslationsLivePl._(_root);
}

// Path: stream
class _TranslationsStreamPl extends TranslationsStreamEn {
	_TranslationsStreamPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusPl status = _TranslationsStreamStatusPl._(_root);
	@override String started({required Object timestamp}) => 'Start ${timestamp}';
	@override String notification({required Object name}) => '${name} został uruchomiony!';
	@override late final _TranslationsStreamChatPl chat = _TranslationsStreamChatPl._(_root);
}

// Path: goal
class _TranslationsGoalPl extends TranslationsGoalEn {
	_TranslationsGoalPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Cel: ${amount}';
	@override String remaining({required Object amount}) => 'Pozostałe: ${amount}';
	@override String get complete => 'ZAKOŃCZONE';
}

// Path: button
class _TranslationsButtonPl extends TranslationsButtonEn {
	_TranslationsButtonPl._(TranslationsPl root) : this._root = root, super.internal(root);

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
	@override String get connect => 'Połączenie';
	@override String get settings => 'Ustawienia';
}

// Path: embed
class _TranslationsEmbedPl extends TranslationsEmbedEn {
	_TranslationsEmbedPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artykuł autorstwa ${name}';
	@override String note_by({required Object name}) => 'Uwaga ${name}';
	@override String live_stream_by({required Object name}) => 'Transmisja na żywo przez ${name}';
}

// Path: stream_list
class _TranslationsStreamListPl extends TranslationsStreamListEn {
	_TranslationsStreamListPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get following => 'Następujący';
	@override String get live => 'Na żywo';
	@override String get planned => 'Planowane';
	@override String get ended => 'Zakończony';
}

// Path: zap
class _TranslationsZapPl extends TranslationsZapEn {
	_TranslationsZapPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Kwota niestandardowa';
	@override String get confirm => 'Potwierdzenie';
	@override String get comment => 'Komentarz';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Otwórz w portfelu';
	@override String get button_connect_wallet => 'Connect Wallet';
	@override String get copy => 'Skopiowane do schowka';
	@override late final _TranslationsZapErrorPl error = _TranslationsZapErrorPl._(_root);
}

// Path: profile
class _TranslationsProfilePl extends TranslationsProfileEn {
	_TranslationsProfilePl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Poprzednie strumienie';
}

// Path: settings
class _TranslationsSettingsPl extends TranslationsSettingsEn {
	_TranslationsSettingsPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Edytuj profil';
	@override String get button_wallet => 'Ustawienia portfela';
	@override late final _TranslationsSettingsProfilePl profile = _TranslationsSettingsProfilePl._(_root);
	@override late final _TranslationsSettingsWalletPl wallet = _TranslationsSettingsWalletPl._(_root);
}

// Path: login
class _TranslationsLoginPl extends TranslationsLoginEn {
	_TranslationsLoginPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nazwa użytkownika';
	@override String get amber => 'Zaloguj się za pomocą Amber';
	@override String get key => 'Logowanie za pomocą klucza';
	@override String get create => 'Utwórz konto';
	@override late final _TranslationsLoginErrorPl error = _TranslationsLoginErrorPl._(_root);
}

// Path: live
class _TranslationsLivePl extends TranslationsLiveEn {
	_TranslationsLivePl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get start => 'GO LIVE';
	@override String get configure_stream => 'Konfiguracja strumienia';
	@override String get endpoint => 'Punkt końcowy';
	@override String get accept_tos => 'Zaakceptuj Regulamin';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Tytuł';
	@override String get summary => 'Podsumowanie';
	@override String get image => 'Obraz na okładce';
	@override String get tags => 'Tagi';
	@override String get nsfw => 'Treści NSFW';
	@override String get nsfw_description => 'Sprawdź tutaj, czy ten stream zawiera nagość lub treści pornograficzne.';
	@override late final _TranslationsLiveErrorPl error = _TranslationsLiveErrorPl._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusPl extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get live => 'NA ŻYWO';
	@override String get ended => 'ZAKOŃCZONY';
	@override String get planned => 'PLANOWANE';
}

// Path: stream.chat
class _TranslationsStreamChatPl extends TranslationsStreamChatEn {
	_TranslationsStreamChatPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CZAT WYŁĄCZONY';
	@override String disabled_timeout({required Object time}) => 'Upłynął limit czasu: ${time}';

	/// Komunikat czatu pokazujący zdarzenia przekroczenia limitu czasu
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' upłynął limit czasu '),
		user,
		const TextSpan(text: ' dla '),
		time,
	]);

	/// Stream zakończył stopkę na dole czatu
	@override String get ended => 'TRANSMISJA ZAKOŃCZONA';

	/// Wiadomość na czacie pokazująca zapy strumienia
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _TranslationsStreamChatWritePl write = _TranslationsStreamChatWritePl._(_root);
	@override late final _TranslationsStreamChatBadgePl badge = _TranslationsStreamChatBadgePl._(_root);
	@override late final _TranslationsStreamChatRaidPl raid = _TranslationsStreamChatRaidPl._(_root);
}

// Path: zap.error
class _TranslationsZapErrorPl extends TranslationsZapErrorEn {
	_TranslationsZapErrorPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Nieprawidłowa kwota niestandardowa';
	@override String get no_wallet => 'Brak zainstalowanego portfela Lightning';
	@override String get no_lud16 => 'Nie znaleziono adresu pioruna';
}

// Path: settings.profile
class _TranslationsSettingsProfilePl extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfilePl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Wyświetlana nazwa';
	@override String get about => 'O';
	@override String get nip05 => 'Adres Nostr';
	@override String get lud16 => 'Adres błyskawicy';
	@override late final _TranslationsSettingsProfileErrorPl error = _TranslationsSettingsProfileErrorPl._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletPl extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Odłącz portfel';
	@override String get connect_1tap => 'Połączenie 1-wtykowe';
	@override String get paste => 'Wklej adres URL';
	@override String get balance => 'Równowaga';
	@override String get name => 'Portfel';
	@override late final _TranslationsSettingsWalletErrorPl error = _TranslationsSettingsWalletErrorPl._(_root);
}

// Path: login.error
class _TranslationsLoginErrorPl extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Nieprawidłowy klucz';
}

// Path: live.error
class _TranslationsLiveErrorPl extends TranslationsLiveErrorEn {
	_TranslationsLiveErrorPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Strumień nie powiódł się';
	@override String get connection_error => 'Błąd połączenia';
	@override String get start_failed => 'Uruchomienie strumienia nie powiodło się, sprawdź saldo';
}

// Path: stream.chat.write
class _TranslationsStreamChatWritePl extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWritePl._(TranslationsPl root) : this._root = root, super.internal(root);

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
class _TranslationsStreamChatBadgePl extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgePl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations

	/// Nagłówek nad listą użytkowników, którzy otrzymali odznakę
	@override String get awarded_to => 'Przyznano:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidPl extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations

	/// Przesyłanie wiadomości na czacie do innego strumienia
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Nalot na czat z innego strumienia
	@override String from({required Object name}) => 'RAID Z ${name}';

	/// Zegar odliczający czas do automatycznej jazdy
	@override String countdown({required Object time}) => 'Naloty w ${time}';
}

// Path: settings.profile.error
class _TranslationsSettingsProfileErrorPl extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nie można edytować profilu po wylogowaniu';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorPl extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorPl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nie można połączyć portfela po wylogowaniu';
	@override String get nwc_auth_event_not_found => 'Nie znaleziono zdarzenia autoryzacji portfela';
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
			case 'full_amount_sats': return ({required num n}) => '${NumberFormat.decimalPattern('pl').format(n)} sats';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
				one: '1 przeglądarka',
				other: '{n:decimalPattern} widzów',
			);
			case 'stream.status.live': return 'NA ŻYWO';
			case 'stream.status.ended': return 'ZAKOŃCZONY';
			case 'stream.status.planned': return 'PLANOWANE';
			case 'stream.started': return ({required Object timestamp}) => 'Start ${timestamp}';
			case 'stream.notification': return ({required Object name}) => '${name} został uruchomiony!';
			case 'stream.chat.disabled': return 'CZAT WYŁĄCZONY';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Upłynął limit czasu: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' upłynął limit czasu '),
				user,
				const TextSpan(text: ' dla '),
				time,
			]);
			case 'stream.chat.ended': return 'TRANSMISJA ZAKOŃCZONA';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Napisz wiadomość';
			case 'stream.chat.write.no_signer': return 'Nie można pisać wiadomości z loginem npub';
			case 'stream.chat.write.login': return 'Zaloguj się, aby wysyłać wiadomości';
			case 'stream.chat.badge.awarded_to': return 'Przyznano:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID Z ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Naloty w ${time}';
			case 'goal.title': return ({required Object amount}) => 'Cel: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Pozostałe: ${amount}';
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
			case 'button.connect': return 'Połączenie';
			case 'button.settings': return 'Ustawienia';
			case 'embed.article_by': return ({required Object name}) => 'Artykuł autorstwa ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Uwaga ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Transmisja na żywo przez ${name}';
			case 'stream_list.following': return 'Następujący';
			case 'stream_list.live': return 'Na żywo';
			case 'stream_list.planned': return 'Planowane';
			case 'stream_list.ended': return 'Zakończony';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Kwota niestandardowa';
			case 'zap.confirm': return 'Potwierdzenie';
			case 'zap.comment': return 'Komentarz';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Otwórz w portfelu';
			case 'zap.button_connect_wallet': return 'Connect Wallet';
			case 'zap.copy': return 'Skopiowane do schowka';
			case 'zap.error.invalid_custom_amount': return 'Nieprawidłowa kwota niestandardowa';
			case 'zap.error.no_wallet': return 'Brak zainstalowanego portfela Lightning';
			case 'zap.error.no_lud16': return 'Nie znaleziono adresu pioruna';
			case 'profile.past_streams': return 'Poprzednie strumienie';
			case 'settings.button_profile': return 'Edytuj profil';
			case 'settings.button_wallet': return 'Ustawienia portfela';
			case 'settings.profile.display_name': return 'Wyświetlana nazwa';
			case 'settings.profile.about': return 'O';
			case 'settings.profile.nip05': return 'Adres Nostr';
			case 'settings.profile.lud16': return 'Adres błyskawicy';
			case 'settings.profile.error.logged_out': return 'Nie można edytować profilu po wylogowaniu';
			case 'settings.wallet.connect_wallet': return 'Connect Wallet (NWC nostr+walletconnect://)';
			case 'settings.wallet.disconnect_wallet': return 'Odłącz portfel';
			case 'settings.wallet.connect_1tap': return 'Połączenie 1-wtykowe';
			case 'settings.wallet.paste': return 'Wklej adres URL';
			case 'settings.wallet.balance': return 'Równowaga';
			case 'settings.wallet.name': return 'Portfel';
			case 'settings.wallet.error.logged_out': return 'Nie można połączyć portfela po wylogowaniu';
			case 'settings.wallet.error.nwc_auth_event_not_found': return 'Nie znaleziono zdarzenia autoryzacji portfela';
			case 'login.username': return 'Nazwa użytkownika';
			case 'login.amber': return 'Zaloguj się za pomocą Amber';
			case 'login.key': return 'Logowanie za pomocą klucza';
			case 'login.create': return 'Utwórz konto';
			case 'login.error.invalid_key': return 'Nieprawidłowy klucz';
			case 'live.start': return 'GO LIVE';
			case 'live.configure_stream': return 'Konfiguracja strumienia';
			case 'live.endpoint': return 'Punkt końcowy';
			case 'live.accept_tos': return 'Zaakceptuj Regulamin';
			case 'live.balance_left': return ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
				zero: '∞',
				other: '~${time}',
			);
			case 'live.title': return 'Tytuł';
			case 'live.summary': return 'Podsumowanie';
			case 'live.image': return 'Obraz na okładce';
			case 'live.tags': return 'Tagi';
			case 'live.nsfw': return 'Treści NSFW';
			case 'live.nsfw_description': return 'Sprawdź tutaj, czy ten stream zawiera nagość lub treści pornograficzne.';
			case 'live.error.failed': return 'Strumień nie powiódł się';
			case 'live.error.connection_error': return 'Błąd połączenia';
			case 'live.error.start_failed': return 'Uruchomienie strumienia nie powiodło się, sprawdź saldo';
			default: return null;
		}
	}
}

