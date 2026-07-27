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
class TranslationsNl extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsNl _root = this; // ignore: unused_field

	@override 
	TranslationsNl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNl(meta: meta ?? this.$meta);

	// Translations

	/// Tekst die de gebruiker vraagt om op de avatar-plaatshouder te klikken om te beginnen met uploaden
	@override String get upload_avatar => 'Avatar uploaden';

	/// Koers over beursgenoteerde topstreamers door zaps
	@override String get most_zapped_streamers => 'Meeste Zapped Streamers';

	/// Geen gebruiker gevonden bij het zoeken
	@override String get no_user_found => 'Geen gebruiker gevonden';

	/// Een anonieme gebruiker
	@override String get anon => 'Anon';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('nl').format(n)} sats';

	/// Aantal kijkers van de stream
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '1 kijker',
		other: '${NumberFormat.decimalPattern('nl').format(n)} kijkers',
	);

	@override late final _Translations$stream$nl stream = _Translations$stream$nl._(_root);
	@override late final _Translations$goal$nl goal = _Translations$goal$nl._(_root);
	@override late final _Translations$button$nl button = _Translations$button$nl._(_root);
	@override late final _Translations$embed$nl embed = _Translations$embed$nl._(_root);

	/// Rubrieken op streamlijsten per streamtype live/beëindigd/gepland etc.
	@override late final _Translations$stream_list$nl stream_list = _Translations$stream_list$nl._(_root);

	@override late final _Translations$zap$nl zap = _Translations$zap$nl._(_root);
	@override late final _Translations$profile$nl profile = _Translations$profile$nl._(_root);
	@override late final _Translations$settings$nl settings = _Translations$settings$nl._(_root);
	@override late final _Translations$login$nl login = _Translations$login$nl._(_root);
	@override late final _Translations$live$nl live = _Translations$live$nl._(_root);
}

// Path: stream
class _Translations$stream$nl extends Translations$stream$en {
	_Translations$stream$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$nl status = _Translations$stream$status$nl._(_root);
	@override String started({required Object timestamp}) => 'Begonnen met ${timestamp}';
	@override String notification({required Object name}) => '${name} ging live!';
	@override late final _Translations$stream$chat$nl chat = _Translations$stream$chat$nl._(_root);
}

// Path: goal
class _Translations$goal$nl extends Translations$goal$en {
	_Translations$goal$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Doel: ${amount}';
	@override String remaining({required Object amount}) => 'Overblijvend: ${amount}';
	@override String get complete => 'COMPLETE';
}

// Path: button
class _Translations$button$nl extends Translations$button$en {
	_Translations$button$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations

	/// Knoptekst voor de aanmeldknop
	@override String get login => 'Inloggen';

	@override String get logout => 'Uitloggen';
	@override String get edit_profile => 'Bewerk Profiel';

	/// Knoptekst voor de volgknop
	@override String get follow => 'Volgen';

	/// Knoptekst voor de knop Ontvolgen
	@override String get unfollow => 'Ontvolgen';

	@override String get mute => 'Dempen';
	@override String get unmute => 'Niet langer negeren';
	@override String get share => 'Deel';
	@override String get save => 'Opslaan';
	@override String get connect => 'Maak verbinding met';
	@override String get settings => 'Instellingen';
}

// Path: embed
class _Translations$embed$nl extends Translations$embed$en {
	_Translations$embed$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artikel door ${name}';
	@override String note_by({required Object name}) => 'Opmerking door ${name}';
	@override String live_stream_by({required Object name}) => 'Live stream via ${name}';
}

// Path: stream_list
class _Translations$stream_list$nl extends Translations$stream_list$en {
	_Translations$stream_list$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get following => 'Volgt';
	@override String get live => 'Live';
	@override String get planned => 'Gepland';
	@override String get ended => 'Beëindigd';
}

// Path: zap
class _Translations$zap$nl extends Translations$zap$en {
	_Translations$zap$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Aangepast bedrag';
	@override String get confirm => 'Bevestig';
	@override String get comment => 'Opmerking';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Openen in portefeuille';
	@override String get button_connect_wallet => 'Portemonnee aansluiten';
	@override String get copy => 'Gekopieerd naar klembord';
	@override late final _Translations$zap$error$nl error = _Translations$zap$error$nl._(_root);
}

// Path: profile
class _Translations$profile$nl extends Translations$profile$en {
	_Translations$profile$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Afgelopen Streams';
}

// Path: settings
class _Translations$settings$nl extends Translations$settings$en {
	_Translations$settings$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Profiel bewerken';
	@override String get button_wallet => 'Portemonnee-instellingen';
	@override late final _Translations$settings$profile$nl profile = _Translations$settings$profile$nl._(_root);
	@override late final _Translations$settings$wallet$nl wallet = _Translations$settings$wallet$nl._(_root);
}

