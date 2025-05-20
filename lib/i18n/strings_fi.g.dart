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
class TranslationsFi implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFi _root = this; // ignore: unused_field

	@override 
	TranslationsFi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFi(meta: meta ?? this.$meta);

	// Translations

	/// Teksti, joka kehottaa käyttäjää painamaan avatar-merkkiä aloittaakseen lataamisen.
	@override String get upload_avatar => 'Lataa avatar';

	/// Päällekkäin lueteltujen alkuun streamers by zaps
	@override String get most_zapped_streamers => 'Eniten Zapped Streamers';

	/// Käyttäjää ei löytynyt haun yhteydessä
	@override String get no_user_found => 'Käyttäjää ei löytynyt';

	/// Nimetön käyttäjä
	@override String get anon => 'Anon';

	/// Streamin katsojien määrä
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fi'))(n,
		one: '1 katsoja',
		other: '${n} katsojaa',
	);

	@override late final _TranslationsStreamFi stream = _TranslationsStreamFi._(_root);
	@override late final _TranslationsGoalFi goal = _TranslationsGoalFi._(_root);
	@override late final _TranslationsButtonFi button = _TranslationsButtonFi._(_root);
	@override late final _TranslationsEmbedFi embed = _TranslationsEmbedFi._(_root);

	/// Stream-luetteloiden otsikot stream-tyypeittäin live/päättynyt/suunniteltu jne.
	@override late final _TranslationsStreamListFi stream_list = _TranslationsStreamListFi._(_root);

	@override late final _TranslationsZapFi zap = _TranslationsZapFi._(_root);
	@override late final _TranslationsProfileFi profile = _TranslationsProfileFi._(_root);
	@override late final _TranslationsLoginFi login = _TranslationsLoginFi._(_root);
}

// Path: stream
class _TranslationsStreamFi implements TranslationsStreamEn {
	_TranslationsStreamFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusFi status = _TranslationsStreamStatusFi._(_root);
	@override String started({ required Object timestamp}) => 'Aloitettu ${timestamp}';
	@override late final _TranslationsStreamChatFi chat = _TranslationsStreamChatFi._(_root);
}

// Path: goal
class _TranslationsGoalFi implements TranslationsGoalEn {
	_TranslationsGoalFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Tavoite: ${amount}';
	@override String remaining({ required Object amount}) => 'Jäljellä: ${amount}';
	@override String get complete => 'TÄYDELLINEN';
}

// Path: button
class _TranslationsButtonFi implements TranslationsButtonEn {
	_TranslationsButtonFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations

	/// Kirjautumispainikkeen teksti
	@override String get login => 'Kirjaudu sisään';

	@override String get logout => 'Kirjaudu ulos';
	@override String get edit_profile => 'Muokkaa profiilia';

	/// Seuraa-painikkeen painikkeen teksti
	@override String get follow => 'Seuraa';

	/// Seuraa-painikkeen teksti
	@override String get unfollow => 'Älä seuraa';

	@override String get mute => 'Mykistä';
	@override String get unmute => 'Poista mykistys';
	@override String get share => 'Jaa';
	@override String get save => 'Tallenna';
}

// Path: embed
class _TranslationsEmbedFi implements TranslationsEmbedEn {
	_TranslationsEmbedFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Artikkeli ${name}';
	@override String note_by({ required Object name}) => 'Viesti lähettäjältä ${name}';
	@override String live_stream_by({ required Object name}) => 'Suora lähetys osoitteessa ${name}';
}

// Path: stream_list
class _TranslationsStreamListFi implements TranslationsStreamListEn {
	_TranslationsStreamListFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get following => 'Seuraa';
	@override String get live => 'Live';
	@override String get planned => 'Suunniteltu';
	@override String get ended => 'Päättynyt';
}

// Path: zap
class _TranslationsZapFi implements TranslationsZapEn {
	_TranslationsZapFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Mukautettu määrä';
	@override String get confirm => 'Vahvista';
	@override String get comment => 'Kommentoi';
	@override String button_zap_ready({ required Object amount}) => 'Zap ${amount} satsia';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Avaa lompakossa';
	@override String get copy => 'Kopioitu leikepöydälle';
	@override late final _TranslationsZapErrorFi error = _TranslationsZapErrorFi._(_root);
}

// Path: profile
class _TranslationsProfileFi implements TranslationsProfileEn {
	_TranslationsProfileFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Aikaisemmat lähetykset';
	@override late final _TranslationsProfileEditFi edit = _TranslationsProfileEditFi._(_root);
}

// Path: login
class _TranslationsLoginFi implements TranslationsLoginEn {
	_TranslationsLoginFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get username => 'Käyttäjätunnus';
	@override String get amber => 'Kirjaudu sisään Amber kanssa';
	@override String get key => 'Kirjaudu sisään avaimella';
	@override String get create => 'Luo tili';
	@override late final _TranslationsLoginErrorFi error = _TranslationsLoginErrorFi._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusFi implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'ENDED';
	@override String get planned => 'SUUNNITELTU';
}

// Path: stream.chat
class _TranslationsStreamChatFi implements TranslationsStreamChatEn {
	_TranslationsStreamChatFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT POISTETTU KÄYTÖSTÄ';
	@override String disabled_timeout({ required Object time}) => 'Aikakatkaisu päättyy: ${time}';

	/// Chat-viesti, joka näyttää aikakatkaisutapahtumat
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' ajastettu '),
		user,
		const TextSpan(text: ' for '),
		time,
	], style: style, recognizer: recognizer);

	/// Virta päättyi alatunnisteen alareunaan chatissa
	@override String get ended => 'STREAM PÄÄTTYNYT';

	/// Chat-viestin näyttäminen stream zaps
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zappasi '),
		amount,
		const TextSpan(text: ' satsia'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteFi write = _TranslationsStreamChatWriteFi._(_root);
	@override late final _TranslationsStreamChatBadgeFi badge = _TranslationsStreamChatBadgeFi._(_root);
	@override late final _TranslationsStreamChatRaidFi raid = _TranslationsStreamChatRaidFi._(_root);
}

