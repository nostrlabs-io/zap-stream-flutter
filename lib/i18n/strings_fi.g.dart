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
class TranslationsFi extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('fi').format(n)} sats';

	/// Streamin katsojien määrä
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fi'))(n,
		one: '1 katsoja',
		other: '${NumberFormat.decimalPattern('fi').format(n)} katsojat',
	);

	@override late final _Translations$stream$fi stream = _Translations$stream$fi._(_root);
	@override late final _Translations$goal$fi goal = _Translations$goal$fi._(_root);
	@override late final _Translations$button$fi button = _Translations$button$fi._(_root);
	@override late final _Translations$embed$fi embed = _Translations$embed$fi._(_root);

	/// Stream-luetteloiden otsikot stream-tyypeittäin live/päättynyt/suunniteltu jne.
	@override late final _Translations$stream_list$fi stream_list = _Translations$stream_list$fi._(_root);

	@override late final _Translations$zap$fi zap = _Translations$zap$fi._(_root);
	@override late final _Translations$profile$fi profile = _Translations$profile$fi._(_root);
	@override late final _Translations$settings$fi settings = _Translations$settings$fi._(_root);
	@override late final _Translations$login$fi login = _Translations$login$fi._(_root);
	@override late final _Translations$live$fi live = _Translations$live$fi._(_root);
}

// Path: stream
class _Translations$stream$fi extends Translations$stream$en {
	_Translations$stream$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$fi status = _Translations$stream$status$fi._(_root);
	@override String started({required Object timestamp}) => 'Aloitettu ${timestamp}';
	@override String notification({required Object name}) => '${name} meni suoraksi!';
	@override late final _Translations$stream$chat$fi chat = _Translations$stream$chat$fi._(_root);
}

// Path: goal
class _Translations$goal$fi extends Translations$goal$en {
	_Translations$goal$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Tavoite: ${amount}';
	@override String remaining({required Object amount}) => 'Jäljellä: ${amount}';
	@override String get complete => 'TÄYDELLINEN';
}

// Path: button
class _Translations$button$fi extends Translations$button$en {
	_Translations$button$fi._(TranslationsFi root) : this._root = root, super.internal(root);

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
	@override String get connect => 'Yhdistä';
	@override String get settings => 'Asetukset';
}

// Path: embed
class _Translations$embed$fi extends Translations$embed$en {
	_Translations$embed$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artikkeli ${name}';
	@override String note_by({required Object name}) => 'Viesti lähettäjältä ${name}';
	@override String live_stream_by({required Object name}) => 'Suora lähetys osoitteessa ${name}';
}

// Path: stream_list
class _Translations$stream_list$fi extends Translations$stream_list$en {
	_Translations$stream_list$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get following => 'Seuraa';
	@override String get live => 'Live';
	@override String get planned => 'Suunniteltu';
	@override String get ended => 'Päättynyt';
}

// Path: zap
class _Translations$zap$fi extends Translations$zap$en {
	_Translations$zap$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Mukautettu määrä';
	@override String get confirm => 'Vahvista';
	@override String get comment => 'Kommentoi';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} satsia';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Avaa lompakossa';
	@override String get button_connect_wallet => 'Yhdistä lompakko';
	@override String get copy => 'Kopioitu leikepöydälle';
	@override late final _Translations$zap$error$fi error = _Translations$zap$error$fi._(_root);
}

// Path: profile
class _Translations$profile$fi extends Translations$profile$en {
	_Translations$profile$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Aikaisemmat lähetykset';
}

// Path: settings
class _Translations$settings$fi extends Translations$settings$en {
	_Translations$settings$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Muokkaa profiilia';
	@override String get button_wallet => 'Lompakon asetukset';
	@override late final _Translations$settings$profile$fi profile = _Translations$settings$profile$fi._(_root);
	@override late final _Translations$settings$wallet$fi wallet = _Translations$settings$wallet$fi._(_root);
}

// Path: login
class _Translations$login$fi extends Translations$login$en {
	_Translations$login$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get username => 'Käyttäjätunnus';
	@override String get amber => 'Kirjaudu sisään Amber kanssa';
	@override String get key => 'Kirjaudu sisään avaimella';
	@override String get create => 'Luo tili';
	@override late final _Translations$login$error$fi error = _Translations$login$error$fi._(_root);
}

