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
class TranslationsSv extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSv({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.sv,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sv>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsSv _root = this; // ignore: unused_field

	@override 
	TranslationsSv $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSv(meta: meta ?? this.$meta);

	// Translations

	/// Text som uppmanar användaren att trycka på avatarplatshållaren för att påbörja uppladdningen
	@override String get upload_avatar => 'Ladda upp avatar';

	/// Rubrik över listade toppstreamers av zaps
	@override String get most_zapped_streamers => 'De flesta zappade streamers';

	/// Ingen användare hittades vid sökning
	@override String get no_user_found => 'Ingen användare hittades';

	/// En anonym användare
	@override String get anon => 'Anon';

	/// Antal tittare på streamingen
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '1 tittare',
		other: '${n} tittare',
	);

	@override late final _TranslationsStreamSv stream = _TranslationsStreamSv._(_root);
	@override late final _TranslationsGoalSv goal = _TranslationsGoalSv._(_root);
	@override late final _TranslationsButtonSv button = _TranslationsButtonSv._(_root);
	@override late final _TranslationsEmbedSv embed = _TranslationsEmbedSv._(_root);

	/// Rubriker på strömlistor efter strömtyp live/avslutad/planerad etc.
	@override late final _TranslationsStreamListSv stream_list = _TranslationsStreamListSv._(_root);

	@override late final _TranslationsZapSv zap = _TranslationsZapSv._(_root);
	@override late final _TranslationsProfileSv profile = _TranslationsProfileSv._(_root);
	@override late final _TranslationsLoginSv login = _TranslationsLoginSv._(_root);
}

// Path: stream
class _TranslationsStreamSv extends TranslationsStreamEn {
	_TranslationsStreamSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusSv status = _TranslationsStreamStatusSv._(_root);
	@override String started({required Object timestamp}) => 'Startade ${timestamp}';
	@override late final _TranslationsStreamChatSv chat = _TranslationsStreamChatSv._(_root);
}

// Path: goal
class _TranslationsGoalSv extends TranslationsGoalEn {
	_TranslationsGoalSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Mål: ${amount}';
	@override String remaining({required Object amount}) => 'Kvarvarande: ${amount}';
	@override String get complete => 'KOMPLETT';
}

// Path: button
class _TranslationsButtonSv extends TranslationsButtonEn {
	_TranslationsButtonSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations

	/// Knapptext för inloggningsknappen
	@override String get login => 'Logga in';

	@override String get logout => 'Logga ut';
	@override String get edit_profile => 'Redigera profil';

	/// Knapptext för följ-knappen
	@override String get follow => 'Följ';

	/// Knapptext för avföljningsknappen
	@override String get unfollow => 'Sluta följa';

	@override String get mute => 'Tysta';
	@override String get unmute => 'Avtysta';
	@override String get share => 'Dela';
	@override String get save => 'Spara';
}

// Path: embed
class _TranslationsEmbedSv extends TranslationsEmbedEn {
	_TranslationsEmbedSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artikel av ${name}';
	@override String note_by({required Object name}) => 'Anteckning av ${name}';
	@override String live_stream_by({required Object name}) => 'Direktsändning via ${name}';
}

// Path: stream_list
class _TranslationsStreamListSv extends TranslationsStreamListEn {
	_TranslationsStreamListSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get following => 'Följer';
	@override String get live => 'Live';
	@override String get planned => 'Planerade';
	@override String get ended => 'Avslutade';
}

// Path: zap
class _TranslationsZapSv extends TranslationsZapEn {
	_TranslationsZapSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Anpassat belopp';
	@override String get confirm => 'Bekräfta';
	@override String get comment => 'Kommentar';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Öppna i plånboken';
	@override String get copy => 'Kopieras till urklipp';
	@override late final _TranslationsZapErrorSv error = _TranslationsZapErrorSv._(_root);
}

// Path: profile
class _TranslationsProfileSv extends TranslationsProfileEn {
	_TranslationsProfileSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Tidigare streamar';
	@override late final _TranslationsProfileEditSv edit = _TranslationsProfileEditSv._(_root);
}

// Path: login
class _TranslationsLoginSv extends TranslationsLoginEn {
	_TranslationsLoginSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get username => 'Användarnamn';
	@override String get amber => 'Logga in med Amber';
	@override String get key => 'Logga in med nyckel';
	@override String get create => 'Skapa konto';
	@override late final _TranslationsLoginErrorSv error = _TranslationsLoginErrorSv._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusSv extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'AVSLUTAD';
	@override String get planned => 'PLANERADE';
}

// Path: stream.chat
class _TranslationsStreamChatSv extends TranslationsStreamChatEn {
	_TranslationsStreamChatSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT AVSTÄNGD';
	@override String disabled_timeout({required Object time}) => 'Tidsgränsen går ut: ${time}';

	/// Chattmeddelande som visar timeout-händelser
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' tidsbegränsad '),
		user,
		const TextSpan(text: ' för '),
		time,
	]);

	/// Stream avslutade sidfoten längst ner på chatten
	@override String get ended => 'STREAM AVSLUTAD';

	/// Chattmeddelande som visar strömavbrott
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _TranslationsStreamChatWriteSv write = _TranslationsStreamChatWriteSv._(_root);
	@override late final _TranslationsStreamChatBadgeSv badge = _TranslationsStreamChatBadgeSv._(_root);
	@override late final _TranslationsStreamChatRaidSv raid = _TranslationsStreamChatRaidSv._(_root);
}

