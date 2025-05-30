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
class TranslationsIt extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('it').format(n)} sats';

	/// Numero di spettatori del flusso
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '1 spettatore',
		other: '${NumberFormat.decimalPattern('it').format(n)} spettatori',
	);

	@override late final _TranslationsStreamIt stream = _TranslationsStreamIt._(_root);
	@override late final _TranslationsGoalIt goal = _TranslationsGoalIt._(_root);
	@override late final _TranslationsButtonIt button = _TranslationsButtonIt._(_root);
	@override late final _TranslationsEmbedIt embed = _TranslationsEmbedIt._(_root);

	/// Titoli sugli elenchi dei flussi per tipo di flusso live/finito/pianificato ecc.
	@override late final _TranslationsStreamListIt stream_list = _TranslationsStreamListIt._(_root);

	@override late final _TranslationsZapIt zap = _TranslationsZapIt._(_root);
	@override late final _TranslationsProfileIt profile = _TranslationsProfileIt._(_root);
	@override late final _TranslationsSettingsIt settings = _TranslationsSettingsIt._(_root);
	@override late final _TranslationsLoginIt login = _TranslationsLoginIt._(_root);
	@override late final _TranslationsLiveIt live = _TranslationsLiveIt._(_root);
}

// Path: stream
class _TranslationsStreamIt extends TranslationsStreamEn {
	_TranslationsStreamIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusIt status = _TranslationsStreamStatusIt._(_root);
	@override String started({required Object timestamp}) => 'Avviato ${timestamp}';
	@override String notification({required Object name}) => '${name} è andato in onda!';
	@override late final _TranslationsStreamChatIt chat = _TranslationsStreamChatIt._(_root);
}

// Path: goal
class _TranslationsGoalIt extends TranslationsGoalEn {
	_TranslationsGoalIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Obiettivo: ${amount}';
	@override String remaining({required Object amount}) => 'Restante: ${amount}';
	@override String get complete => 'COMPLETO';
}

// Path: button
class _TranslationsButtonIt extends TranslationsButtonEn {
	_TranslationsButtonIt._(TranslationsIt root) : this._root = root, super.internal(root);

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
	@override String get connect => 'Collegare';
	@override String get settings => 'Impostazioni';
}

// Path: embed
class _TranslationsEmbedIt extends TranslationsEmbedEn {
	_TranslationsEmbedIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Articolo di ${name}';
	@override String note_by({required Object name}) => 'Nota di ${name}';
	@override String live_stream_by({required Object name}) => 'Streaming in diretta da ${name}';
}

// Path: stream_list
class _TranslationsStreamListIt extends TranslationsStreamListEn {
	_TranslationsStreamListIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get following => 'Seguiti';
	@override String get live => 'Dal vivo';
	@override String get planned => 'Pianificato';
	@override String get ended => 'Terminato';
}

// Path: zap
class _TranslationsZapIt extends TranslationsZapEn {
	_TranslationsZapIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Importo personalizzato';
	@override String get confirm => 'Conferma';
	@override String get comment => 'Commenta';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Aprire nel portafoglio';
	@override String get button_connect_wallet => 'Portafoglio Connect';
	@override String get copy => 'Copiato negli appunti';
	@override late final _TranslationsZapErrorIt error = _TranslationsZapErrorIt._(_root);
}

// Path: profile
class _TranslationsProfileIt extends TranslationsProfileEn {
	_TranslationsProfileIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Flussi passati';
}

// Path: settings
class _TranslationsSettingsIt extends TranslationsSettingsEn {
	_TranslationsSettingsIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Modifica profilo';
	@override String get button_wallet => 'Impostazioni del portafoglio';
	@override late final _TranslationsSettingsProfileIt profile = _TranslationsSettingsProfileIt._(_root);
	@override late final _TranslationsSettingsWalletIt wallet = _TranslationsSettingsWalletIt._(_root);
}

// Path: login
class _TranslationsLoginIt extends TranslationsLoginEn {
	_TranslationsLoginIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nome utente';
	@override String get amber => 'Accesso con Amber';
	@override String get key => 'Accesso con chiave';
	@override String get create => 'Crea un account';
	@override late final _TranslationsLoginErrorIt error = _TranslationsLoginErrorIt._(_root);
}