// Path: zap.error
class _TranslationsZapErrorFi implements TranslationsZapErrorEn {
	_TranslationsZapErrorFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Virheellinen mukautettu määrä';
	@override String get no_wallet => 'Ei asennettua salamalompakkoa';
	@override String get no_lud16 => 'Salamaosoitetta ei löytynyt';
}

// Path: profile.edit
class _TranslationsProfileEditFi implements TranslationsProfileEditEn {
	_TranslationsProfileEditFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Näytön nimi';
	@override String get about => 'Tietoja';
	@override String get nip05 => 'Nostr-osoite';
	@override String get lud16 => 'Lightning-osoite';
	@override late final _TranslationsProfileEditErrorFi error = _TranslationsProfileEditErrorFi._(_root);
}

// Path: login.error
class _TranslationsLoginErrorFi implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Virheellinen avain';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteFi implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations

	/// Chat-viestin syöttöruudun tarra
	@override String get label => 'Kirjoita viesti';

	/// Chat-syöttöviesti näytetään, kun käyttäjä on kirjautunut sisään vain pubkey-avaimella.
	@override String get no_signer => 'Ei voi kirjoittaa viestejä npub-kirjautumisella';

	/// Chat-syötteen viesti näytetään, kun käyttäjä on kirjautunut ulos.
	@override String get login => 'Kirjaudu sisään lähettääksesi viestejä';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeFi implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations

	/// Merkin saaneiden käyttäjien luettelon otsikko
	@override String get awarded_to => 'Myönnetty:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidFi implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations

	/// Chat-viesti toiseen streamiin
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Chat raid viesti toisesta virrasta
	@override String from({ required Object name}) => 'RAID FROM ${name}';

	/// Lähtölaskenta ajastin automaattista ratsastusta varten
	@override String countdown({ required Object time}) => 'Ryöstöretket osoitteessa ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorFi implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Ei voi muokata profiilia, kun on kirjautunut ulos';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsFi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Lataa avatar';
			case 'most_zapped_streamers': return 'Eniten Zapped Streamers';
			case 'no_user_found': return 'Käyttäjää ei löytynyt';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fi'))(n,
				one: '1 katsoja',
				other: '${n} katsojaa',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'ENDED';
			case 'stream.status.planned': return 'SUUNNITELTU';
			case 'stream.started': return ({ required Object timestamp}) => 'Aloitettu ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT POISTETTU KÄYTÖSTÄ';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Aikakatkaisu päättyy: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' ajastettu '),
				user,
				const TextSpan(text: ' for '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'STREAM PÄÄTTYNYT';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zappasi '),
				amount,
				const TextSpan(text: ' satsia'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Kirjoita viesti';
			case 'stream.chat.write.no_signer': return 'Ei voi kirjoittaa viestejä npub-kirjautumisella';
			case 'stream.chat.write.login': return 'Kirjaudu sisään lähettääksesi viestejä';
			case 'stream.chat.badge.awarded_to': return 'Myönnetty:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Ryöstöretket osoitteessa ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Tavoite: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Jäljellä: ${amount}';
			case 'goal.complete': return 'TÄYDELLINEN';
			case 'button.login': return 'Kirjaudu sisään';
			case 'button.logout': return 'Kirjaudu ulos';
			case 'button.edit_profile': return 'Muokkaa profiilia';
			case 'button.follow': return 'Seuraa';
			case 'button.unfollow': return 'Älä seuraa';
			case 'button.mute': return 'Mykistä';
			case 'button.unmute': return 'Poista mykistys';
			case 'button.share': return 'Jaa';
			case 'button.save': return 'Tallenna';
			case 'embed.article_by': return ({ required Object name}) => 'Artikkeli ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Viesti lähettäjältä ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Suora lähetys osoitteessa ${name}';
			case 'stream_list.following': return 'Seuraa';
			case 'stream_list.live': return 'Live';
			case 'stream_list.planned': return 'Suunniteltu';
			case 'stream_list.ended': return 'Päättynyt';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Mukautettu määrä';
			case 'zap.confirm': return 'Vahvista';
			case 'zap.comment': return 'Kommentoi';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zap ${amount} satsia';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Avaa lompakossa';
			case 'zap.copy': return 'Kopioitu leikepöydälle';
			case 'zap.error.invalid_custom_amount': return 'Virheellinen mukautettu määrä';
			case 'zap.error.no_wallet': return 'Ei asennettua salamalompakkoa';
			case 'zap.error.no_lud16': return 'Salamaosoitetta ei löytynyt';
			case 'profile.past_streams': return 'Aikaisemmat lähetykset';
			case 'profile.edit.display_name': return 'Näytön nimi';
			case 'profile.edit.about': return 'Tietoja';
			case 'profile.edit.nip05': return 'Nostr-osoite';
			case 'profile.edit.lud16': return 'Lightning-osoite';
			case 'profile.edit.error.logged_out': return 'Ei voi muokata profiilia, kun on kirjautunut ulos';
			case 'login.username': return 'Käyttäjätunnus';
			case 'login.amber': return 'Kirjaudu sisään Amber kanssa';
			case 'login.key': return 'Kirjaudu sisään avaimella';
			case 'login.create': return 'Luo tili';
			case 'login.error.invalid_key': return 'Virheellinen avain';
			default: return null;
		}
	}
}

