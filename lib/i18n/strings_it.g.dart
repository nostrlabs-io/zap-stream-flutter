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
class TranslationsIt implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations

	/// Testo che richiede all'utente di premere il segnaposto dell'avatar per iniziare il caricamento
	@override String get upload_avatar => 'Carica Avatar';

	/// Direzione sopra elencata top streamers da zaps
	@override String get most_zapped_streamers => 'Il maggior numero di streamer bloccati';

	/// Nessun utente trovato durante la ricerca
	@override String get no_user_found => 'Nessun utente trovato';

	/// Un utente anonimo
	@override String get anon => 'Anonimo';

	/// Numero di spettatori del flusso
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '1 spettatore',
		other: '${n} spettatori',
	);

	@override late final _TranslationsStreamIt stream = _TranslationsStreamIt._(_root);
	@override late final _TranslationsGoalIt goal = _TranslationsGoalIt._(_root);
	@override late final _TranslationsButtonIt button = _TranslationsButtonIt._(_root);
	@override late final _TranslationsEmbedIt embed = _TranslationsEmbedIt._(_root);

	/// Titoli sugli elenchi dei flussi per tipo di flusso live/finito/pianificato ecc.
	@override late final _TranslationsStreamListIt stream_list = _TranslationsStreamListIt._(_root);

	@override late final _TranslationsZapIt zap = _TranslationsZapIt._(_root);
	@override late final _TranslationsProfileIt profile = _TranslationsProfileIt._(_root);
	@override late final _TranslationsLoginIt login = _TranslationsLoginIt._(_root);
}

// Path: stream
class _TranslationsStreamIt implements TranslationsStreamEn {
	_TranslationsStreamIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusIt status = _TranslationsStreamStatusIt._(_root);
	@override String started({ required Object timestamp}) => 'Avviato ${timestamp}';
	@override late final _TranslationsStreamChatIt chat = _TranslationsStreamChatIt._(_root);
}

// Path: goal
class _TranslationsGoalIt implements TranslationsGoalEn {
	_TranslationsGoalIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Obiettivo: ${amount}';
	@override String remaining({ required Object amount}) => 'Restante: ${amount}';
	@override String get complete => 'COMPLETO';
}

// Path: button
class _TranslationsButtonIt implements TranslationsButtonEn {
	_TranslationsButtonIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations

	/// Testo del pulsante per il pulsante di accesso
	@override String get login => 'Login';

	@override String get logout => 'Logout';
	@override String get edit_profile => 'Modifica profilo';

	/// Testo del pulsante per il pulsante Segui
	@override String get follow => 'Segui';

	/// Testo del pulsante per il pulsante unfollow
	@override String get unfollow => 'Smetti di seguire';

	@override String get mute => 'Silenzia';
	@override String get unmute => 'Riattiva';
	@override String get share => 'Condividi';
	@override String get save => 'Salva';
}

// Path: embed
class _TranslationsEmbedIt implements TranslationsEmbedEn {
	_TranslationsEmbedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Articolo di ${name}';
	@override String note_by({ required Object name}) => 'Nota di ${name}';
	@override String live_stream_by({ required Object name}) => 'Streaming in diretta da ${name}';
}

// Path: stream_list
class _TranslationsStreamListIt implements TranslationsStreamListEn {
	_TranslationsStreamListIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get following => 'Seguiti';
	@override String get live => 'Dal vivo';
	@override String get planned => 'Pianificato';
	@override String get ended => 'Terminato';
}

// Path: zap
class _TranslationsZapIt implements TranslationsZapEn {
	_TranslationsZapIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Importo personalizzato';
	@override String get confirm => 'Conferma';
	@override String get comment => 'Commenta';
	@override String button_zap_ready({ required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Aprire nel portafoglio';
	@override String get copy => 'Copiato negli appunti';
	@override late final _TranslationsZapErrorIt error = _TranslationsZapErrorIt._(_root);
}

// Path: profile
class _TranslationsProfileIt implements TranslationsProfileEn {
	_TranslationsProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Flussi passati';
	@override late final _TranslationsProfileEditIt edit = _TranslationsProfileEditIt._(_root);
}

// Path: login
class _TranslationsLoginIt implements TranslationsLoginEn {
	_TranslationsLoginIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nome utente';
	@override String get amber => 'Accesso con Amber';
	@override String get key => 'Accesso con chiave';
	@override String get create => 'Crea un account';
	@override late final _TranslationsLoginErrorIt error = _TranslationsLoginErrorIt._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusIt implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get live => 'IN DIRETTA';
	@override String get ended => 'FINE';
	@override String get planned => 'PREVISTO';
}

// Path: stream.chat
class _TranslationsStreamChatIt implements TranslationsStreamChatEn {
	_TranslationsStreamChatIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DISABILITATA';
	@override String disabled_timeout({ required Object time}) => 'Il timeout scade: ${time}';

	/// Messaggio di chat che mostra gli eventi di timeout
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' time out '),
		user,
		const TextSpan(text: ' per '),
		time,
	], style: style, recognizer: recognizer);

	/// Il flusso si è concluso con un piè di pagina in fondo alla chat
	@override String get ended => 'STREAM ENDED';

	/// Messaggio di chat che mostra gli zap del flusso
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' ha effettuato uno zap di '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteIt write = _TranslationsStreamChatWriteIt._(_root);
	@override late final _TranslationsStreamChatBadgeIt badge = _TranslationsStreamChatBadgeIt._(_root);
	@override late final _TranslationsStreamChatRaidIt raid = _TranslationsStreamChatRaidIt._(_root);
}