// Path: live
class _Translations$live$fi extends Translations$live$en {
	_Translations$live$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get start => 'GO LIVE';
	@override String get configure_stream => 'Määritä Stream';
	@override String get endpoint => 'Loppupiste';
	@override String get accept_tos => 'Hyväksy TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fi'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Otsikko';
	@override String get summary => 'Yhteenveto';
	@override String get image => 'Kansikuva';
	@override String get tags => 'Tunnisteet';
	@override String get nsfw => 'NSFW-sisältö';
	@override String get nsfw_description => 'Tarkista täältä, jos tämä stream sisältää alastomuutta tai pornografista sisältöä.';
	@override late final _Translations$live$error$fi error = _Translations$live$error$fi._(_root);
}

// Path: stream.status
class _Translations$stream$status$fi extends Translations$stream$status$en {
	_Translations$stream$status$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'ENDED';
	@override String get planned => 'SUUNNITELTU';
}

// Path: stream.chat
class _Translations$stream$chat$fi extends Translations$stream$chat$en {
	_Translations$stream$chat$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT POISTETTU KÄYTÖSTÄ';
	@override String disabled_timeout({required Object time}) => 'Aikakatkaisu päättyy: ${time}';

	/// Chat-viesti, joka näyttää aikakatkaisutapahtumat
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' ajastettu '),
		user,
		const TextSpan(text: ' for '),
		time,
	]);

	/// Virta päättyi alatunnisteen alareunaan chatissa
	@override String get ended => 'STREAM PÄÄTTYNYT';

	/// Chat-viestin näyttäminen stream zaps
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zappasi '),
		amount,
		const TextSpan(text: ' satsia'),
	]);

	@override late final _Translations$stream$chat$write$fi write = _Translations$stream$chat$write$fi._(_root);
	@override late final _Translations$stream$chat$badge$fi badge = _Translations$stream$chat$badge$fi._(_root);
	@override late final _Translations$stream$chat$raid$fi raid = _Translations$stream$chat$raid$fi._(_root);
}

// Path: zap.error
class _Translations$zap$error$fi extends Translations$zap$error$en {
	_Translations$zap$error$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Virheellinen mukautettu määrä';
	@override String get no_wallet => 'Ei asennettua salamalompakkoa';
	@override String get no_lud16 => 'Salamaosoitetta ei löytynyt';
}