// Path: login
class _Translations$login$nl extends Translations$login$en {
	_Translations$login$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get username => 'Gebruikersnaam';
	@override String get amber => 'Inloggen met Amber';
	@override String get key => 'Inloggen met sleutel';
	@override String get create => 'Account aanmaken';
	@override late final _Translations$login$error$nl error = _Translations$login$error$nl._(_root);
}

// Path: live
class _Translations$live$nl extends Translations$live$en {
	_Translations$live$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get start => 'LIVE GAAN';
	@override String get configure_stream => 'Stream configureren';
	@override String get endpoint => 'Eindpunt';
	@override String get accept_tos => 'TOS accepteren';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Titel';
	@override String get summary => 'Samenvatting';
	@override String get image => 'Afbeelding omslag';
	@override String get tags => 'Tags';
	@override String get nsfw => 'NSFW-inhoud';
	@override String get nsfw_description => 'Controleer hier of deze stream naaktheid of pornografische inhoud bevat.';
	@override late final _Translations$live$error$nl error = _Translations$live$error$nl._(_root);
}

// Path: stream.status
class _Translations$stream$status$nl extends Translations$stream$status$en {
	_Translations$stream$status$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'GESLOTEN';
	@override String get planned => 'GEPLAND';
}

// Path: stream.chat
class _Translations$stream$chat$nl extends Translations$stream$chat$en {
	_Translations$stream$chat$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT UITGESCHAKELD';
	@override String disabled_timeout({required Object time}) => 'Time-out loopt af: ${time}';

	/// Chatbericht met time-outgebeurtenissen
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' timed out '),
		user,
		const TextSpan(text: ' voor '),
		time,
	]);

	/// Voettekst einde stream onderaan chat
	@override String get ended => 'STREAM BEËINDIGD';

	/// Chatbericht met stream zaps
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$nl write = _Translations$stream$chat$write$nl._(_root);
	@override late final _Translations$stream$chat$badge$nl badge = _Translations$stream$chat$badge$nl._(_root);
	@override late final _Translations$stream$chat$raid$nl raid = _Translations$stream$chat$raid$nl._(_root);
}

// Path: zap.error
class _Translations$zap$error$nl extends Translations$zap$error$en {
	_Translations$zap$error$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Ongeldig aangepast bedrag';
	@override String get no_wallet => 'Geen bliksemportemonnee geïnstalleerd';
	@override String get no_lud16 => 'Geen bliksemadres gevonden';
}