// Path: zap.error
class _TranslationsZapErrorIt implements TranslationsZapErrorEn {
	_TranslationsZapErrorIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Importo personalizzato non valido';
	@override String get no_wallet => 'Nessun portafoglio Lightning installato';
	@override String get no_lud16 => 'Nessun indirizzo di fulmine trovato';
}

// Path: profile.edit
class _TranslationsProfileEditIt implements TranslationsProfileEditEn {
	_TranslationsProfileEditIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nome visualizzato';
	@override String get about => 'Info';
	@override String get nip05 => 'Indirizzo Nostr';
	@override String get lud16 => 'Indirizzo del fulmine';
	@override late final _TranslationsProfileEditErrorIt error = _TranslationsProfileEditErrorIt._(_root);
}

// Path: login.error
class _TranslationsLoginErrorIt implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Chiave non valida';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteIt implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations

	/// Etichetta della casella di immissione del messaggio di chat
	@override String get label => 'Scrivi il messaggio';

	/// Messaggio di ingresso alla chat mostrato quando l'utente è connesso solo con la pubkey
	@override String get no_signer => 'Impossibile scrivere messaggi con il login npub';

	/// Messaggio di input della chat mostrato quando l'utente è disconnesso
	@override String get login => 'Effettuare il login per inviare messaggi';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeIt implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations

	/// Intestazione dell'elenco degli utenti a cui è stato assegnato un badge
	@override String get awarded_to => 'Assegnato a:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidIt implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations

	/// Messaggio di chat raid in un altro flusso
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Messaggio di chat raid da un altro flusso
	@override String from({ required Object name}) => 'RAID DA ${name}';

	/// Timer per il conto alla rovescia per l'auto-raid
	@override String countdown({ required Object time}) => 'Raid in ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorIt implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Impossibile modificare il profilo quando si è disconnessi';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Carica Avatar';
			case 'most_zapped_streamers': return 'Il maggior numero di streamer bloccati';
			case 'no_user_found': return 'Nessun utente trovato';
			case 'anon': return 'Anonimo';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
				one: '1 spettatore',
				other: '${n} spettatori',
			);
			case 'stream.status.live': return 'IN DIRETTA';
			case 'stream.status.ended': return 'FINE';
			case 'stream.status.planned': return 'PREVISTO';
			case 'stream.started': return ({ required Object timestamp}) => 'Avviato ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT DISABILITATA';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Il timeout scade: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' time out '),
				user,
				const TextSpan(text: ' per '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'STREAM ENDED';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' ha effettuato uno zap di '),
				amount,
				const TextSpan(text: ' sats'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Scrivi il messaggio';
			case 'stream.chat.write.no_signer': return 'Impossibile scrivere messaggi con il login npub';
			case 'stream.chat.write.login': return 'Effettuare il login per inviare messaggi';
			case 'stream.chat.badge.awarded_to': return 'Assegnato a:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID DA ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Raid in ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Obiettivo: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Restante: ${amount}';
			case 'goal.complete': return 'COMPLETO';
			case 'button.login': return 'Login';
			case 'button.logout': return 'Logout';
			case 'button.edit_profile': return 'Modifica profilo';
			case 'button.follow': return 'Segui';
			case 'button.unfollow': return 'Smetti di seguire';
			case 'button.mute': return 'Silenzia';
			case 'button.unmute': return 'Riattiva';
			case 'button.share': return 'Condividi';
			case 'button.save': return 'Salva';
			case 'embed.article_by': return ({ required Object name}) => 'Articolo di ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Nota di ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Streaming in diretta da ${name}';
			case 'stream_list.following': return 'Seguiti';
			case 'stream_list.live': return 'Dal vivo';
			case 'stream_list.planned': return 'Pianificato';
			case 'stream_list.ended': return 'Terminato';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Importo personalizzato';
			case 'zap.confirm': return 'Conferma';
			case 'zap.comment': return 'Commenta';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Aprire nel portafoglio';
			case 'zap.copy': return 'Copiato negli appunti';
			case 'zap.error.invalid_custom_amount': return 'Importo personalizzato non valido';
			case 'zap.error.no_wallet': return 'Nessun portafoglio Lightning installato';
			case 'zap.error.no_lud16': return 'Nessun indirizzo di fulmine trovato';
			case 'profile.past_streams': return 'Flussi passati';
			case 'profile.edit.display_name': return 'Nome visualizzato';
			case 'profile.edit.about': return 'Info';
			case 'profile.edit.nip05': return 'Indirizzo Nostr';
			case 'profile.edit.lud16': return 'Indirizzo del fulmine';
			case 'profile.edit.error.logged_out': return 'Impossibile modificare il profilo quando si è disconnessi';
			case 'login.username': return 'Nome utente';
			case 'login.amber': return 'Accesso con Amber';
			case 'login.key': return 'Accesso con chiave';
			case 'login.create': return 'Crea un account';
			case 'login.error.invalid_key': return 'Chiave non valida';
			default: return null;
		}
	}
}

