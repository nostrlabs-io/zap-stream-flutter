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
class TranslationsRo implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ro,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ro>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRo _root = this; // ignore: unused_field

	@override 
	TranslationsRo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRo(meta: meta ?? this.$meta);

	// Translations

	/// Text care solicită utilizatorului să atingă marcajul avatar pentru a începe încărcarea
	@override String get upload_avatar => 'Încărcați Avatar';

	/// Cap peste streamers de top enumerate de zaps
	@override String get most_zapped_streamers => 'Cele mai multe Streamers Zapped';

	/// Nu s-a găsit niciun utilizator la căutare
	@override String get no_user_found => 'Niciun utilizator găsit';

	/// Un utilizator anonim
	@override String get anon => 'Anon';

	/// Numărul de telespectatori ai fluxului
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '1 vizualizator',
		other: '${n} telespectatori',
	);

	@override late final _TranslationsStreamRo stream = _TranslationsStreamRo._(_root);
	@override late final _TranslationsGoalRo goal = _TranslationsGoalRo._(_root);
	@override late final _TranslationsButtonRo button = _TranslationsButtonRo._(_root);
	@override late final _TranslationsEmbedRo embed = _TranslationsEmbedRo._(_root);

	/// Rubrici pe listele de fluxuri în funcție de tipul fluxului în direct/terminat/planificat etc.
	@override late final _TranslationsStreamListRo stream_list = _TranslationsStreamListRo._(_root);

	@override late final _TranslationsZapRo zap = _TranslationsZapRo._(_root);
	@override late final _TranslationsProfileRo profile = _TranslationsProfileRo._(_root);
	@override late final _TranslationsLoginRo login = _TranslationsLoginRo._(_root);
}

// Path: stream
class _TranslationsStreamRo implements TranslationsStreamEn {
	_TranslationsStreamRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusRo status = _TranslationsStreamStatusRo._(_root);
	@override String started({ required Object timestamp}) => 'A început ${timestamp}';
	@override late final _TranslationsStreamChatRo chat = _TranslationsStreamChatRo._(_root);
}

// Path: goal
class _TranslationsGoalRo implements TranslationsGoalEn {
	_TranslationsGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Obiectiv: ${amount}';
	@override String remaining({ required Object amount}) => 'Rămase: ${amount}';
	@override String get complete => 'COMPLET';
}

// Path: button
class _TranslationsButtonRo implements TranslationsButtonEn {
	_TranslationsButtonRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations

	/// Textul butonului pentru butonul de conectare
	@override String get login => 'Autentificare';

	@override String get logout => 'Ieșire';
	@override String get edit_profile => 'Editare profil';

	/// Textul butonului pentru butonul de urmărire
	@override String get follow => 'Urmați';

	/// Textul butonului pentru butonul unfollow
	@override String get unfollow => 'Unfollow';

	@override String get mute => 'Mut';
	@override String get unmute => 'Dezactivați';
	@override String get share => 'Share';
	@override String get save => 'Salvați';
}

// Path: embed
class _TranslationsEmbedRo implements TranslationsEmbedEn {
	_TranslationsEmbedRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Articol de ${name}';
	@override String note_by({ required Object name}) => 'Notă de la ${name}';
	@override String live_stream_by({ required Object name}) => 'Transmisiune live prin ${name}';
}

// Path: stream_list
class _TranslationsStreamListRo implements TranslationsStreamListEn {
	_TranslationsStreamListRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get following => 'În urma';
	@override String get live => 'În direct';
	@override String get planned => 'Planificate';
	@override String get ended => 'Încheiat';
}

// Path: zap
class _TranslationsZapRo implements TranslationsZapEn {
	_TranslationsZapRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Sumă personalizată';
	@override String get confirm => 'Confirmați';
	@override String get comment => 'Comentariu';
	@override String button_zap_ready({ required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Deschide în portofel';
	@override String get copy => 'Copiat în clipboard';
	@override late final _TranslationsZapErrorRo error = _TranslationsZapErrorRo._(_root);
}

// Path: profile
class _TranslationsProfileRo implements TranslationsProfileEn {
	_TranslationsProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Fluxuri trecute';
	@override late final _TranslationsProfileEditRo edit = _TranslationsProfileEditRo._(_root);
}

// Path: login
class _TranslationsLoginRo implements TranslationsLoginEn {
	_TranslationsLoginRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nume utilizator';
	@override String get amber => 'Conectați-vă cu Amber';
	@override String get key => 'Autentificare cu cheie';
	@override String get create => 'Creare cont';
	@override late final _TranslationsLoginErrorRo error = _TranslationsLoginErrorRo._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusRo implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get live => 'ÎN DIRECT';
	@override String get ended => 'TERMINAT';
	@override String get planned => 'PLANIFICATE';
}

// Path: stream.chat
class _TranslationsStreamChatRo implements TranslationsStreamChatEn {
	_TranslationsStreamChatRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DEZACTIVAT';
	@override String disabled_timeout({ required Object time}) => 'Timpul expiră: ${time}';

	/// Mesaj de chat care afișează evenimentele de timeout
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' Timed out '),
		user,
		const TextSpan(text: ' pentru '),
		time,
	], style: style, recognizer: recognizer);

	/// Stream a încheiat footer-ul în partea de jos a chat-ului
	@override String get ended => 'STREAM ÎNCHEIAT';

	/// Mesaj de chat care arată zapsuri de flux
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteRo write = _TranslationsStreamChatWriteRo._(_root);
	@override late final _TranslationsStreamChatBadgeRo badge = _TranslationsStreamChatBadgeRo._(_root);
	@override late final _TranslationsStreamChatRaidRo raid = _TranslationsStreamChatRaidRo._(_root);
}

