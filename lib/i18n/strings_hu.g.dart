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
class TranslationsHu extends Translations {
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
		other: '${n} néző',
	);

	@override late final _TranslationsStreamHu stream = _TranslationsStreamHu._(_root);
	@override late final _TranslationsGoalHu goal = _TranslationsGoalHu._(_root);
	@override late final _TranslationsButtonHu button = _TranslationsButtonHu._(_root);
	@override late final _TranslationsEmbedHu embed = _TranslationsEmbedHu._(_root);

	/// A stream-listák címsorai stream-típusonként élő/befejezett/tervezett stb.
	@override late final _TranslationsStreamListHu stream_list = _TranslationsStreamListHu._(_root);

	@override late final _TranslationsZapHu zap = _TranslationsZapHu._(_root);
	@override late final _TranslationsProfileHu profile = _TranslationsProfileHu._(_root);
	@override late final _TranslationsLoginHu login = _TranslationsLoginHu._(_root);
}

// Path: stream
class _TranslationsStreamHu extends TranslationsStreamEn {
	_TranslationsStreamHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusHu status = _TranslationsStreamStatusHu._(_root);
	@override String started({required Object timestamp}) => 'Elindult ${timestamp}';
	@override late final _TranslationsStreamChatHu chat = _TranslationsStreamChatHu._(_root);
}

// Path: goal
class _TranslationsGoalHu extends TranslationsGoalEn {
	_TranslationsGoalHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Cél: ${amount}';
	@override String remaining({required Object amount}) => 'Maradék: ${amount}';
	@override String get complete => 'TELJES';
}

// Path: button
class _TranslationsButtonHu extends TranslationsButtonEn {
	_TranslationsButtonHu._(TranslationsHu root) : this._root = root, super.internal(root);

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
}

// Path: embed
class _TranslationsEmbedHu extends TranslationsEmbedEn {
	_TranslationsEmbedHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'A ${name} cikke.';
	@override String note_by({required Object name}) => '${name} bejegyzése';
	@override String live_stream_by({required Object name}) => 'Élő közvetítés a ${name} oldalon';
}

// Path: stream_list
class _TranslationsStreamListHu extends TranslationsStreamListEn {
	_TranslationsStreamListHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get following => 'Követettek bejegyzései';
	@override String get live => 'Élő';
	@override String get planned => 'Tervezett';
	@override String get ended => 'Véget ért';
}

// Path: zap
class _TranslationsZapHu extends TranslationsZapEn {
	_TranslationsZapHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Egyéni összeg';
	@override String get confirm => 'Megerősítés';
	@override String get comment => 'Hozzászólás';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} satoshi';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Megnyitás a pénztárcában';
	@override String get copy => 'Vágólapra másolva';
	@override late final _TranslationsZapErrorHu error = _TranslationsZapErrorHu._(_root);
}

// Path: profile
class _TranslationsProfileHu extends TranslationsProfileEn {
	_TranslationsProfileHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Múltbeli Streamek';
	@override late final _TranslationsProfileEditHu edit = _TranslationsProfileEditHu._(_root);
}

// Path: login
class _TranslationsLoginHu extends TranslationsLoginEn {
	_TranslationsLoginHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get username => 'Felhasználónév';
	@override String get amber => 'Bejelentkezés Amber segítségével';
	@override String get key => 'Bejelentkezés kulccsal';
	@override String get create => 'Fiók Létrehozása';
	@override late final _TranslationsLoginErrorHu error = _TranslationsLoginErrorHu._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusHu extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get live => 'ÉLŐ';
	@override String get ended => 'ENDED';
	@override String get planned => 'TERVEZETT';
}

// Path: stream.chat
class _TranslationsStreamChatHu extends TranslationsStreamChatEn {
	_TranslationsStreamChatHu._(TranslationsHu root) : this._root = root, super.internal(root);

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
		const TextSpan(text: ' számára'),
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

	@override late final _TranslationsStreamChatWriteHu write = _TranslationsStreamChatWriteHu._(_root);
	@override late final _TranslationsStreamChatBadgeHu badge = _TranslationsStreamChatBadgeHu._(_root);
	@override late final _TranslationsStreamChatRaidHu raid = _TranslationsStreamChatRaidHu._(_root);
}

// Path: zap.error
class _TranslationsZapErrorHu extends TranslationsZapErrorEn {
	_TranslationsZapErrorHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Érvénytelen egyéni összeg';
	@override String get no_wallet => 'Nincs telepített villám tárca';
	@override String get no_lud16 => 'Nem talált villámcím';
}

