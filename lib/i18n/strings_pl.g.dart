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
class TranslationsPl extends Translations with BaseTranslations<AppLocale, Translations> {
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

	@override late final _Translations$stream$pl stream = _Translations$stream$pl._(_root);
	@override late final _Translations$goal$pl goal = _Translations$goal$pl._(_root);
	@override late final _Translations$button$pl button = _Translations$button$pl._(_root);
	@override late final _Translations$embed$pl embed = _Translations$embed$pl._(_root);

	/// Nagłówki na listach strumieni według typu strumienia na żywo / zakończony / planowany itp.
	@override late final _Translations$stream_list$pl stream_list = _Translations$stream_list$pl._(_root);

	@override late final _Translations$zap$pl zap = _Translations$zap$pl._(_root);
	@override late final _Translations$profile$pl profile = _Translations$profile$pl._(_root);
	@override late final _Translations$settings$pl settings = _Translations$settings$pl._(_root);
	@override late final _Translations$login$pl login = _Translations$login$pl._(_root);
	@override late final _Translations$live$pl live = _Translations$live$pl._(_root);
}

// Path: stream
class _Translations$stream$pl extends Translations$stream$en {
	_Translations$stream$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$pl status = _Translations$stream$status$pl._(_root);
	@override String started({required Object timestamp}) => 'Start ${timestamp}';
	@override String notification({required Object name}) => '${name} został uruchomiony!';
	@override late final _Translations$stream$chat$pl chat = _Translations$stream$chat$pl._(_root);
}

// Path: goal
class _Translations$goal$pl extends Translations$goal$en {
	_Translations$goal$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Cel: ${amount}';
	@override String remaining({required Object amount}) => 'Pozostałe: ${amount}';
	@override String get complete => 'ZAKOŃCZONE';
}

// Path: button
class _Translations$button$pl extends Translations$button$en {
	_Translations$button$pl._(TranslationsPl root) : this._root = root, super.internal(root);

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
class _Translations$embed$pl extends Translations$embed$en {
	_Translations$embed$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artykuł autorstwa ${name}';
	@override String note_by({required Object name}) => 'Uwaga ${name}';
	@override String live_stream_by({required Object name}) => 'Transmisja na żywo przez ${name}';
}

// Path: stream_list
class _Translations$stream_list$pl extends Translations$stream_list$en {
	_Translations$stream_list$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get following => 'Następujący';
	@override String get live => 'Na żywo';
	@override String get planned => 'Planowane';
	@override String get ended => 'Zakończony';
}

// Path: zap
class _Translations$zap$pl extends Translations$zap$en {
	_Translations$zap$pl._(TranslationsPl root) : this._root = root, super.internal(root);

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
	@override late final _Translations$zap$error$pl error = _Translations$zap$error$pl._(_root);
}

// Path: profile
class _Translations$profile$pl extends Translations$profile$en {
	_Translations$profile$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Poprzednie strumienie';
}

// Path: settings
class _Translations$settings$pl extends Translations$settings$en {
	_Translations$settings$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Edytuj profil';
	@override String get button_wallet => 'Ustawienia portfela';
	@override late final _Translations$settings$profile$pl profile = _Translations$settings$profile$pl._(_root);
	@override late final _Translations$settings$wallet$pl wallet = _Translations$settings$wallet$pl._(_root);
}

// Path: login
class _Translations$login$pl extends Translations$login$en {
	_Translations$login$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nazwa użytkownika';
	@override String get amber => 'Zaloguj się za pomocą Amber';
	@override String get key => 'Logowanie za pomocą klucza';
	@override String get create => 'Utwórz konto';
	@override late final _Translations$login$error$pl error = _Translations$login$error$pl._(_root);
}

// Path: live
class _Translations$live$pl extends Translations$live$en {
	_Translations$live$pl._(TranslationsPl root) : this._root = root, super.internal(root);

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
	@override late final _Translations$live$error$pl error = _Translations$live$error$pl._(_root);
}

// Path: stream.status
class _Translations$stream$status$pl extends Translations$stream$status$en {
	_Translations$stream$status$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get live => 'NA ŻYWO';
	@override String get ended => 'ZAKOŃCZONY';
	@override String get planned => 'PLANOWANE';
}

// Path: stream.chat
class _Translations$stream$chat$pl extends Translations$stream$chat$en {
	_Translations$stream$chat$pl._(TranslationsPl root) : this._root = root, super.internal(root);

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