// Path: live
class _TranslationsLiveIt extends TranslationsLiveEn {
	_TranslationsLiveIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get start => 'VAI IN DIRETTA';
	@override String get configure_stream => 'Configurare il flusso';
	@override String get endpoint => 'Punto finale';
	@override String get accept_tos => 'Accettare i TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Titolo';
	@override String get summary => 'Sintesi';
	@override String get image => 'Immagine di copertina';
	@override String get tags => 'Tag';
	@override String get nsfw => 'Contenuto NSFW';
	@override String get nsfw_description => 'Controllare qui se questo streaming contiene nudità o contenuti pornografici.';
	@override late final _TranslationsLiveErrorIt error = _TranslationsLiveErrorIt._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusIt extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get live => 'IN DIRETTA';
	@override String get ended => 'FINE';
	@override String get planned => 'PREVISTO';
}

// Path: stream.chat
class _TranslationsStreamChatIt extends TranslationsStreamChatEn {
	_TranslationsStreamChatIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DISABILITATA';
	@override String disabled_timeout({required Object time}) => 'Il timeout scade: ${time}';

	/// Messaggio di chat che mostra gli eventi di timeout
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' time out '),
		user,
		const TextSpan(text: ' per '),
		time,
	]);

	/// Il flusso si è concluso con un piè di pagina in fondo alla chat
	@override String get ended => 'STREAM ENDED';

	/// Messaggio di chat che mostra gli zap del flusso
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' ha effettuato uno zap di '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _TranslationsStreamChatWriteIt write = _TranslationsStreamChatWriteIt._(_root);
	@override late final _TranslationsStreamChatBadgeIt badge = _TranslationsStreamChatBadgeIt._(_root);
	@override late final _TranslationsStreamChatRaidIt raid = _TranslationsStreamChatRaidIt._(_root);
}

// Path: zap.error
class _TranslationsZapErrorIt extends TranslationsZapErrorEn {
	_TranslationsZapErrorIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Importo personalizzato non valido';
	@override String get no_wallet => 'Nessun portafoglio Lightning installato';
	@override String get no_lud16 => 'Nessun indirizzo di fulmine trovato';
}

// Path: settings.profile
class _TranslationsSettingsProfileIt extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfileIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nome visualizzato';
	@override String get about => 'Circa';
	@override String get nip05 => 'Indirizzo';
	@override String get lud16 => 'Indirizzo del fulmine';
	@override late final _TranslationsSettingsProfileErrorIt error = _TranslationsSettingsProfileErrorIt._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletIt extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Portafoglio Connect (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Disconnettere il portafoglio';
	@override String get connect_1tap => 'Connessione a 1 rubinetto';
	@override String get paste => 'Incolla URL';
	@override String get balance => 'Equilibrio';
	@override String get name => 'Portafoglio';
	@override late final _TranslationsSettingsWalletErrorIt error = _TranslationsSettingsWalletErrorIt._(_root);
}

// Path: login.error
class _TranslationsLoginErrorIt extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Chiave non valida';
}

// Path: live.error
class _TranslationsLiveErrorIt extends TranslationsLiveErrorEn {
	_TranslationsLiveErrorIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Flusso fallito';
	@override String get connection_error => 'Errore di connessione';
	@override String get start_failed => 'Avvio del flusso fallito, controllare il saldo';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteIt extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteIt._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _TranslationsStreamChatBadgeIt extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations

	/// Intestazione dell'elenco degli utenti a cui è stato assegnato un badge
	@override String get awarded_to => 'Assegnato a:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidIt extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations

	/// Messaggio di chat raid in un altro flusso
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Messaggio di chat raid da un altro flusso
	@override String from({required Object name}) => 'RAID DA ${name}';

	/// Timer per il conto alla rovescia per l'auto-raid
	@override String countdown({required Object time}) => 'Raid in ${time}';
}

