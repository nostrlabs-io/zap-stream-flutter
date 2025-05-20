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
class TranslationsCs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.cs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <cs>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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

	/// Počet diváků streamu
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '1 divák',
		other: '${n} diváci',
	);

	@override late final _TranslationsStreamCs stream = _TranslationsStreamCs._(_root);
	@override late final _TranslationsGoalCs goal = _TranslationsGoalCs._(_root);
	@override late final _TranslationsButtonCs button = _TranslationsButtonCs._(_root);
	@override late final _TranslationsEmbedCs embed = _TranslationsEmbedCs._(_root);

	/// Nadpisy v seznamech proudů podle typu proudu živě/konec/plánovaně atd.
	@override late final _TranslationsStreamListCs stream_list = _TranslationsStreamListCs._(_root);

	@override late final _TranslationsZapCs zap = _TranslationsZapCs._(_root);
	@override late final _TranslationsProfileCs profile = _TranslationsProfileCs._(_root);
	@override late final _TranslationsLoginCs login = _TranslationsLoginCs._(_root);
}

// Path: stream
class _TranslationsStreamCs implements TranslationsStreamEn {
	_TranslationsStreamCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusCs status = _TranslationsStreamStatusCs._(_root);
	@override String started({ required Object timestamp}) => 'Založeno ${timestamp}';
	@override late final _TranslationsStreamChatCs chat = _TranslationsStreamChatCs._(_root);
}

// Path: goal
class _TranslationsGoalCs implements TranslationsGoalEn {
	_TranslationsGoalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Cíl: ${amount}';
	@override String remaining({ required Object amount}) => 'Zbývá: ${amount}';
	@override String get complete => 'KOMPLETNÍ';
}

// Path: button
class _TranslationsButtonCs implements TranslationsButtonEn {
	_TranslationsButtonCs._(this._root);

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
}

// Path: embed
class _TranslationsEmbedCs implements TranslationsEmbedEn {
	_TranslationsEmbedCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Článek na ${name}';
	@override String note_by({ required Object name}) => 'Poznámka ${name}';
	@override String live_stream_by({ required Object name}) => 'Přímý přenos na adrese ${name}';
}

// Path: stream_list
class _TranslationsStreamListCs implements TranslationsStreamListEn {
	_TranslationsStreamListCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get following => 'Po';
	@override String get live => 'Živě';
	@override String get planned => 'Plánované';
	@override String get ended => 'Ukončeno';
}

// Path: zap
class _TranslationsZapCs implements TranslationsZapEn {
	_TranslationsZapCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Vlastní částka';
	@override String get confirm => 'Potvrďte';
	@override String get comment => 'Komentář:';
	@override String button_zap_ready({ required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Otevřít v peněžence';
	@override String get copy => 'Zkopírováno do schránky';
	@override late final _TranslationsZapErrorCs error = _TranslationsZapErrorCs._(_root);
}

// Path: profile
class _TranslationsProfileCs implements TranslationsProfileEn {
	_TranslationsProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Minulé proudy';
	@override late final _TranslationsProfileEditCs edit = _TranslationsProfileEditCs._(_root);
}

// Path: login
class _TranslationsLoginCs implements TranslationsLoginEn {
	_TranslationsLoginCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get username => 'Uživatelské jméno';
	@override String get amber => 'Přihlášení pomocí Amber';
	@override String get key => 'Přihlášení pomocí klíče';
	@override String get create => 'Vytvořit účet';
	@override late final _TranslationsLoginErrorCs error = _TranslationsLoginErrorCs._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusCs implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'KONEC';
	@override String get planned => 'PLÁNOVANÉ';
}

// Path: stream.chat
class _TranslationsStreamChatCs implements TranslationsStreamChatEn {
	_TranslationsStreamChatCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT ZRUŠEN';
	@override String disabled_timeout({ required Object time}) => 'Časový limit vyprší: ${time}';

	/// Zpráva chatu zobrazující události časového limitu
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' vypršel čas '),
		user,
		const TextSpan(text: ' pro '),
		time,
	], style: style, recognizer: recognizer);

	/// Zápatí v dolní části chatu ukončilo stream
	@override String get ended => 'STREAM UKONČEN';

	/// Zpráva chatu zobrazující proud zaps
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' Zapped '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteCs write = _TranslationsStreamChatWriteCs._(_root);
	@override late final _TranslationsStreamChatBadgeCs badge = _TranslationsStreamChatBadgeCs._(_root);
	@override late final _TranslationsStreamChatRaidCs raid = _TranslationsStreamChatRaidCs._(_root);
}