// Path: profile.edit
class _TranslationsProfileEditHu extends TranslationsProfileEditEn {
	_TranslationsProfileEditHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Megjelenített név';
	@override String get about => 'Névjegy';
	@override String get nip05 => 'Nostr-cím';
	@override String get lud16 => 'Lightning-cím';
	@override late final _TranslationsProfileEditErrorHu error = _TranslationsProfileEditErrorHu._(_root);
}

// Path: login.error
class _TranslationsLoginErrorHu extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Érvénytelen kulcs';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteHu extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteHu._(TranslationsHu root) : this._root = root, super.internal(root);

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
class _TranslationsStreamChatBadgeHu extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations

	/// Fejléc a jelvényt kapott felhasználók listája fölött
	@override String get awarded_to => 'Elnyerte:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidHu extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations

	/// Chat raid üzenet egy másik folyamba
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid üzenet egy másik folyamból
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// Visszaszámláló időzítő az automatikus lovagláshoz
	@override String countdown({required Object time}) => 'Raiding a ${time} oldalon';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorHu extends TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kijelentkezve nem lehet profilt szerkeszteni';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsHu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Avatár feltöltése';
			case 'most_zapped_streamers': return 'A legtöbb Zapped Streamers';
			case 'no_user_found': return 'Nem talált felhasználó';
			case 'anon': return 'Névtelen';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
				one: '1 néző',
				other: '${n} néző',
			);
			case 'stream.status.live': return 'ÉLŐ';
			case 'stream.status.ended': return 'ENDED';
			case 'stream.status.planned': return 'TERVEZETT';
			case 'stream.started': return ({required Object timestamp}) => 'Elindult ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT KIKAPCSOLVA';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Az időkorlát lejár: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' időzített '),
				user,
				const TextSpan(text: ' a '),
				time,
				const TextSpan(text: ' számára'),
			]);
			case 'stream.chat.ended': return 'STREAM MEGSZÜNTETETT';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zap-elt '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Üzenet írása';
			case 'stream.chat.write.no_signer': return 'Nem tud üzeneteket írni az npub bejelentkezéssel';
			case 'stream.chat.write.login': return 'Kérjük, jelentkezzen be az üzenetek küldéséhez';
			case 'stream.chat.badge.awarded_to': return 'Elnyerte:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Raiding a ${time} oldalon';
			case 'goal.title': return ({required Object amount}) => 'Cél: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Maradék: ${amount}';
			case 'goal.complete': return 'TELJES';
			case 'button.login': return 'Bejelentkezés';
			case 'button.logout': return 'Kijelentkezés';
			case 'button.edit_profile': return 'Profil szerkesztése';
			case 'button.follow': return 'Követés';
			case 'button.unfollow': return 'Követés megszüntetése';
			case 'button.mute': return 'Némítás';
			case 'button.unmute': return 'Némítás visszavonása';
			case 'button.share': return 'Megosztás';
			case 'button.save': return 'Mentés';
			case 'embed.article_by': return ({required Object name}) => 'A ${name} cikke.';
			case 'embed.note_by': return ({required Object name}) => '${name} bejegyzése';
			case 'embed.live_stream_by': return ({required Object name}) => 'Élő közvetítés a ${name} oldalon';
			case 'stream_list.following': return 'Követettek bejegyzései';
			case 'stream_list.live': return 'Élő';
			case 'stream_list.planned': return 'Tervezett';
			case 'stream_list.ended': return 'Véget ért';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Egyéni összeg';
			case 'zap.confirm': return 'Megerősítés';
			case 'zap.comment': return 'Hozzászólás';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} satoshi';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Megnyitás a pénztárcában';
			case 'zap.copy': return 'Vágólapra másolva';
			case 'zap.error.invalid_custom_amount': return 'Érvénytelen egyéni összeg';
			case 'zap.error.no_wallet': return 'Nincs telepített villám tárca';
			case 'zap.error.no_lud16': return 'Nem talált villámcím';
			case 'profile.past_streams': return 'Múltbeli Streamek';
			case 'profile.edit.display_name': return 'Megjelenített név';
			case 'profile.edit.about': return 'Névjegy';
			case 'profile.edit.nip05': return 'Nostr-cím';
			case 'profile.edit.lud16': return 'Lightning-cím';
			case 'profile.edit.error.logged_out': return 'Kijelentkezve nem lehet profilt szerkeszteni';
			case 'login.username': return 'Felhasználónév';
			case 'login.amber': return 'Bejelentkezés Amber segítségével';
			case 'login.key': return 'Bejelentkezés kulccsal';
			case 'login.create': return 'Fiók Létrehozása';
			case 'login.error.invalid_key': return 'Érvénytelen kulcs';
			default: return null;
		}
	}
}