// Path: zap.error
class _TranslationsZapErrorSv extends TranslationsZapErrorEn {
	_TranslationsZapErrorSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Ogiltigt anpassat belopp';
	@override String get no_wallet => 'Ingen blixtplånbok installerad';
	@override String get no_lud16 => 'Ingen blixtadress hittades';
}

// Path: profile.edit
class _TranslationsProfileEditSv extends TranslationsProfileEditEn {
	_TranslationsProfileEditSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Visa namn';
	@override String get about => 'Om';
	@override String get nip05 => 'Nostr Adress';
	@override String get lud16 => 'Lightning-adress';
	@override late final _TranslationsProfileEditErrorSv error = _TranslationsProfileEditErrorSv._(_root);
}

// Path: login.error
class _TranslationsLoginErrorSv extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Ogiltig nyckel';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteSv extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations

	/// Etikett på inmatningsrutan för chattmeddelanden
	@override String get label => 'Skriv meddelande';

	/// Chattinmatningsmeddelande som visas när användaren endast är inloggad med pubkey
	@override String get no_signer => 'Det går inte att skriva meddelanden med npub-inloggning';

	/// Chattinmatningsmeddelande som visas när användaren är utloggad
	@override String get login => 'Logga in för att skicka meddelanden';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeSv extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations

	/// Rubrik över lista över användare som tilldelats en badge
	@override String get awarded_to => 'Tilldelas till:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidSv extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations

	/// Chatta raidmeddelande till en annan ström
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid-meddelande från en annan ström
	@override String from({required Object name}) => 'RAID FRÅN ${name}';

	/// Nedräkningstimer för auto-raiding
	@override String countdown({required Object time}) => 'Raiding på ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorSv extends TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorSv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Kan inte redigera profil när jag är utloggad';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsSv {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Ladda upp avatar';
			case 'most_zapped_streamers': return 'De flesta zappade streamers';
			case 'no_user_found': return 'Ingen användare hittades';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
				one: '1 tittare',
				other: '${n} tittare',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'AVSLUTAD';
			case 'stream.status.planned': return 'PLANERADE';
			case 'stream.started': return ({required Object timestamp}) => 'Startade ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT AVSTÄNGD';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Tidsgränsen går ut: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' tidsbegränsad '),
				user,
				const TextSpan(text: ' för '),
				time,
			]);
			case 'stream.chat.ended': return 'STREAM AVSLUTAD';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Skriv meddelande';
			case 'stream.chat.write.no_signer': return 'Det går inte att skriva meddelanden med npub-inloggning';
			case 'stream.chat.write.login': return 'Logga in för att skicka meddelanden';
			case 'stream.chat.badge.awarded_to': return 'Tilldelas till:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID FRÅN ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Raiding på ${time}';
			case 'goal.title': return ({required Object amount}) => 'Mål: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Kvarvarande: ${amount}';
			case 'goal.complete': return 'KOMPLETT';
			case 'button.login': return 'Logga in';
			case 'button.logout': return 'Logga ut';
			case 'button.edit_profile': return 'Redigera profil';
			case 'button.follow': return 'Följ';
			case 'button.unfollow': return 'Sluta följa';
			case 'button.mute': return 'Tysta';
			case 'button.unmute': return 'Avtysta';
			case 'button.share': return 'Dela';
			case 'button.save': return 'Spara';
			case 'embed.article_by': return ({required Object name}) => 'Artikel av ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Anteckning av ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Direktsändning via ${name}';
			case 'stream_list.following': return 'Följer';
			case 'stream_list.live': return 'Live';
			case 'stream_list.planned': return 'Planerade';
			case 'stream_list.ended': return 'Avslutade';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Anpassat belopp';
			case 'zap.confirm': return 'Bekräfta';
			case 'zap.comment': return 'Kommentar';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Öppna i plånboken';
			case 'zap.copy': return 'Kopieras till urklipp';
			case 'zap.error.invalid_custom_amount': return 'Ogiltigt anpassat belopp';
			case 'zap.error.no_wallet': return 'Ingen blixtplånbok installerad';
			case 'zap.error.no_lud16': return 'Ingen blixtadress hittades';
			case 'profile.past_streams': return 'Tidigare streamar';
			case 'profile.edit.display_name': return 'Visa namn';
			case 'profile.edit.about': return 'Om';
			case 'profile.edit.nip05': return 'Nostr Adress';
			case 'profile.edit.lud16': return 'Lightning-adress';
			case 'profile.edit.error.logged_out': return 'Kan inte redigera profil när jag är utloggad';
			case 'login.username': return 'Användarnamn';
			case 'login.amber': return 'Logga in med Amber';
			case 'login.key': return 'Logga in med nyckel';
			case 'login.create': return 'Skapa konto';
			case 'login.error.invalid_key': return 'Ogiltig nyckel';
			default: return null;
		}
	}
}

