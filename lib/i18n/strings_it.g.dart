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
class TranslationsIt extends Translations with BaseTranslations<AppLocale, Translations> {
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

	@override late final _Translations$stream$it stream = _Translations$stream$it._(_root);
	@override late final _Translations$goal$it goal = _Translations$goal$it._(_root);
	@override late final _Translations$button$it button = _Translations$button$it._(_root);
	@override late final _Translations$embed$it embed = _Translations$embed$it._(_root);

	/// Titoli sugli elenchi dei flussi per tipo di flusso live/finito/pianificato ecc.
	@override late final _Translations$stream_list$it stream_list = _Translations$stream_list$it._(_root);

	@override late final _Translations$zap$it zap = _Translations$zap$it._(_root);
	@override late final _Translations$profile$it profile = _Translations$profile$it._(_root);
	@override late final _Translations$settings$it settings = _Translations$settings$it._(_root);
	@override late final _Translations$login$it login = _Translations$login$it._(_root);
	@override late final _Translations$live$it live = _Translations$live$it._(_root);
}

// Path: stream
class _Translations$stream$it extends Translations$stream$en {
	_Translations$stream$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$it status = _Translations$stream$status$it._(_root);
	@override String started({required Object timestamp}) => 'Avviato ${timestamp}';
	@override String notification({required Object name}) => '${name} è andato in onda!';
	@override late final _Translations$stream$chat$it chat = _Translations$stream$chat$it._(_root);
}

// Path: goal
class _Translations$goal$it extends Translations$goal$en {
	_Translations$goal$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Obiettivo: ${amount}';
	@override String remaining({required Object amount}) => 'Restante: ${amount}';
	@override String get complete => 'COMPLETO';
}

// Path: button
class _Translations$button$it extends Translations$button$en {
	_Translations$button$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$embed$it extends Translations$embed$en {
	_Translations$embed$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Articolo di ${name}';
	@override String note_by({required Object name}) => 'Nota di ${name}';
	@override String live_stream_by({required Object name}) => 'Streaming in diretta da ${name}';
}

// Path: stream_list
class _Translations$stream_list$it extends Translations$stream_list$en {
	_Translations$stream_list$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get following => 'Seguiti';
	@override String get live => 'Dal vivo';
	@override String get planned => 'Pianificato';
	@override String get ended => 'Terminato';
}

// Path: zap
class _Translations$zap$it extends Translations$zap$en {
	_Translations$zap$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
	@override late final _Translations$zap$error$it error = _Translations$zap$error$it._(_root);
}

// Path: profile
class _Translations$profile$it extends Translations$profile$en {
	_Translations$profile$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Flussi passati';
}

// Path: settings
class _Translations$settings$it extends Translations$settings$en {
	_Translations$settings$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Modifica profilo';
	@override String get button_wallet => 'Impostazioni del portafoglio';
	@override late final _Translations$settings$profile$it profile = _Translations$settings$profile$it._(_root);
	@override late final _Translations$settings$wallet$it wallet = _Translations$settings$wallet$it._(_root);
}

// Path: login
class _Translations$login$it extends Translations$login$en {
	_Translations$login$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nome utente';
	@override String get amber => 'Accesso con Amber';
	@override String get key => 'Accesso con chiave';
	@override String get create => 'Crea un account';
	@override late final _Translations$login$error$it error = _Translations$login$error$it._(_root);
}

// Path: live
class _Translations$live$it extends Translations$live$en {
	_Translations$live$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
	@override late final _Translations$live$error$it error = _Translations$live$error$it._(_root);
}

// Path: stream.status
class _Translations$stream$status$it extends Translations$stream$status$en {
	_Translations$stream$status$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get live => 'IN DIRETTA';
	@override String get ended => 'FINE';
	@override String get planned => 'PREVISTO';
}

// Path: stream.chat
class _Translations$stream$chat$it extends Translations$stream$chat$en {
	_Translations$stream$chat$it._(TranslationsIt root) : this._root = root, super.internal(root);

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