// Path: settings.profile
class _Translations$settings$profile$fi extends Translations$settings$profile$en {
	_Translations$settings$profile$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Näytön nimi';
	@override String get about => 'Tietoja';
	@override String get nip05 => 'Nostr Osoite';
	@override String get lud16 => 'Salama osoite';
	@override late final _Translations$settings$profile$error$fi error = _Translations$settings$profile$error$fi._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$fi extends Translations$settings$wallet$en {
	_Translations$settings$wallet$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect-lompakko (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Irrota lompakko';
	@override String get connect_1tap => '1-Tap-liitäntä';
	@override String get paste => 'Liitä URL-osoite';
	@override String get balance => 'Balance';
	@override String get name => 'Lompakko';
	@override late final _Translations$settings$wallet$error$fi error = _Translations$settings$wallet$error$fi._(_root);
}

// Path: login.error
class _Translations$login$error$fi extends Translations$login$error$en {
	_Translations$login$error$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Virheellinen avain';
}

// Path: live.error
class _Translations$live$error$fi extends Translations$live$error$en {
	_Translations$live$error$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Stream epäonnistui';
	@override String get connection_error => 'Yhteysvirhe';
	@override String get start_failed => 'Virran käynnistys epäonnistui, tarkista saldosi';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$fi extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$fi._(TranslationsFi root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$fi extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations

	/// Merkin saaneiden käyttäjien luettelon otsikko
	@override String get awarded_to => 'Myönnetty:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$fi extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations

	/// Chat-viesti toiseen streamiin
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid viesti toisesta virrasta
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// Lähtölaskenta ajastin automaattista ratsastusta varten
	@override String countdown({required Object time}) => 'Ryöstöretket osoitteessa ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$fi extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Ei voi muokata profiilia, kun on kirjautunut ulos';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$fi extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Ei voi muodostaa yhteyttä lompakkoon, kun on kirjautunut ulos';
	@override String get nwc_auth_event_not_found => 'Ei lompakko-auth-tapahtumaa löydetty';
}

/// The flat map containing all translations for locale <fi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Lataa avatar',
			'most_zapped_streamers' => 'Eniten Zapped Streamers',
			'no_user_found' => 'Käyttäjää ei löytynyt',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('fi').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fi'))(n, one: '1 katsoja', other: '${NumberFormat.decimalPattern('fi').format(n)} katsojat', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'ENDED',
			'stream.status.planned' => 'SUUNNITELTU',
			'stream.started' => ({required Object timestamp}) => 'Aloitettu ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} meni suoraksi!',
			'stream.chat.disabled' => 'CHAT POISTETTU KÄYTÖSTÄ',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Aikakatkaisu päättyy: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' ajastettu '), user, const TextSpan(text: ' for '), time, ]), 
			'stream.chat.ended' => 'STREAM PÄÄTTYNYT',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zappasi '), amount, const TextSpan(text: ' satsia'), ]), 
			'stream.chat.write.label' => 'Kirjoita viesti',
			'stream.chat.write.no_signer' => 'Ei voi kirjoittaa viestejä npub-kirjautumisella',
			'stream.chat.write.login' => 'Kirjaudu sisään lähettääksesi viestejä',
			'stream.chat.badge.awarded_to' => 'Myönnetty:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Ryöstöretket osoitteessa ${time}',
			'goal.title' => ({required Object amount}) => 'Tavoite: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Jäljellä: ${amount}',
			'goal.complete' => 'TÄYDELLINEN',
			'button.login' => 'Kirjaudu sisään',
			'button.logout' => 'Kirjaudu ulos',
			'button.edit_profile' => 'Muokkaa profiilia',
			'button.follow' => 'Seuraa',
			'button.unfollow' => 'Älä seuraa',
			'button.mute' => 'Mykistä',
			'button.unmute' => 'Poista mykistys',
			'button.share' => 'Jaa',
			'button.save' => 'Tallenna',
			'button.connect' => 'Yhdistä',
			'button.settings' => 'Asetukset',
			'embed.article_by' => ({required Object name}) => 'Artikkeli ${name}',
			'embed.note_by' => ({required Object name}) => 'Viesti lähettäjältä ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Suora lähetys osoitteessa ${name}',
			'stream_list.following' => 'Seuraa',
			'stream_list.live' => 'Live',
			'stream_list.planned' => 'Suunniteltu',
			'stream_list.ended' => 'Päättynyt',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Mukautettu määrä',
			'zap.confirm' => 'Vahvista',
			'zap.comment' => 'Kommentoi',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} satsia',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Avaa lompakossa',
			'zap.button_connect_wallet' => 'Yhdistä lompakko',
			'zap.copy' => 'Kopioitu leikepöydälle',
			'zap.error.invalid_custom_amount' => 'Virheellinen mukautettu määrä',
			'zap.error.no_wallet' => 'Ei asennettua salamalompakkoa',
			'zap.error.no_lud16' => 'Salamaosoitetta ei löytynyt',
			'profile.past_streams' => 'Aikaisemmat lähetykset',
			'settings.button_profile' => 'Muokkaa profiilia',
			'settings.button_wallet' => 'Lompakon asetukset',
			'settings.profile.display_name' => 'Näytön nimi',
			'settings.profile.about' => 'Tietoja',
			'settings.profile.nip05' => 'Nostr Osoite',
			'settings.profile.lud16' => 'Salama osoite',
			'settings.profile.error.logged_out' => 'Ei voi muokata profiilia, kun on kirjautunut ulos',
			'settings.wallet.connect_wallet' => 'Connect-lompakko (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Irrota lompakko',
			'settings.wallet.connect_1tap' => '1-Tap-liitäntä',
			'settings.wallet.paste' => 'Liitä URL-osoite',
			'settings.wallet.balance' => 'Balance',
			'settings.wallet.name' => 'Lompakko',
			'settings.wallet.error.logged_out' => 'Ei voi muodostaa yhteyttä lompakkoon, kun on kirjautunut ulos',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Ei lompakko-auth-tapahtumaa löydetty',
			'login.username' => 'Käyttäjätunnus',
			'login.amber' => 'Kirjaudu sisään Amber kanssa',
			'login.key' => 'Kirjaudu sisään avaimella',
			'login.create' => 'Luo tili',
			'login.error.invalid_key' => 'Virheellinen avain',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Määritä Stream',
			'live.endpoint' => 'Loppupiste',
			'live.accept_tos' => 'Hyväksy TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fi'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Otsikko',
			'live.summary' => 'Yhteenveto',
			'live.image' => 'Kansikuva',
			'live.tags' => 'Tunnisteet',
			'live.nsfw' => 'NSFW-sisältö',
			'live.nsfw_description' => 'Tarkista täältä, jos tämä stream sisältää alastomuutta tai pornografista sisältöä.',
			'live.error.failed' => 'Stream epäonnistui',
			'live.error.connection_error' => 'Yhteysvirhe',
			'live.error.start_failed' => 'Virran käynnistys epäonnistui, tarkista saldosi',
			_ => null,
		};
	}
}