// Path: settings.profile
class _Translations$settings$profile$nl extends Translations$settings$profile$en {
	_Translations$settings$profile$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Naam weergeven';
	@override String get about => 'Over';
	@override String get nip05 => 'Nostr Adres';
	@override String get lud16 => 'Bliksemadres';
	@override late final _Translations$settings$profile$error$nl error = _Translations$settings$profile$error$nl._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$nl extends Translations$settings$wallet$en {
	_Translations$settings$wallet$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Portemonnee verbinden (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Portefeuille loskoppelen';
	@override String get connect_1tap => '1-Tap Aansluiting';
	@override String get paste => 'URL plakken';
	@override String get balance => 'Saldo';
	@override String get name => 'Portemonnee';
	@override late final _Translations$settings$wallet$error$nl error = _Translations$settings$wallet$error$nl._(_root);
}

// Path: login.error
class _Translations$login$error$nl extends Translations$login$error$en {
	_Translations$login$error$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Ongeldige sleutel';
}

// Path: live.error
class _Translations$live$error$nl extends Translations$live$error$en {
	_Translations$live$error$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Stream mislukt';
	@override String get connection_error => 'Fout bij verbinding';
	@override String get start_failed => 'Stream start mislukt, controleer uw saldo';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$nl extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations

	/// Label op het invoerveld voor chatberichten
	@override String get label => 'Schrijf bericht';

	/// Chatinvoerbericht getoond wanneer de gebruiker alleen is ingelogd met pubkey
	@override String get no_signer => 'Kan geen berichten schrijven met npub login';

	/// Chatinvoerbericht dat wordt weergegeven wanneer de gebruiker is uitgelogd
	@override String get login => 'Log in om berichten te verzenden';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$nl extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations

	/// Kop boven de lijst met gebruikers die een badge hebben gekregen
	@override String get awarded_to => 'Toegekend aan:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$nl extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations

	/// Chat raid bericht naar een andere stream
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat invalbericht van een andere stream
	@override String from({required Object name}) => 'RAID VAN ${name}';

	/// Afteltimer voor automatisch rijden
	@override String countdown({required Object time}) => 'Overvallen in ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$nl extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan profiel niet bewerken als ik ben uitgelogd';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$nl extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan geen verbinding maken met portemonnee als ik ben uitgelogd';
	@override String get nwc_auth_event_not_found => 'Geen portemonnee-auth-gebeurtenis gevonden';
}

/// The flat map containing all translations for locale <nl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Avatar uploaden',
			'most_zapped_streamers' => 'Meeste Zapped Streamers',
			'no_user_found' => 'Geen gebruiker gevonden',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('nl').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '1 kijker', other: '${NumberFormat.decimalPattern('nl').format(n)} kijkers', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'GESLOTEN',
			'stream.status.planned' => 'GEPLAND',
			'stream.started' => ({required Object timestamp}) => 'Begonnen met ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} ging live!',
			'stream.chat.disabled' => 'CHAT UITGESCHAKELD',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Time-out loopt af: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' timed out '), user, const TextSpan(text: ' voor '), time, ]), 
			'stream.chat.ended' => 'STREAM BEËINDIGD',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Schrijf bericht',
			'stream.chat.write.no_signer' => 'Kan geen berichten schrijven met npub login',
			'stream.chat.write.login' => 'Log in om berichten te verzenden',
			'stream.chat.badge.awarded_to' => 'Toegekend aan:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID VAN ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Overvallen in ${time}',
			'goal.title' => ({required Object amount}) => 'Doel: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Overblijvend: ${amount}',
			'goal.complete' => 'COMPLETE',
			'button.login' => 'Inloggen',
			'button.logout' => 'Uitloggen',
			'button.edit_profile' => 'Bewerk Profiel',
			'button.follow' => 'Volgen',
			'button.unfollow' => 'Ontvolgen',
			'button.mute' => 'Dempen',
			'button.unmute' => 'Niet langer negeren',
			'button.share' => 'Deel',
			'button.save' => 'Opslaan',
			'button.connect' => 'Maak verbinding met',
			'button.settings' => 'Instellingen',
			'embed.article_by' => ({required Object name}) => 'Artikel door ${name}',
			'embed.note_by' => ({required Object name}) => 'Opmerking door ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Live stream via ${name}',
			'stream_list.following' => 'Volgt',
			'stream_list.live' => 'Live',
			'stream_list.planned' => 'Gepland',
			'stream_list.ended' => 'Beëindigd',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Aangepast bedrag',
			'zap.confirm' => 'Bevestig',
			'zap.comment' => 'Opmerking',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Openen in portefeuille',
			'zap.button_connect_wallet' => 'Portemonnee aansluiten',
			'zap.copy' => 'Gekopieerd naar klembord',
			'zap.error.invalid_custom_amount' => 'Ongeldig aangepast bedrag',
			'zap.error.no_wallet' => 'Geen bliksemportemonnee geïnstalleerd',
			'zap.error.no_lud16' => 'Geen bliksemadres gevonden',
			'profile.past_streams' => 'Afgelopen Streams',
			'settings.button_profile' => 'Profiel bewerken',
			'settings.button_wallet' => 'Portemonnee-instellingen',
			'settings.profile.display_name' => 'Naam weergeven',
			'settings.profile.about' => 'Over',
			'settings.profile.nip05' => 'Nostr Adres',
			'settings.profile.lud16' => 'Bliksemadres',
			'settings.profile.error.logged_out' => 'Kan profiel niet bewerken als ik ben uitgelogd',
			'settings.wallet.connect_wallet' => 'Portemonnee verbinden (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Portefeuille loskoppelen',
			'settings.wallet.connect_1tap' => '1-Tap Aansluiting',
			'settings.wallet.paste' => 'URL plakken',
			'settings.wallet.balance' => 'Saldo',
			'settings.wallet.name' => 'Portemonnee',
			'settings.wallet.error.logged_out' => 'Kan geen verbinding maken met portemonnee als ik ben uitgelogd',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Geen portemonnee-auth-gebeurtenis gevonden',
			'login.username' => 'Gebruikersnaam',
			'login.amber' => 'Inloggen met Amber',
			'login.key' => 'Inloggen met sleutel',
			'login.create' => 'Account aanmaken',
			'login.error.invalid_key' => 'Ongeldige sleutel',
			'live.start' => 'LIVE GAAN',
			'live.configure_stream' => 'Stream configureren',
			'live.endpoint' => 'Eindpunt',
			'live.accept_tos' => 'TOS accepteren',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Titel',
			'live.summary' => 'Samenvatting',
			'live.image' => 'Afbeelding omslag',
			'live.tags' => 'Tags',
			'live.nsfw' => 'NSFW-inhoud',
			'live.nsfw_description' => 'Controleer hier of deze stream naaktheid of pornografische inhoud bevat.',
			'live.error.failed' => 'Stream mislukt',
			'live.error.connection_error' => 'Fout bij verbinding',
			'live.error.start_failed' => 'Stream start mislukt, controleer uw saldo',
			_ => null,
		};
	}
}
