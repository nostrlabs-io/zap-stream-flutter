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
class TranslationsHu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsHu _root = this; // ignore: unused_field

	@override 
	TranslationsHu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHu(meta: meta ?? this.$meta);

	// Translations

	/// Szöveg, amely arra kéri a felhasználót, hogy a feltöltés megkezdéséhez nyomja meg az avatar helyőrzőt
	@override String get upload_avatar => 'Avatár feltöltése';

	/// Irány a felsorolt top streamerek fölött zaps által
	@override String get most_zapped_streamers => 'A legtöbb Zapped Streamers';

	/// Kereséskor nem talált felhasználó
	@override String get no_user_found => 'Nem talált felhasználó';

	/// Egy névtelen felhasználó
	@override String get anon => 'Névtelen';

	/// A stream nézőinek száma
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '1 néző',
		other: '${NumberFormat.decimalPattern('hu').format(n)} nézők',
	);

	@override late final _Translations$stream$hu stream = _Translations$stream$hu._(_root);
	@override late final _Translations$goal$hu goal = _Translations$goal$hu._(_root);
	@override late final _Translations$button$hu button = _Translations$button$hu._(_root);
	@override late final _Translations$embed$hu embed = _Translations$embed$hu._(_root);

	/// A stream-listák címsorai stream-típusonként élő/befejezett/tervezett stb.
	@override late final _Translations$stream_list$hu stream_list = _Translations$stream_list$hu._(_root);

	@override late final _Translations$zap$hu zap = _Translations$zap$hu._(_root);
	@override late final _Translations$profile$hu profile = _Translations$profile$hu._(_root);
	@override late final _Translations$settings$hu settings = _Translations$settings$hu._(_root);
	@override late final _Translations$login$hu login = _Translations$login$hu._(_root);
}

// Path: stream
class _Translations$stream$hu extends Translations$stream$en {
	_Translations$stream$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$hu status = _Translations$stream$status$hu._(_root);
	@override String started({required Object timestamp}) => 'Elindult ${timestamp}';
	@override String notification({required Object name}) => '${name} elindult!';
	@override late final _Translations$stream$chat$hu chat = _Translations$stream$chat$hu._(_root);
}

// Path: goal
class _Translations$goal$hu extends Translations$goal$en {
	_Translations$goal$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Cél: ${amount}';
	@override String remaining({required Object amount}) => 'Maradék: ${amount}';
	@override String get complete => 'TELJES';
}

// Path: button
class _Translations$button$hu extends Translations$button$en {
	_Translations$button$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations

	/// A bejelentkezési gomb szövege
	@override String get login => 'Bejelentkezés';

	@override String get logout => 'Kijelentkezés';
	@override String get edit_profile => 'Profil szerkesztése';

	/// A követés gomb szövege
	@override String get follow => 'Követés';

	/// A követés megszüntetése gomb szövege
	@override String get unfollow => 'Követés megszüntetése';

	@override String get mute => 'Némítás';
	@override String get unmute => 'Némítás visszavonása';
	@override String get share => 'Megosztás';
	@override String get save => 'Mentés';
	@override String get connect => 'Csatlakozás';
	@override String get settings => 'Beállítások';
}

// Path: embed
class _Translations$embed$hu extends Translations$embed$en {
	_Translations$embed$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Cikk ${name}';
	@override String note_by({required Object name}) => '${name} bejegyzése';
	@override String live_stream_by({required Object name}) => 'Élő közvetítés a ${name} oldalon';
}

// Path: stream_list
class _Translations$stream_list$hu extends Translations$stream_list$en {
	_Translations$stream_list$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get following => 'Követettek bejegyzései';
	@override String get live => 'Élő';
	@override String get planned => 'Tervezett';
	@override String get ended => 'Véget ért';
}

// Path: zap
class _Translations$zap$hu extends Translations$zap$en {
	_Translations$zap$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Egyéni összeg';
	@override String get confirm => 'Megerősítés';
	@override String get comment => 'Hozzászólás';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} satoshi';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Megnyitás a pénztárcában';
	@override String get button_connect_wallet => 'Connect Wallet';
	@override String get copy => 'Vágólapra másolva';
	@override late final _Translations$zap$error$hu error = _Translations$zap$error$hu._(_root);
}

// Path: profile
class _Translations$profile$hu extends Translations$profile$en {
	_Translations$profile$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Múltbeli Streamek';
}

