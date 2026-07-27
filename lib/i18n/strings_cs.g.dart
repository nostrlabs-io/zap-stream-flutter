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
class TranslationsCs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.cs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <cs>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsCs _root = this; // ignore: unused_field

	@override 
	TranslationsCs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCs(meta: meta ?? this.$meta);

	// Translations

	/// Text vyzývající uživatele, aby stiskl zástupný symbol avatara pro zahájení nahrávání
	@override String get upload_avatar => 'Nahrát avatar';

	/// Směřování přes uvedené horní streamery podle zaps
	@override String get most_zapped_streamers => 'Nejvíce zapnutých streamerů';

	/// Při vyhledávání nebyl nalezen žádný uživatel
	@override String get no_user_found => 'Nebyl nalezen žádný uživatel';

	/// Anonymní uživatel
	@override String get anon => 'Anon';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('cs').format(n)} sats';

	/// Počet diváků streamu
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '1 divák',
		other: '${NumberFormat.decimalPattern('cs').format(n)} diváků',
	);

	@override late final _Translations$stream$cs stream = _Translations$stream$cs._(_root);
	@override late final _Translations$goal$cs goal = _Translations$goal$cs._(_root);
	@override late final _Translations$button$cs button = _Translations$button$cs._(_root);
	@override late final _Translations$embed$cs embed = _Translations$embed$cs._(_root);

	/// Nadpisy v seznamech proudů podle typu proudu živě/konec/plánovaně atd.
	@override late final _Translations$stream_list$cs stream_list = _Translations$stream_list$cs._(_root);

	@override late final _Translations$zap$cs zap = _Translations$zap$cs._(_root);
	@override late final _Translations$profile$cs profile = _Translations$profile$cs._(_root);
	@override late final _Translations$settings$cs settings = _Translations$settings$cs._(_root);
	@override late final _Translations$login$cs login = _Translations$login$cs._(_root);
	@override late final _Translations$live$cs live = _Translations$live$cs._(_root);
}

// Path: stream
class _Translations$stream$cs extends Translations$stream$en {
	_Translations$stream$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$cs status = _Translations$stream$status$cs._(_root);
	@override String started({required Object timestamp}) => 'Založeno ${timestamp}';
	@override String notification({required Object name}) => '${name} byl spuštěn!';
	@override late final _Translations$stream$chat$cs chat = _Translations$stream$chat$cs._(_root);
}

// Path: goal
class _Translations$goal$cs extends Translations$goal$en {
	_Translations$goal$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Cíl: ${amount}';
	@override String remaining({required Object amount}) => 'Zbývá: ${amount}';
	@override String get complete => 'KOMPLETNÍ';
}

// Path: button
class _Translations$button$cs extends Translations$button$en {
	_Translations$button$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations

	/// Text tlačítka pro přihlašovací tlačítko
	@override String get login => 'Přihlášení';

	@override String get logout => 'Odhlášení';
	@override String get edit_profile => 'Upravit profil';

	/// Text tlačítka pro tlačítko sledovat
	@override String get follow => 'Sledujte';

	/// Text tlačítka pro zrušení sledování
	@override String get unfollow => 'Zrušit sledování';

	@override String get mute => 'Ztlumit';
	@override String get unmute => 'Zrušit ztlumení';
	@override String get share => 'Sdílet';
	@override String get save => 'Uložit';
	@override String get connect => 'Připojení';
	@override String get settings => 'Nastavení';
}

// Path: embed
class _Translations$embed$cs extends Translations$embed$en {
	_Translations$embed$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Článek na ${name}';
	@override String note_by({required Object name}) => 'Poznámka ${name}';
	@override String live_stream_by({required Object name}) => 'Přímý přenos na adrese ${name}';
}

// Path: stream_list
class _Translations$stream_list$cs extends Translations$stream_list$en {
	_Translations$stream_list$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get following => 'Po';
	@override String get live => 'Živě';
	@override String get planned => 'Plánované';
	@override String get ended => 'Ukončeno';
}

// Path: zap
class _Translations$zap$cs extends Translations$zap$en {
	_Translations$zap$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Vlastní částka';
	@override String get confirm => 'Potvrďte';
	@override String get comment => 'Komentář:';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Otevřít v peněžence';
	@override String get button_connect_wallet => 'Připojení peněženky';
	@override String get copy => 'Zkopírováno do schránky';
	@override late final _Translations$zap$error$cs error = _Translations$zap$error$cs._(_root);
}

// Path: profile
class _Translations$profile$cs extends Translations$profile$en {
	_Translations$profile$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Minulé proudy';
}

// Path: settings
class _Translations$settings$cs extends Translations$settings$en {
	_Translations$settings$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Upravit profil';
	@override String get button_wallet => 'Nastavení peněženky';
	@override late final _Translations$settings$profile$cs profile = _Translations$settings$profile$cs._(_root);
	@override late final _Translations$settings$wallet$cs wallet = _Translations$settings$wallet$cs._(_root);
}