// Path: zap.error
class _TranslationsZapErrorRo implements TranslationsZapErrorEn {
	_TranslationsZapErrorRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Sumă personalizată invalidă';
	@override String get no_wallet => 'Nu este instalat niciun portofel Lightning';
	@override String get no_lud16 => 'Nu a fost găsită nicio adresă de fulgere';
}

// Path: profile.edit
class _TranslationsProfileEditRo implements TranslationsProfileEditEn {
	_TranslationsProfileEditRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nume afișat';
	@override String get about => 'Despre';
	@override String get nip05 => 'Adresa Nostr';
	@override String get lud16 => 'Adresa fulgerului';
	@override late final _TranslationsProfileEditErrorRo error = _TranslationsProfileEditErrorRo._(_root);
}

// Path: login.error
class _TranslationsLoginErrorRo implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Cheie invalidă';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteRo implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations

	/// Etichetă pe caseta de introducere a mesajului de chat
	@override String get label => 'Scrieți mesajul';

	/// Mesajul de intrare în chat afișat atunci când utilizatorul este conectat doar cu pubkey
	@override String get no_signer => 'Nu se pot scrie mesaje cu autentificarea npub';

	/// Mesajul de intrare în chat afișat atunci când utilizatorul este deconectat
	@override String get login => 'Vă rugăm să vă autentificați pentru a trimite mesaje';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeRo implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations

	/// Antet peste lista de utilizatori care au primit o insignă
	@override String get awarded_to => 'Premiat pentru:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidRo implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations

	/// Chat mesaj raid la un alt flux
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Chat raid mesaj din alt flux
	@override String from({ required Object name}) => 'RAID DE LA ${name}';

	/// Cronometru cu numărătoare inversă pentru auto-raid
	@override String countdown({ required Object time}) => 'Raiduri în ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorRo implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nu pot edita profilul când sunt deconectat';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsRo {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Încărcați Avatar';
			case 'most_zapped_streamers': return 'Cele mai multe Streamers Zapped';
			case 'no_user_found': return 'Niciun utilizator găsit';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
				one: '1 vizualizator',
				other: '${n} telespectatori',
			);
			case 'stream.status.live': return 'ÎN DIRECT';
			case 'stream.status.ended': return 'TERMINAT';
			case 'stream.status.planned': return 'PLANIFICATE';
			case 'stream.started': return ({ required Object timestamp}) => 'A început ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT DEZACTIVAT';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Timpul expiră: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' Timed out '),
				user,
				const TextSpan(text: ' pentru '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'STREAM ÎNCHEIAT';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Scrieți mesajul';
			case 'stream.chat.write.no_signer': return 'Nu se pot scrie mesaje cu autentificarea npub';
			case 'stream.chat.write.login': return 'Vă rugăm să vă autentificați pentru a trimite mesaje';
			case 'stream.chat.badge.awarded_to': return 'Premiat pentru:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID DE LA ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Raiduri în ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Obiectiv: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Rămase: ${amount}';
			case 'goal.complete': return 'COMPLET';
			case 'button.login': return 'Autentificare';
			case 'button.logout': return 'Ieșire';
			case 'button.edit_profile': return 'Editare profil';
			case 'button.follow': return 'Urmați';
			case 'button.unfollow': return 'Unfollow';
			case 'button.mute': return 'Mut';
			case 'button.unmute': return 'Dezactivați';
			case 'button.share': return 'Share';
			case 'button.save': return 'Salvați';
			case 'embed.article_by': return ({ required Object name}) => 'Articol de ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Notă de la ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Transmisiune live prin ${name}';
			case 'stream_list.following': return 'În urma';
			case 'stream_list.live': return 'În direct';
			case 'stream_list.planned': return 'Planificate';
			case 'stream_list.ended': return 'Încheiat';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Sumă personalizată';
			case 'zap.confirm': return 'Confirmați';
			case 'zap.comment': return 'Comentariu';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Deschide în portofel';
			case 'zap.copy': return 'Copiat în clipboard';
			case 'zap.error.invalid_custom_amount': return 'Sumă personalizată invalidă';
			case 'zap.error.no_wallet': return 'Nu este instalat niciun portofel Lightning';
			case 'zap.error.no_lud16': return 'Nu a fost găsită nicio adresă de fulgere';
			case 'profile.past_streams': return 'Fluxuri trecute';
			case 'profile.edit.display_name': return 'Nume afișat';
			case 'profile.edit.about': return 'Despre';
			case 'profile.edit.nip05': return 'Adresa Nostr';
			case 'profile.edit.lud16': return 'Adresa fulgerului';
			case 'profile.edit.error.logged_out': return 'Nu pot edita profilul când sunt deconectat';
			case 'login.username': return 'Nume utilizator';
			case 'login.amber': return 'Conectați-vă cu Amber';
			case 'login.key': return 'Autentificare cu cheie';
			case 'login.create': return 'Creare cont';
			case 'login.error.invalid_key': return 'Cheie invalidă';
			default: return null;
		}
	}
}