	@override late final _Translations$stream$chat$write$pl write = _Translations$stream$chat$write$pl._(_root);
	@override late final _Translations$stream$chat$badge$pl badge = _Translations$stream$chat$badge$pl._(_root);
	@override late final _Translations$stream$chat$raid$pl raid = _Translations$stream$chat$raid$pl._(_root);
}

// Path: zap.error
class _Translations$zap$error$pl extends Translations$zap$error$en {
	_Translations$zap$error$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Nieprawidłowa kwota niestandardowa';
	@override String get no_wallet => 'Brak zainstalowanego portfela Lightning';
	@override String get no_lud16 => 'Nie znaleziono adresu pioruna';
}

// Path: settings.profile
class _Translations$settings$profile$pl extends Translations$settings$profile$en {
	_Translations$settings$profile$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Wyświetlana nazwa';
	@override String get about => 'O';
	@override String get nip05 => 'Adres Nostr';
	@override String get lud16 => 'Adres błyskawicy';
	@override late final _Translations$settings$profile$error$pl error = _Translations$settings$profile$error$pl._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$pl extends Translations$settings$wallet$en {
	_Translations$settings$wallet$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Odłącz portfel';
	@override String get connect_1tap => 'Połączenie 1-wtykowe';
	@override String get paste => 'Wklej adres URL';
	@override String get balance => 'Równowaga';
	@override String get name => 'Portfel';
	@override late final _Translations$settings$wallet$error$pl error = _Translations$settings$wallet$error$pl._(_root);
}

// Path: login.error
class _Translations$login$error$pl extends Translations$login$error$en {
	_Translations$login$error$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Nieprawidłowy klucz';
}

// Path: live.error
class _Translations$live$error$pl extends Translations$live$error$en {
	_Translations$live$error$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Strumień nie powiódł się';
	@override String get connection_error => 'Błąd połączenia';
	@override String get start_failed => 'Uruchomienie strumienia nie powiodło się, sprawdź saldo';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$pl extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$pl._(TranslationsPl root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$pl extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations

	/// Nagłówek nad listą użytkowników, którzy otrzymali odznakę
	@override String get awarded_to => 'Przyznano:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$pl extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$pl._(TranslationsPl root) : this._root = root, super.internal(root);

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
class _Translations$settings$profile$error$pl extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nie można edytować profilu po wylogowaniu';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$pl extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nie można połączyć portfela po wylogowaniu';
	@override String get nwc_auth_event_not_found => 'Nie znaleziono zdarzenia autoryzacji portfela';
}

/// The flat map containing all translations for locale <pl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Prześlij awatar',
			'most_zapped_streamers' => 'Większość zapped streamerów',
			'no_user_found' => 'Nie znaleziono użytkownika',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('pl').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '1 przeglądarka', other: '{n:decimalPattern} widzów', ), 
			'stream.status.live' => 'NA ŻYWO',
			'stream.status.ended' => 'ZAKOŃCZONY',
			'stream.status.planned' => 'PLANOWANE',
			'stream.started' => ({required Object timestamp}) => 'Start ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} został uruchomiony!',
			'stream.chat.disabled' => 'CZAT WYŁĄCZONY',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Upłynął limit czasu: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' upłynął limit czasu '), user, const TextSpan(text: ' dla '), time, ]), 
			'stream.chat.ended' => 'TRANSMISJA ZAKOŃCZONA',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Napisz wiadomość',
			'stream.chat.write.no_signer' => 'Nie można pisać wiadomości z loginem npub',
			'stream.chat.write.login' => 'Zaloguj się, aby wysyłać wiadomości',
			'stream.chat.badge.awarded_to' => 'Przyznano:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID Z ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Naloty w ${time}',
			'goal.title' => ({required Object amount}) => 'Cel: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Pozostałe: ${amount}',
			'goal.complete' => 'ZAKOŃCZONE',
			'button.login' => 'Logowanie',
			'button.logout' => 'Wylogowanie',
			'button.edit_profile' => 'Edytuj profil',
			'button.follow' => 'Śledź',
			'button.unfollow' => 'Nie obserwuj',
			'button.mute' => 'Wyciszenie',
			'button.unmute' => 'Wyłącz wyciszenie',
			'button.share' => 'Udział',
			'button.save' => 'Zapisz',
			'button.connect' => 'Połączenie',
			'button.settings' => 'Ustawienia',
			'embed.article_by' => ({required Object name}) => 'Artykuł autorstwa ${name}',
			'embed.note_by' => ({required Object name}) => 'Uwaga ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Transmisja na żywo przez ${name}',
			'stream_list.following' => 'Następujący',
			'stream_list.live' => 'Na żywo',
			'stream_list.planned' => 'Planowane',
			'stream_list.ended' => 'Zakończony',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Kwota niestandardowa',
			'zap.confirm' => 'Potwierdzenie',
			'zap.comment' => 'Komentarz',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Otwórz w portfelu',
			'zap.button_connect_wallet' => 'Connect Wallet',
			'zap.copy' => 'Skopiowane do schowka',
			'zap.error.invalid_custom_amount' => 'Nieprawidłowa kwota niestandardowa',
			'zap.error.no_wallet' => 'Brak zainstalowanego portfela Lightning',
			'zap.error.no_lud16' => 'Nie znaleziono adresu pioruna',
			'profile.past_streams' => 'Poprzednie strumienie',
			'settings.button_profile' => 'Edytuj profil',
			'settings.button_wallet' => 'Ustawienia portfela',
			'settings.profile.display_name' => 'Wyświetlana nazwa',
			'settings.profile.about' => 'O',
			'settings.profile.nip05' => 'Adres Nostr',
			'settings.profile.lud16' => 'Adres błyskawicy',
			'settings.profile.error.logged_out' => 'Nie można edytować profilu po wylogowaniu',
			'settings.wallet.connect_wallet' => 'Connect Wallet (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Odłącz portfel',
			'settings.wallet.connect_1tap' => 'Połączenie 1-wtykowe',
			'settings.wallet.paste' => 'Wklej adres URL',
			'settings.wallet.balance' => 'Równowaga',
			'settings.wallet.name' => 'Portfel',
			'settings.wallet.error.logged_out' => 'Nie można połączyć portfela po wylogowaniu',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Nie znaleziono zdarzenia autoryzacji portfela',
			'login.username' => 'Nazwa użytkownika',
			'login.amber' => 'Zaloguj się za pomocą Amber',
			'login.key' => 'Logowanie za pomocą klucza',
			'login.create' => 'Utwórz konto',
			'login.error.invalid_key' => 'Nieprawidłowy klucz',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Konfiguracja strumienia',
			'live.endpoint' => 'Punkt końcowy',
			'live.accept_tos' => 'Zaakceptuj Regulamin',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Tytuł',
			'live.summary' => 'Podsumowanie',
			'live.image' => 'Obraz na okładce',
			'live.tags' => 'Tagi',
			'live.nsfw' => 'Treści NSFW',
			'live.nsfw_description' => 'Sprawdź tutaj, czy ten stream zawiera nagość lub treści pornograficzne.',
			'live.error.failed' => 'Strumień nie powiódł się',
			'live.error.connection_error' => 'Błąd połączenia',
			'live.error.start_failed' => 'Uruchomienie strumienia nie powiodło się, sprawdź saldo',
			_ => null,
		};
	}
}