// Path: login
class _Translations$login$cs extends Translations$login$en {
	_Translations$login$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get username => 'Uživatelské jméno';
	@override String get amber => 'Přihlášení pomocí Amber';
	@override String get key => 'Přihlášení pomocí klíče';
	@override String get create => 'Vytvořit účet';
	@override late final _Translations$login$error$cs error = _Translations$login$error$cs._(_root);
}

// Path: live
class _Translations$live$cs extends Translations$live$en {
	_Translations$live$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get start => 'PŘEJÍT NA ŽIVOT';
	@override String get configure_stream => 'Konfigurace streamu';
	@override String get endpoint => 'Koncový bod';
	@override String get accept_tos => 'Přijmout TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Název';
	@override String get summary => 'Souhrn';
	@override String get image => 'Obrázek na obálce';
	@override String get tags => 'Štítky';
	@override String get nsfw => 'Obsah NSFW';
	@override String get nsfw_description => 'Zde zkontrolujte, zda tento stream obsahuje nahotu nebo pornografický obsah.';
	@override late final _Translations$live$error$cs error = _Translations$live$error$cs._(_root);
}

// Path: stream.status
class _Translations$stream$status$cs extends Translations$stream$status$en {
	_Translations$stream$status$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'KONEC';
	@override String get planned => 'PLÁNOVANÉ';
}

// Path: stream.chat
class _Translations$stream$chat$cs extends Translations$stream$chat$en {
	_Translations$stream$chat$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT ZRUŠEN';
	@override String disabled_timeout({required Object time}) => 'Časový limit vyprší: ${time}';

	/// Zpráva chatu zobrazující události časového limitu
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' vypršel čas '),
		user,
		const TextSpan(text: ' pro '),
		time,
	]);

	/// Zápatí v dolní části chatu ukončilo stream
	@override String get ended => 'STREAM UKONČEN';

	/// Zpráva chatu zobrazující proud zaps
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' Zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$cs write = _Translations$stream$chat$write$cs._(_root);
	@override late final _Translations$stream$chat$badge$cs badge = _Translations$stream$chat$badge$cs._(_root);
	@override late final _Translations$stream$chat$raid$cs raid = _Translations$stream$chat$raid$cs._(_root);
}

// Path: zap.error
class _Translations$zap$error$cs extends Translations$zap$error$en {
	_Translations$zap$error$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Neplatná vlastní částka';
	@override String get no_wallet => 'Není nainstalována blesková peněženka';
	@override String get no_lud16 => 'Nebyla nalezena žádná adresa blesku';
}

// Path: settings.profile
class _Translations$settings$profile$cs extends Translations$settings$profile$en {
	_Translations$settings$profile$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Zobrazení názvu';
	@override String get about => 'O stránkách';
	@override String get nip05 => 'Adresa Nostr';
	@override String get lud16 => 'Adresa blesku';
	@override late final _Translations$settings$profile$error$cs error = _Translations$settings$profile$error$cs._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$cs extends Translations$settings$wallet$en {
	_Translations$settings$wallet$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Odpojení peněženky';
	@override String get connect_1tap => 'Připojení 1 kohoutku';
	@override String get paste => 'Vložit adresu URL';
	@override String get balance => 'Bilance';
	@override String get name => 'Peněženka';
	@override late final _Translations$settings$wallet$error$cs error = _Translations$settings$wallet$error$cs._(_root);
}

// Path: login.error
class _Translations$login$error$cs extends Translations$login$error$en {
	_Translations$login$error$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Neplatný klíč';
}

// Path: live.error
class _Translations$live$error$cs extends Translations$live$error$en {
	_Translations$live$error$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Stream se nezdařil';
	@override String get connection_error => 'Chyba připojení';
	@override String get start_failed => 'Spuštění streamu se nezdařilo, zkontrolujte prosím zůstatek';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$cs extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations

	/// Popisek na vstupním poli zprávy chatu
	@override String get label => 'Napište zprávu';

	/// Vstupní zpráva chatu se zobrazí, když je uživatel přihlášen pouze pomocí pubkey
	@override String get no_signer => 'Nelze psát zprávy s přihlášením npub';

	/// Vstupní zpráva chatu zobrazená při odhlášení uživatele
	@override String get login => 'Pro odesílání zpráv se prosím přihlaste';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$cs extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations

	/// Záhlaví nad seznamem uživatelů, kterým byl udělen odznak
	@override String get awarded_to => 'Uděleno:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$cs extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations

	/// Zpráva o nájezdu chatu do jiného proudu
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Zpráva o nájezdu chatu z jiného proudu
	@override String from({required Object name}) => 'RAID Z ${name}';

