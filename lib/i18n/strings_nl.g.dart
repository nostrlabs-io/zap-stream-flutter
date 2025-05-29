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
class TranslationsNl extends Translations {
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

	/// Aantal kijkers van de stream
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '1 kijker',
		other: '${NumberFormat.decimalPattern('nl').format(n)} kijkers',
	);

	@override late final _TranslationsStreamNl stream = _TranslationsStreamNl._(_root);
	@override late final _TranslationsGoalNl goal = _TranslationsGoalNl._(_root);
	@override late final _TranslationsButtonNl button = _TranslationsButtonNl._(_root);
	@override late final _TranslationsEmbedNl embed = _TranslationsEmbedNl._(_root);

	/// Rubrieken op streamlijsten per streamtype live/beëindigd/gepland etc.
	@override late final _TranslationsStreamListNl stream_list = _TranslationsStreamListNl._(_root);

	@override late final _TranslationsZapNl zap = _TranslationsZapNl._(_root);
	@override late final _TranslationsProfileNl profile = _TranslationsProfileNl._(_root);
	@override late final _TranslationsSettingsNl settings = _TranslationsSettingsNl._(_root);
	@override late final _TranslationsLoginNl login = _TranslationsLoginNl._(_root);
}

// Path: stream
class _TranslationsStreamNl extends TranslationsStreamEn {
	_TranslationsStreamNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusNl status = _TranslationsStreamStatusNl._(_root);
	@override String started({required Object timestamp}) => 'Begonnen met ${timestamp}';
	@override String notification({required Object name}) => '${name} ging live!';
	@override late final _TranslationsStreamChatNl chat = _TranslationsStreamChatNl._(_root);
}

// Path: goal
class _TranslationsGoalNl extends TranslationsGoalEn {
	_TranslationsGoalNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Doel: ${amount}';
	@override String remaining({required Object amount}) => 'Overblijvend: ${amount}';
	@override String get complete => 'COMPLETE';
}

// Path: button
class _TranslationsButtonNl extends TranslationsButtonEn {
	_TranslationsButtonNl._(TranslationsNl root) : this._root = root, super.internal(root);

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
class _TranslationsEmbedNl extends TranslationsEmbedEn {
	_TranslationsEmbedNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artikel door ${name}';
	@override String note_by({required Object name}) => 'Opmerking door ${name}';
	@override String live_stream_by({required Object name}) => 'Live stream via ${name}';
}

// Path: stream_list
class _TranslationsStreamListNl extends TranslationsStreamListEn {
	_TranslationsStreamListNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get following => 'Volgt';
	@override String get live => 'Live';
	@override String get planned => 'Gepland';
	@override String get ended => 'Beëindigd';
}

// Path: zap
class _TranslationsZapNl extends TranslationsZapEn {
	_TranslationsZapNl._(TranslationsNl root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsZapErrorNl error = _TranslationsZapErrorNl._(_root);
}

// Path: profile
class _TranslationsProfileNl extends TranslationsProfileEn {
	_TranslationsProfileNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Afgelopen Streams';
}

// Path: settings
class _TranslationsSettingsNl extends TranslationsSettingsEn {
	_TranslationsSettingsNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Profiel bewerken';
	@override String get button_wallet => 'Portemonnee-instellingen';
	@override late final _TranslationsSettingsProfileNl profile = _TranslationsSettingsProfileNl._(_root);
	@override late final _TranslationsSettingsWalletNl wallet = _TranslationsSettingsWalletNl._(_root);
}

// Path: login
class _TranslationsLoginNl extends TranslationsLoginEn {
	_TranslationsLoginNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get username => 'Gebruikersnaam';
	@override String get amber => 'Inloggen met Amber';
	@override String get key => 'Inloggen met sleutel';
	@override String get create => 'Account aanmaken';
	@override late final _TranslationsLoginErrorNl error = _TranslationsLoginErrorNl._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusNl extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'GESLOTEN';
	@override String get planned => 'GEPLAND';
}

// Path: stream.chat
class _TranslationsStreamChatNl extends TranslationsStreamChatEn {
	_TranslationsStreamChatNl._(TranslationsNl root) : this._root = root, super.internal(root);

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

	@override late final _TranslationsStreamChatWriteNl write = _TranslationsStreamChatWriteNl._(_root);
	@override late final _TranslationsStreamChatBadgeNl badge = _TranslationsStreamChatBadgeNl._(_root);
	@override late final _TranslationsStreamChatRaidNl raid = _TranslationsStreamChatRaidNl._(_root);
}

// Path: zap.error
class _TranslationsZapErrorNl extends TranslationsZapErrorEn {
	_TranslationsZapErrorNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Ongeldig aangepast bedrag';
	@override String get no_wallet => 'Geen bliksemportemonnee geïnstalleerd';
	@override String get no_lud16 => 'Geen bliksemadres gevonden';
}

// Path: settings.profile
class _TranslationsSettingsProfileNl extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfileNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Naam weergeven';
	@override String get about => 'Over';
	@override String get nip05 => 'Nostr Adres';
	@override String get lud16 => 'Bliksemadres';
	@override late final _TranslationsSettingsProfileErrorNl error = _TranslationsSettingsProfileErrorNl._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletNl extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Portemonnee verbinden (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Portefeuille loskoppelen';
	@override String get connect_1tap => '1-Tap Aansluiting';
	@override String get paste => 'URL plakken';
	@override late final _TranslationsSettingsWalletErrorNl error = _TranslationsSettingsWalletErrorNl._(_root);
}

// Path: login.error
class _TranslationsLoginErrorNl extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Ongeldige sleutel';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteNl extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteNl._(TranslationsNl root) : this._root = root, super.internal(root);

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
class _TranslationsStreamChatBadgeNl extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations

	/// Kop boven de lijst met gebruikers die een badge hebben gekregen
	@override String get awarded_to => 'Toegekend aan:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidNl extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidNl._(TranslationsNl root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsProfileErrorNl extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan profiel niet bewerken als ik ben uitgelogd';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorNl extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorNl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan geen verbinding maken met portemonnee als ik ben uitgelogd';
	@override String get nwc_auth_event_not_found => 'Geen portemonnee-auth-gebeurtenis gevonden';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsNl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Avatar uploaden';
			case 'most_zapped_streamers': return 'Meeste Zapped Streamers';
			case 'no_user_found': return 'Geen gebruiker gevonden';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
				one: '1 kijker',
				other: '${NumberFormat.decimalPattern('nl').format(n)} kijkers',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'GESLOTEN';
			case 'stream.status.planned': return 'GEPLAND';
			case 'stream.started': return ({required Object timestamp}) => 'Begonnen met ${timestamp}';
			case 'stream.notification': return ({required Object name}) => '${name} ging live!';
			case 'stream.chat.disabled': return 'CHAT UITGESCHAKELD';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Time-out loopt af: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' timed out '),
				user,
				const TextSpan(text: ' voor '),
				time,
			]);
			case 'stream.chat.ended': return 'STREAM BEËINDIGD';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Schrijf bericht';
			case 'stream.chat.write.no_signer': return 'Kan geen berichten schrijven met npub login';
			case 'stream.chat.write.login': return 'Log in om berichten te verzenden';
			case 'stream.chat.badge.awarded_to': return 'Toegekend aan:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID VAN ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Overvallen in ${time}';
			case 'goal.title': return ({required Object amount}) => 'Doel: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Overblijvend: ${amount}';
			case 'goal.complete': return 'COMPLETE';
			case 'button.login': return 'Inloggen';
			case 'button.logout': return 'Uitloggen';
			case 'button.edit_profile': return 'Bewerk Profiel';
			case 'button.follow': return 'Volgen';
			case 'button.unfollow': return 'Ontvolgen';
			case 'button.mute': return 'Dempen';
			case 'button.unmute': return 'Niet langer negeren';
			case 'button.share': return 'Deel';
			case 'button.save': return 'Opslaan';
			case 'button.connect': return 'Maak verbinding met';
			case 'button.settings': return 'Instellingen';
			case 'embed.article_by': return ({required Object name}) => 'Artikel door ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Opmerking door ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Live stream via ${name}';
			case 'stream_list.following': return 'Volgt';
			case 'stream_list.live': return 'Live';
			case 'stream_list.planned': return 'Gepland';
			case 'stream_list.ended': return 'Beëindigd';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Aangepast bedrag';
			case 'zap.confirm': return 'Bevestig';
			case 'zap.comment': return 'Opmerking';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Openen in portefeuille';
			case 'zap.button_connect_wallet': return 'Portemonnee aansluiten';
			case 'zap.copy': return 'Gekopieerd naar klembord';
			case 'zap.error.invalid_custom_amount': return 'Ongeldig aangepast bedrag';
			case 'zap.error.no_wallet': return 'Geen bliksemportemonnee geïnstalleerd';
			case 'zap.error.no_lud16': return 'Geen bliksemadres gevonden';
			case 'profile.past_streams': return 'Afgelopen Streams';
			case 'settings.button_profile': return 'Profiel bewerken';
			case 'settings.button_wallet': return 'Portemonnee-instellingen';
			case 'settings.profile.display_name': return 'Naam weergeven';
			case 'settings.profile.about': return 'Over';
			case 'settings.profile.nip05': return 'Nostr Adres';
			case 'settings.profile.lud16': return 'Bliksemadres';
			case 'settings.profile.error.logged_out': return 'Kan profiel niet bewerken als ik ben uitgelogd';
			case 'settings.wallet.connect_wallet': return 'Portemonnee verbinden (NWC nostr+walletconnect://)';
			case 'settings.wallet.disconnect_wallet': return 'Portefeuille loskoppelen';
			case 'settings.wallet.connect_1tap': return '1-Tap Aansluiting';
			case 'settings.wallet.paste': return 'URL plakken';
			case 'settings.wallet.error.logged_out': return 'Kan geen verbinding maken met portemonnee als ik ben uitgelogd';
			case 'settings.wallet.error.nwc_auth_event_not_found': return 'Geen portemonnee-auth-gebeurtenis gevonden';
			case 'login.username': return 'Gebruikersnaam';
			case 'login.amber': return 'Inloggen met Amber';
			case 'login.key': return 'Inloggen met sleutel';
			case 'login.create': return 'Account aanmaken';
			case 'login.error.invalid_key': return 'Ongeldige sleutel';
			default: return null;
		}
	}
}