// Path: zap.error
class _TranslationsZapErrorCs implements TranslationsZapErrorEn {
	_TranslationsZapErrorCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Neplatná vlastní částka';
	@override String get no_wallet => 'Není nainstalována blesková peněženka';
	@override String get no_lud16 => 'Nebyla nalezena žádná adresa blesku';
}

// Path: profile.edit
class _TranslationsProfileEditCs implements TranslationsProfileEditEn {
	_TranslationsProfileEditCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Zobrazení názvu';
	@override String get about => 'O stránkách';
	@override String get nip05 => 'Adresa Nostr';
	@override String get lud16 => 'Adresa blesku';
	@override late final _TranslationsProfileEditErrorCs error = _TranslationsProfileEditErrorCs._(_root);
}

// Path: login.error
class _TranslationsLoginErrorCs implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Neplatný klíč';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteCs implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteCs._(this._root);

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
class _TranslationsStreamChatBadgeCs implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations

	/// Záhlaví nad seznamem uživatelů, kterým byl udělen odznak
	@override String get awarded_to => 'Uděleno:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidCs implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations

	/// Zpráva o nájezdu chatu do jiného proudu
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Zpráva o nájezdu chatu z jiného proudu
	@override String from({ required Object name}) => 'RAID Z ${name}';

	/// Časovač odpočítávání pro automatický nájezd
	@override String countdown({ required Object time}) => 'Nájezdy na ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorCs implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nelze upravit profil, když je odhlášený';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsCs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Nahrát avatar';
			case 'most_zapped_streamers': return 'Nejvíce zapnutých streamerů';
			case 'no_user_found': return 'Nebyl nalezen žádný uživatel';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
				one: '1 divák',
				other: '${n} diváci',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'KONEC';
			case 'stream.status.planned': return 'PLÁNOVANÉ';
			case 'stream.started': return ({ required Object timestamp}) => 'Založeno ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT ZRUŠEN';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Časový limit vyprší: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' vypršel čas '),
				user,
				const TextSpan(text: ' pro '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'STREAM UKONČEN';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' Zapped '),
				amount,
				const TextSpan(text: ' sats'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Napište zprávu';
			case 'stream.chat.write.no_signer': return 'Nelze psát zprávy s přihlášením npub';
			case 'stream.chat.write.login': return 'Pro odesílání zpráv se prosím přihlaste';
			case 'stream.chat.badge.awarded_to': return 'Uděleno:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID Z ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Nájezdy na ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Cíl: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Zbývá: ${amount}';
			case 'goal.complete': return 'KOMPLETNÍ';
			case 'button.login': return 'Přihlášení';
			case 'button.logout': return 'Odhlášení';
			case 'button.edit_profile': return 'Upravit profil';
			case 'button.follow': return 'Sledujte';
			case 'button.unfollow': return 'Zrušit sledování';
			case 'button.mute': return 'Ztlumit';
			case 'button.unmute': return 'Zrušit ztlumení';
			case 'button.share': return 'Sdílet';
			case 'button.save': return 'Uložit';
			case 'embed.article_by': return ({ required Object name}) => 'Článek na ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Poznámka ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Přímý přenos na adrese ${name}';
			case 'stream_list.following': return 'Po';
			case 'stream_list.live': return 'Živě';
			case 'stream_list.planned': return 'Plánované';
			case 'stream_list.ended': return 'Ukončeno';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Vlastní částka';
			case 'zap.confirm': return 'Potvrďte';
			case 'zap.comment': return 'Komentář:';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Otevřít v peněžence';
			case 'zap.copy': return 'Zkopírováno do schránky';
			case 'zap.error.invalid_custom_amount': return 'Neplatná vlastní částka';
			case 'zap.error.no_wallet': return 'Není nainstalována blesková peněženka';
			case 'zap.error.no_lud16': return 'Nebyla nalezena žádná adresa blesku';
			case 'profile.past_streams': return 'Minulé proudy';
			case 'profile.edit.display_name': return 'Zobrazení názvu';
			case 'profile.edit.about': return 'O stránkách';
			case 'profile.edit.nip05': return 'Adresa Nostr';
			case 'profile.edit.lud16': return 'Adresa blesku';
			case 'profile.edit.error.logged_out': return 'Nelze upravit profil, když je odhlášený';
			case 'login.username': return 'Uživatelské jméno';
			case 'login.amber': return 'Přihlášení pomocí Amber';
			case 'login.key': return 'Přihlášení pomocí klíče';
			case 'login.create': return 'Vytvořit účet';
			case 'login.error.invalid_key': return 'Neplatný klíč';
			default: return null;
		}
	}
}