	/// Časovač odpočítávání pro automatický nájezd
	@override String countdown({required Object time}) => 'Nájezdy na ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$cs extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nelze upravit profil, když je odhlášený';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$cs extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nelze se připojit k peněžence, když jste odhlášeni';
	@override String get nwc_auth_event_not_found => 'Nebyla nalezena žádná událost autentizace peněženky';
}

/// The flat map containing all translations for locale <cs>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsCs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Nahrát avatar',
			'most_zapped_streamers' => 'Nejvíce zapnutých streamerů',
			'no_user_found' => 'Nebyl nalezen žádný uživatel',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('cs').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '1 divák', other: '${NumberFormat.decimalPattern('cs').format(n)} diváků', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'KONEC',
			'stream.status.planned' => 'PLÁNOVANÉ',
			'stream.started' => ({required Object timestamp}) => 'Založeno ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} byl spuštěn!',
			'stream.chat.disabled' => 'CHAT ZRUŠEN',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Časový limit vyprší: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' vypršel čas '), user, const TextSpan(text: ' pro '), time, ]), 
			'stream.chat.ended' => 'STREAM UKONČEN',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' Zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Napište zprávu',
			'stream.chat.write.no_signer' => 'Nelze psát zprávy s přihlášením npub',
			'stream.chat.write.login' => 'Pro odesílání zpráv se prosím přihlaste',
			'stream.chat.badge.awarded_to' => 'Uděleno:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID Z ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Nájezdy na ${time}',
			'goal.title' => ({required Object amount}) => 'Cíl: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Zbývá: ${amount}',
			'goal.complete' => 'KOMPLETNÍ',
			'button.login' => 'Přihlášení',
			'button.logout' => 'Odhlášení',
			'button.edit_profile' => 'Upravit profil',
			'button.follow' => 'Sledujte',
			'button.unfollow' => 'Zrušit sledování',
			'button.mute' => 'Ztlumit',
			'button.unmute' => 'Zrušit ztlumení',
			'button.share' => 'Sdílet',
			'button.save' => 'Uložit',
			'button.connect' => 'Připojení',
			'button.settings' => 'Nastavení',
			'embed.article_by' => ({required Object name}) => 'Článek na ${name}',
			'embed.note_by' => ({required Object name}) => 'Poznámka ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Přímý přenos na adrese ${name}',
			'stream_list.following' => 'Po',
			'stream_list.live' => 'Živě',
			'stream_list.planned' => 'Plánované',
			'stream_list.ended' => 'Ukončeno',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Vlastní částka',
			'zap.confirm' => 'Potvrďte',
			'zap.comment' => 'Komentář:',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Otevřít v peněžence',
			'zap.button_connect_wallet' => 'Připojení peněženky',
			'zap.copy' => 'Zkopírováno do schránky',
			'zap.error.invalid_custom_amount' => 'Neplatná vlastní částka',
			'zap.error.no_wallet' => 'Není nainstalována blesková peněženka',
			'zap.error.no_lud16' => 'Nebyla nalezena žádná adresa blesku',
			'profile.past_streams' => 'Minulé proudy',
			'settings.button_profile' => 'Upravit profil',
			'settings.button_wallet' => 'Nastavení peněženky',
			'settings.profile.display_name' => 'Zobrazení názvu',
			'settings.profile.about' => 'O stránkách',
			'settings.profile.nip05' => 'Adresa Nostr',
			'settings.profile.lud16' => 'Adresa blesku',
			'settings.profile.error.logged_out' => 'Nelze upravit profil, když je odhlášený',
			'settings.wallet.connect_wallet' => 'Connect Wallet (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Odpojení peněženky',
			'settings.wallet.connect_1tap' => 'Připojení 1 kohoutku',
			'settings.wallet.paste' => 'Vložit adresu URL',
			'settings.wallet.balance' => 'Bilance',
			'settings.wallet.name' => 'Peněženka',
			'settings.wallet.error.logged_out' => 'Nelze se připojit k peněžence, když jste odhlášeni',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Nebyla nalezena žádná událost autentizace peněženky',
			'login.username' => 'Uživatelské jméno',
			'login.amber' => 'Přihlášení pomocí Amber',
			'login.key' => 'Přihlášení pomocí klíče',
			'login.create' => 'Vytvořit účet',
			'login.error.invalid_key' => 'Neplatný klíč',
			'live.start' => 'PŘEJÍT NA ŽIVOT',
			'live.configure_stream' => 'Konfigurace streamu',
			'live.endpoint' => 'Koncový bod',
			'live.accept_tos' => 'Přijmout TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Název',
			'live.summary' => 'Souhrn',
			'live.image' => 'Obrázek na obálce',
			'live.tags' => 'Štítky',
			'live.nsfw' => 'Obsah NSFW',
			'live.nsfw_description' => 'Zde zkontrolujte, zda tento stream obsahuje nahotu nebo pornografický obsah.',
			'live.error.failed' => 'Stream se nezdařil',
			'live.error.connection_error' => 'Chyba připojení',
			'live.error.start_failed' => 'Spuštění streamu se nezdařilo, zkontrolujte prosím zůstatek',
			_ => null,
		};
	}
}