// Path: settings.profile.error
class _TranslationsSettingsProfileErrorIt extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Impossibile modificare il profilo quando si è disconnessi';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorIt extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Impossibile connettere il portafoglio quando si è disconnessi';
	@override String get nwc_auth_event_not_found => 'Nessun evento wallet auth trovato';
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
			case 'full_amount_sats': return ({required num n}) => '${NumberFormat.decimalPattern('it').format(n)} sats';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
				one: '1 spettatore',
				other: '${NumberFormat.decimalPattern('it').format(n)} spettatori',
			);
			case 'stream.status.live': return 'IN DIRETTA';
			case 'stream.status.ended': return 'FINE';
			case 'stream.status.planned': return 'PREVISTO';
			case 'stream.started': return ({required Object timestamp}) => 'Avviato ${timestamp}';
			case 'stream.notification': return ({required Object name}) => '${name} è andato in onda!';
			case 'stream.chat.disabled': return 'CHAT DISABILITATA';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Il timeout scade: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' time out '),
				user,
				const TextSpan(text: ' per '),
				time,
			]);
			case 'stream.chat.ended': return 'STREAM ENDED';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' ha effettuato uno zap di '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Scrivi il messaggio';
			case 'stream.chat.write.no_signer': return 'Impossibile scrivere messaggi con il login npub';
			case 'stream.chat.write.login': return 'Effettuare il login per inviare messaggi';
			case 'stream.chat.badge.awarded_to': return 'Assegnato a:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID DA ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Raid in ${time}';
			case 'goal.title': return ({required Object amount}) => 'Obiettivo: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Restante: ${amount}';
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
			case 'button.connect': return 'Collegare';
			case 'button.settings': return 'Impostazioni';
			case 'embed.article_by': return ({required Object name}) => 'Articolo di ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Nota di ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Streaming in diretta da ${name}';
			case 'stream_list.following': return 'Seguiti';
			case 'stream_list.live': return 'Dal vivo';
			case 'stream_list.planned': return 'Pianificato';
			case 'stream_list.ended': return 'Terminato';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Importo personalizzato';
			case 'zap.confirm': return 'Conferma';
			case 'zap.comment': return 'Commenta';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Aprire nel portafoglio';
			case 'zap.button_connect_wallet': return 'Portafoglio Connect';
			case 'zap.copy': return 'Copiato negli appunti';
			case 'zap.error.invalid_custom_amount': return 'Importo personalizzato non valido';
			case 'zap.error.no_wallet': return 'Nessun portafoglio Lightning installato';
			case 'zap.error.no_lud16': return 'Nessun indirizzo di fulmine trovato';
			case 'profile.past_streams': return 'Flussi passati';
			case 'settings.button_profile': return 'Modifica profilo';
			case 'settings.button_wallet': return 'Impostazioni del portafoglio';
			case 'settings.profile.display_name': return 'Nome visualizzato';
			case 'settings.profile.about': return 'Circa';
			case 'settings.profile.nip05': return 'Indirizzo';
			case 'settings.profile.lud16': return 'Indirizzo del fulmine';
			case 'settings.profile.error.logged_out': return 'Impossibile modificare il profilo quando si è disconnessi';
			case 'settings.wallet.connect_wallet': return 'Portafoglio Connect (NWC nostr+walletconnect://)';
			case 'settings.wallet.disconnect_wallet': return 'Disconnettere il portafoglio';
			case 'settings.wallet.connect_1tap': return 'Connessione a 1 rubinetto';
			case 'settings.wallet.paste': return 'Incolla URL';
			case 'settings.wallet.balance': return 'Equilibrio';
			case 'settings.wallet.name': return 'Portafoglio';
			case 'settings.wallet.error.logged_out': return 'Impossibile connettere il portafoglio quando si è disconnessi';
			case 'settings.wallet.error.nwc_auth_event_not_found': return 'Nessun evento wallet auth trovato';
			case 'login.username': return 'Nome utente';
			case 'login.amber': return 'Accesso con Amber';
			case 'login.key': return 'Accesso con chiave';
			case 'login.create': return 'Crea un account';
			case 'login.error.invalid_key': return 'Chiave non valida';
			case 'live.start': return 'VAI IN DIRETTA';
			case 'live.configure_stream': return 'Configurare il flusso';
			case 'live.endpoint': return 'Punto finale';
			case 'live.accept_tos': return 'Accettare i TOS';
			case 'live.balance_left': return ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
				zero: '∞',
				other: '~${time}',
			);
			case 'live.title': return 'Titolo';
			case 'live.summary': return 'Sintesi';
			case 'live.image': return 'Immagine di copertina';
			case 'live.tags': return 'Tag';
			case 'live.nsfw': return 'Contenuto NSFW';
			case 'live.nsfw_description': return 'Controllare qui se questo streaming contiene nudità o contenuti pornografici.';
			case 'live.error.failed': return 'Flusso fallito';
			case 'live.error.connection_error': return 'Errore di connessione';
			case 'live.error.start_failed': return 'Avvio del flusso fallito, controllare il saldo';
			default: return null;
		}
	}
}