	@override late final _Translations$stream$chat$write$it write = _Translations$stream$chat$write$it._(_root);
	@override late final _Translations$stream$chat$badge$it badge = _Translations$stream$chat$badge$it._(_root);
	@override late final _Translations$stream$chat$raid$it raid = _Translations$stream$chat$raid$it._(_root);
}

// Path: zap.error
class _Translations$zap$error$it extends Translations$zap$error$en {
	_Translations$zap$error$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Importo personalizzato non valido';
	@override String get no_wallet => 'Nessun portafoglio Lightning installato';
	@override String get no_lud16 => 'Nessun indirizzo di fulmine trovato';
}

// Path: settings.profile
class _Translations$settings$profile$it extends Translations$settings$profile$en {
	_Translations$settings$profile$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nome visualizzato';
	@override String get about => 'Circa';
	@override String get nip05 => 'Indirizzo';
	@override String get lud16 => 'Indirizzo del fulmine';
	@override late final _Translations$settings$profile$error$it error = _Translations$settings$profile$error$it._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$it extends Translations$settings$wallet$en {
	_Translations$settings$wallet$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Portafoglio Connect (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Disconnettere il portafoglio';
	@override String get connect_1tap => 'Connessione a 1 rubinetto';
	@override String get paste => 'Incolla URL';
	@override String get balance => 'Equilibrio';
	@override String get name => 'Portafoglio';
	@override late final _Translations$settings$wallet$error$it error = _Translations$settings$wallet$error$it._(_root);
}

// Path: login.error
class _Translations$login$error$it extends Translations$login$error$en {
	_Translations$login$error$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Chiave non valida';
}

// Path: live.error
class _Translations$live$error$it extends Translations$live$error$en {
	_Translations$live$error$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Flusso fallito';
	@override String get connection_error => 'Errore di connessione';
	@override String get start_failed => 'Avvio del flusso fallito, controllare il saldo';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$it extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$it extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations

	/// Intestazione dell'elenco degli utenti a cui è stato assegnato un badge
	@override String get awarded_to => 'Assegnato a:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$it extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$settings$profile$error$it extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Impossibile modificare il profilo quando si è disconnessi';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$it extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Impossibile connettere il portafoglio quando si è disconnessi';
	@override String get nwc_auth_event_not_found => 'Nessun evento wallet auth trovato';
}

/// The flat map containing all translations for locale <it>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Carica Avatar',
			'most_zapped_streamers' => 'Il maggior numero di streamer bloccati',
			'no_user_found' => 'Nessun utente trovato',
			'anon' => 'Anonimo',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('it').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '1 spettatore', other: '${NumberFormat.decimalPattern('it').format(n)} spettatori', ), 
			'stream.status.live' => 'IN DIRETTA',
			'stream.status.ended' => 'FINE',
			'stream.status.planned' => 'PREVISTO',
			'stream.started' => ({required Object timestamp}) => 'Avviato ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} è andato in onda!',
			'stream.chat.disabled' => 'CHAT DISABILITATA',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Il timeout scade: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' time out '), user, const TextSpan(text: ' per '), time, ]), 
			'stream.chat.ended' => 'STREAM ENDED',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' ha effettuato uno zap di '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Scrivi il messaggio',
			'stream.chat.write.no_signer' => 'Impossibile scrivere messaggi con il login npub',
			'stream.chat.write.login' => 'Effettuare il login per inviare messaggi',
			'stream.chat.badge.awarded_to' => 'Assegnato a:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID DA ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Raid in ${time}',
			'goal.title' => ({required Object amount}) => 'Obiettivo: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Restante: ${amount}',
			'goal.complete' => 'COMPLETO',
			'button.login' => 'Login',
			'button.logout' => 'Logout',
			'button.edit_profile' => 'Modifica profilo',
			'button.follow' => 'Segui',
			'button.unfollow' => 'Smetti di seguire',
			'button.mute' => 'Silenzia',
			'button.unmute' => 'Riattiva',
			'button.share' => 'Condividi',
			'button.save' => 'Salva',
			'button.connect' => 'Collegare',
			'button.settings' => 'Impostazioni',
			'embed.article_by' => ({required Object name}) => 'Articolo di ${name}',
			'embed.note_by' => ({required Object name}) => 'Nota di ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Streaming in diretta da ${name}',
			'stream_list.following' => 'Seguiti',
			'stream_list.live' => 'Dal vivo',
			'stream_list.planned' => 'Pianificato',
			'stream_list.ended' => 'Terminato',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Importo personalizzato',
			'zap.confirm' => 'Conferma',
			'zap.comment' => 'Commenta',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Aprire nel portafoglio',
			'zap.button_connect_wallet' => 'Portafoglio Connect',
			'zap.copy' => 'Copiato negli appunti',
			'zap.error.invalid_custom_amount' => 'Importo personalizzato non valido',
			'zap.error.no_wallet' => 'Nessun portafoglio Lightning installato',
			'zap.error.no_lud16' => 'Nessun indirizzo di fulmine trovato',
			'profile.past_streams' => 'Flussi passati',
			'settings.button_profile' => 'Modifica profilo',
			'settings.button_wallet' => 'Impostazioni del portafoglio',
			'settings.profile.display_name' => 'Nome visualizzato',
			'settings.profile.about' => 'Circa',
			'settings.profile.nip05' => 'Indirizzo',
			'settings.profile.lud16' => 'Indirizzo del fulmine',
			'settings.profile.error.logged_out' => 'Impossibile modificare il profilo quando si è disconnessi',
			'settings.wallet.connect_wallet' => 'Portafoglio Connect (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Disconnettere il portafoglio',
			'settings.wallet.connect_1tap' => 'Connessione a 1 rubinetto',
			'settings.wallet.paste' => 'Incolla URL',
			'settings.wallet.balance' => 'Equilibrio',
			'settings.wallet.name' => 'Portafoglio',
			'settings.wallet.error.logged_out' => 'Impossibile connettere il portafoglio quando si è disconnessi',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Nessun evento wallet auth trovato',
			'login.username' => 'Nome utente',
			'login.amber' => 'Accesso con Amber',
			'login.key' => 'Accesso con chiave',
			'login.create' => 'Crea un account',
			'login.error.invalid_key' => 'Chiave non valida',
			'live.start' => 'VAI IN DIRETTA',
			'live.configure_stream' => 'Configurare il flusso',
			'live.endpoint' => 'Punto finale',
			'live.accept_tos' => 'Accettare i TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Titolo',
			'live.summary' => 'Sintesi',
			'live.image' => 'Immagine di copertina',
			'live.tags' => 'Tag',
			'live.nsfw' => 'Contenuto NSFW',
			'live.nsfw_description' => 'Controllare qui se questo streaming contiene nudità o contenuti pornografici.',
			'live.error.failed' => 'Flusso fallito',
			'live.error.connection_error' => 'Errore di connessione',
			'live.error.start_failed' => 'Avvio del flusso fallito, controllare il saldo',
			_ => null,
		};
	}
}