// Path: settings
class _Translations$settings$hu extends Translations$settings$en {
	_Translations$settings$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Profil szerkesztése';
	@override String get button_wallet => 'Pénztárca beállítások';
	@override late final _Translations$settings$profile$hu profile = _Translations$settings$profile$hu._(_root);
	@override late final _Translations$settings$wallet$hu wallet = _Translations$settings$wallet$hu._(_root);
}

// Path: login
class _Translations$login$hu extends Translations$login$en {
	_Translations$login$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get username => 'Felhasználónév';
	@override String get amber => 'Bejelentkezés Amber segítségével';
	@override String get key => 'Bejelentkezés kulccsal';
	@override String get create => 'Fiók Létrehozása';
	@override late final _Translations$login$error$hu error = _Translations$login$error$hu._(_root);
}

// Path: stream.status
class _Translations$stream$status$hu extends Translations$stream$status$en {
	_Translations$stream$status$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get live => 'ÉLŐ';
	@override String get ended => 'ENDED';
	@override String get planned => 'TERVEZETT';
}

// Path: stream.chat
class _Translations$stream$chat$hu extends Translations$stream$chat$en {
	_Translations$stream$chat$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT KIKAPCSOLVA';
	@override String disabled_timeout({required Object time}) => 'Az időkorlát lejár: ${time}';

	/// Chat üzenet az időkorlátos események megjelenítésével
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' időzített '),
		user,
		const TextSpan(text: ' a '),
		time,
		const TextSpan(text: 'számára'),
	]);

	/// A stream véget ért lábléc a chat alján
	@override String get ended => 'STREAM MEGSZÜNTETETT';

	/// Csevegőüzenet, amely stream zapokat mutat
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zap-elt '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$hu write = _Translations$stream$chat$write$hu._(_root);
	@override late final _Translations$stream$chat$badge$hu badge = _Translations$stream$chat$badge$hu._(_root);
	@override late final _Translations$stream$chat$raid$hu raid = _Translations$stream$chat$raid$hu._(_root);
}

// Path: zap.error
class _Translations$zap$error$hu extends Translations$zap$error$en {
	_Translations$zap$error$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Érvénytelen egyéni összeg';
	@override String get no_wallet => 'Nincs telepített villám tárca';
	@override String get no_lud16 => 'Nem talált villámcím';
}

// Path: settings.profile
class _Translations$settings$profile$hu extends Translations$settings$profile$en {
	_Translations$settings$profile$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Megjelenített név';
	@override String get about => 'A  oldalról';
	@override String get nip05 => 'Nostr cím';
	@override String get lud16 => 'Villám cím';
	@override late final _Translations$settings$profile$error$hu error = _Translations$settings$profile$error$hu._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$hu extends Translations$settings$wallet$en {
	_Translations$settings$wallet$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Pénztárca lekapcsolása';
	@override String get connect_1tap => '1-Tap csatlakozás';
	@override String get paste => 'URL beillesztése';
	@override late final _Translations$settings$wallet$error$hu error = _Translations$settings$wallet$error$hu._(_root);
}

// Path: login.error
class _Translations$login$error$hu extends Translations$login$error$en {
	_Translations$login$error$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Érvénytelen kulcs';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$hu extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations

	/// Címke a csevegőüzenet beviteli mezőjén
	@override String get label => 'Üzenet írása';

	/// A csevegés bemeneti üzenete megjelenik, ha a felhasználó csak pubkey-vel van bejelentkezve
	@override String get no_signer => 'Nem tud üzeneteket írni az npub bejelentkezéssel';

	/// A felhasználó kijelentkezésekor megjelenő csevegési beviteli üzenet
	@override String get login => 'Kérjük, jelentkezzen be az üzenetek küldéséhez';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$hu extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations

	/// Fejléc a jelvényt kapott felhasználók listája fölött
	@override String get awarded_to => 'Elnyerte:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$hu extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations

	/// Chat raid üzenet egy másik folyamba
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid üzenet egy másik folyamból
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// Visszaszámláló időzítő az automatikus lovagláshoz
	@override String countdown({required Object time}) => 'Raiding a ${time} oldalon';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$hu extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kijelentkezve nem lehet profilt szerkeszteni';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$hu extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kijelentkezve nem lehet csatlakozni a pénztárcához';
	@override String get nwc_auth_event_not_found => 'Nem találtak pénztárca-auth eseményt';
}

/// The flat map containing all translations for locale <hu>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Avatár feltöltése',
			'most_zapped_streamers' => 'A legtöbb Zapped Streamers',
			'no_user_found' => 'Nem talált felhasználó',
			'anon' => 'Névtelen',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '1 néző', other: '${NumberFormat.decimalPattern('hu').format(n)} nézők', ), 
			'stream.status.live' => 'ÉLŐ',
			'stream.status.ended' => 'ENDED',
			'stream.status.planned' => 'TERVEZETT',
			'stream.started' => ({required Object timestamp}) => 'Elindult ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} elindult!',
			'stream.chat.disabled' => 'CHAT KIKAPCSOLVA',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Az időkorlát lejár: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' időzített '), user, const TextSpan(text: ' a '), time, const TextSpan(text: 'számára'), ]), 
			'stream.chat.ended' => 'STREAM MEGSZÜNTETETT',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zap-elt '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Üzenet írása',
			'stream.chat.write.no_signer' => 'Nem tud üzeneteket írni az npub bejelentkezéssel',
			'stream.chat.write.login' => 'Kérjük, jelentkezzen be az üzenetek küldéséhez',
			'stream.chat.badge.awarded_to' => 'Elnyerte:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Raiding a ${time} oldalon',
			'goal.title' => ({required Object amount}) => 'Cél: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Maradék: ${amount}',
			'goal.complete' => 'TELJES',
			'button.login' => 'Bejelentkezés',
			'button.logout' => 'Kijelentkezés',
			'button.edit_profile' => 'Profil szerkesztése',
			'button.follow' => 'Követés',
			'button.unfollow' => 'Követés megszüntetése',
			'button.mute' => 'Némítás',
			'button.unmute' => 'Némítás visszavonása',
			'button.share' => 'Megosztás',
			'button.save' => 'Mentés',
			'button.connect' => 'Csatlakozás',
			'button.settings' => 'Beállítások',
			'embed.article_by' => ({required Object name}) => 'Cikk ${name}',
			'embed.note_by' => ({required Object name}) => '${name} bejegyzése',
			'embed.live_stream_by' => ({required Object name}) => 'Élő közvetítés a ${name} oldalon',
			'stream_list.following' => 'Követettek bejegyzései',
			'stream_list.live' => 'Élő',
			'stream_list.planned' => 'Tervezett',
			'stream_list.ended' => 'Véget ért',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Egyéni összeg',
			'zap.confirm' => 'Megerősítés',
			'zap.comment' => 'Hozzászólás',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} satoshi',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Megnyitás a pénztárcában',
			'zap.button_connect_wallet' => 'Connect Wallet',
			'zap.copy' => 'Vágólapra másolva',
			'zap.error.invalid_custom_amount' => 'Érvénytelen egyéni összeg',
			'zap.error.no_wallet' => 'Nincs telepített villám tárca',
			'zap.error.no_lud16' => 'Nem talált villámcím',
			'profile.past_streams' => 'Múltbeli Streamek',
			'settings.button_profile' => 'Profil szerkesztése',
			'settings.button_wallet' => 'Pénztárca beállítások',
			'settings.profile.display_name' => 'Megjelenített név',
			'settings.profile.about' => 'A  oldalról',
			'settings.profile.nip05' => 'Nostr cím',
			'settings.profile.lud16' => 'Villám cím',
			'settings.profile.error.logged_out' => 'Kijelentkezve nem lehet profilt szerkeszteni',
			'settings.wallet.connect_wallet' => 'Connect Wallet (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Pénztárca lekapcsolása',
			'settings.wallet.connect_1tap' => '1-Tap csatlakozás',
			'settings.wallet.paste' => 'URL beillesztése',
			'settings.wallet.error.logged_out' => 'Kijelentkezve nem lehet csatlakozni a pénztárcához',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Nem találtak pénztárca-auth eseményt',
			'login.username' => 'Felhasználónév',
			'login.amber' => 'Bejelentkezés Amber segítségével',
			'login.key' => 'Bejelentkezés kulccsal',
			'login.create' => 'Fiók Létrehozása',
			'login.error.invalid_key' => 'Érvénytelen kulcs',
			_ => null,
		};
	}
}
