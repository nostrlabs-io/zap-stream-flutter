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
class TranslationsEs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations

	/// Texto que indica al usuario que pulse el marcador de avatar para iniciar la carga
	@override String get upload_avatar => 'Subir avatar';

	/// Encabezando streamers superiores listados por zaps
	@override String get most_zapped_streamers => 'Serpentinas más derribadas';

	/// No se ha encontrado ningún usuario al realizar la búsqueda
	@override String get no_user_found => 'No se ha encontrado ningún usuario';

	/// Un usuario anónimo
	@override String get anon => 'Anónimo';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('es').format(n)} sats';

	/// Número de espectadores del flujo
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '1 espectador',
		other: '${NumberFormat.decimalPattern('es').format(n)} espectadores',
	);

	@override late final _Translations$stream$es stream = _Translations$stream$es._(_root);
	@override late final _Translations$goal$es goal = _Translations$goal$es._(_root);
	@override late final _Translations$button$es button = _Translations$button$es._(_root);
	@override late final _Translations$embed$es embed = _Translations$embed$es._(_root);

	/// Encabezamientos en las listas de flujos por tipo de flujo en directo/finalizado/planificado, etc.
	@override late final _Translations$stream_list$es stream_list = _Translations$stream_list$es._(_root);

	@override late final _Translations$zap$es zap = _Translations$zap$es._(_root);
	@override late final _Translations$profile$es profile = _Translations$profile$es._(_root);
	@override late final _Translations$settings$es settings = _Translations$settings$es._(_root);
	@override late final _Translations$login$es login = _Translations$login$es._(_root);
	@override late final _Translations$live$es live = _Translations$live$es._(_root);
}

// Path: stream
class _Translations$stream$es extends Translations$stream$en {
	_Translations$stream$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$es status = _Translations$stream$status$es._(_root);
	@override String started({required Object timestamp}) => 'Comenzó ${timestamp}';
	@override String notification({required Object name}) => '${name} ¡se ha puesto en marcha!';
	@override late final _Translations$stream$chat$es chat = _Translations$stream$chat$es._(_root);
}

// Path: goal
class _Translations$goal$es extends Translations$goal$en {
	_Translations$goal$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Objetivo: ${amount}';
	@override String remaining({required Object amount}) => 'Resto: ${amount}';
	@override String get complete => 'COMPLETAR';
}

// Path: button
class _Translations$button$es extends Translations$button$en {
	_Translations$button$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations

	/// Texto del botón de inicio de sesión
	@override String get login => 'Iniciar Sesión';

	@override String get logout => 'Cerrar sesión';
	@override String get edit_profile => 'Editar Perfil';

	/// Texto del botón de seguimiento
	@override String get follow => 'Seguir';

	/// Texto del botón "Dejar de seguir
	@override String get unfollow => 'Dejar de seguir';

	@override String get mute => 'Silenciar';
	@override String get unmute => 'Dejar de silenciar';
	@override String get share => 'Compartir';
	@override String get save => 'Guardar';
	@override String get connect => 'Conectar';
	@override String get settings => 'Ajustes';
}

// Path: embed
class _Translations$embed$es extends Translations$embed$en {
	_Translations$embed$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artículo de ${name}';
	@override String note_by({required Object name}) => 'Nota de ${name}';
	@override String live_stream_by({required Object name}) => 'Transmisión en directo por ${name}';
}

// Path: stream_list
class _Translations$stream_list$es extends Translations$stream_list$en {
	_Translations$stream_list$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get following => 'Siguiendo';
	@override String get live => 'En directo';
	@override String get planned => 'Planificado';
	@override String get ended => 'Finalizado';
}

// Path: zap
class _Translations$zap$es extends Translations$zap$en {
	_Translations$zap$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Importe personalizado';
	@override String get confirm => 'Confirmar';
	@override String get comment => 'Comentario';
	@override String button_zap_ready({required Object amount}) => 'Zapear ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Abrir en cartera';
	@override String get button_connect_wallet => 'Billetera Connect';
	@override String get copy => 'Copiado al portapapeles';
	@override late final _Translations$zap$error$es error = _Translations$zap$error$es._(_root);
}

// Path: profile
class _Translations$profile$es extends Translations$profile$en {
	_Translations$profile$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Transmisiones anteriores';
}

// Path: settings
class _Translations$settings$es extends Translations$settings$en {
	_Translations$settings$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Editar perfil';
	@override String get button_wallet => 'Configuración de la cartera';
	@override late final _Translations$settings$profile$es profile = _Translations$settings$profile$es._(_root);
	@override late final _Translations$settings$wallet$es wallet = _Translations$settings$wallet$es._(_root);
}

// Path: login
class _Translations$login$es extends Translations$login$en {
	_Translations$login$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get username => 'Usuario';
	@override String get amber => 'Iniciar sesión con Amber';
	@override String get key => 'Inicio de sesión con clave';
	@override String get create => 'Crear una cuenta';
	@override late final _Translations$login$error$es error = _Translations$login$error$es._(_root);
}

// Path: live
class _Translations$live$es extends Translations$live$en {
	_Translations$live$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get start => 'EN VIVO';
	@override String get configure_stream => 'Configurar Stream';
	@override String get endpoint => 'Punto final';
	@override String get accept_tos => 'Aceptar TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Título';
	@override String get summary => 'Resumen';
	@override String get image => 'Imagen de portada';
	@override String get tags => 'Etiquetas';
	@override String get nsfw => 'Contenido NSFW';
	@override String get nsfw_description => 'Compruebe aquí si este flujo contiene desnudos o contenido pornográfico.';
	@override late final _Translations$live$error$es error = _Translations$live$error$es._(_root);
}

// Path: stream.status
class _Translations$stream$status$es extends Translations$stream$status$en {
	_Translations$stream$status$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get live => 'EN VIVO';
	@override String get ended => 'FIN';
	@override String get planned => 'PLANIFICADO';
}

// Path: stream.chat
class _Translations$stream$chat$es extends Translations$stream$chat$en {
	_Translations$stream$chat$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DESHABILITADO';
	@override String disabled_timeout({required Object time}) => 'El tiempo de espera expira: ${time}';

	/// Mensaje de chat que muestra los eventos de tiempo de espera
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' timed out '),
		user,
		const TextSpan(text: ' para '),
		time,
	]);

	/// Stream finalizó en la parte inferior del chat
	@override String get ended => 'STREAM FINED';

	/// Mensaje de chat que muestra zaps de flujo
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapearon '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$es write = _Translations$stream$chat$write$es._(_root);
	@override late final _Translations$stream$chat$badge$es badge = _Translations$stream$chat$badge$es._(_root);
	@override late final _Translations$stream$chat$raid$es raid = _Translations$stream$chat$raid$es._(_root);
}

// Path: zap.error
class _Translations$zap$error$es extends Translations$zap$error$en {
	_Translations$zap$error$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Importe personalizado no válido';
	@override String get no_wallet => 'Sin monedero relámpago instalado';
	@override String get no_lud16 => 'No se ha encontrado ninguna dirección de rayos';
}

// Path: settings.profile
class _Translations$settings$profile$es extends Translations$settings$profile$en {
	_Translations$settings$profile$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Mostrar nombre';
	@override String get about => 'Acerca de';
	@override String get nip05 => 'Dirección Nostr';
	@override String get lud16 => 'Dirección del rayo';
	@override late final _Translations$settings$profile$error$es error = _Translations$settings$profile$error$es._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$es extends Translations$settings$wallet$en {
	_Translations$settings$wallet$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Cartera Connect (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Desconectar Cartera';
	@override String get connect_1tap => 'Conexión de 1 toma';
	@override String get paste => 'Pegar URL';
	@override String get balance => 'Saldo';
	@override String get name => 'Cartera';
	@override late final _Translations$settings$wallet$error$es error = _Translations$settings$wallet$error$es._(_root);
}

// Path: login.error
class _Translations$login$error$es extends Translations$login$error$en {
	_Translations$login$error$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Clave no válida';
}

// Path: live.error
class _Translations$live$error$es extends Translations$live$error$en {
	_Translations$live$error$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Corriente fallida';
	@override String get connection_error => 'Error de conexión';
	@override String get start_failed => 'Error en el inicio de la transmisión, compruebe su saldo';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$es extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations

	/// Etiqueta del cuadro de entrada de mensajes de chat
	@override String get label => 'Escribir mensaje';

	/// Mensaje de entrada en el chat que se muestra cuando el usuario está conectado sólo con pubkey
	@override String get no_signer => 'No se pueden escribir mensajes con el login npub';

	/// Mensaje de entrada al chat que se muestra cuando el usuario cierra la sesión
	@override String get login => 'Inicie sesión para enviar mensajes';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$es extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations

	/// Encabezamiento de la lista de usuarios a los que se ha concedido una insignia
	@override String get awarded_to => 'Concedido a:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$es extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations

	/// Mensaje de raid de chat a otro flujo
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Mensaje de incursión en el chat desde otro flujo
	@override String from({required Object name}) => 'RAID DESDE ${name}';

	/// Temporizador de cuenta atrás para auto-raiding
	@override String countdown({required Object time}) => 'Incursiones en ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$es extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'No se puede editar el perfil cuando se cierra la sesión';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$es extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'No se puede conectar el monedero al cerrar la sesión';
	@override String get nwc_auth_event_not_found => 'No se ha encontrado ningún evento de autenticación de cartera';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Subir avatar',
			'most_zapped_streamers' => 'Serpentinas más derribadas',
			'no_user_found' => 'No se ha encontrado ningún usuario',
			'anon' => 'Anónimo',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('es').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '1 espectador', other: '${NumberFormat.decimalPattern('es').format(n)} espectadores', ), 
			'stream.status.live' => 'EN VIVO',
			'stream.status.ended' => 'FIN',
			'stream.status.planned' => 'PLANIFICADO',
			'stream.started' => ({required Object timestamp}) => 'Comenzó ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} ¡se ha puesto en marcha!',
			'stream.chat.disabled' => 'CHAT DESHABILITADO',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'El tiempo de espera expira: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' timed out '), user, const TextSpan(text: ' para '), time, ]), 
			'stream.chat.ended' => 'STREAM FINED',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapearon '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Escribir mensaje',
			'stream.chat.write.no_signer' => 'No se pueden escribir mensajes con el login npub',
			'stream.chat.write.login' => 'Inicie sesión para enviar mensajes',
			'stream.chat.badge.awarded_to' => 'Concedido a:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID DESDE ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Incursiones en ${time}',
			'goal.title' => ({required Object amount}) => 'Objetivo: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Resto: ${amount}',
			'goal.complete' => 'COMPLETAR',
			'button.login' => 'Iniciar Sesión',
			'button.logout' => 'Cerrar sesión',
			'button.edit_profile' => 'Editar Perfil',
			'button.follow' => 'Seguir',
			'button.unfollow' => 'Dejar de seguir',
			'button.mute' => 'Silenciar',
			'button.unmute' => 'Dejar de silenciar',
			'button.share' => 'Compartir',
			'button.save' => 'Guardar',
			'button.connect' => 'Conectar',
			'button.settings' => 'Ajustes',
			'embed.article_by' => ({required Object name}) => 'Artículo de ${name}',
			'embed.note_by' => ({required Object name}) => 'Nota de ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Transmisión en directo por ${name}',
			'stream_list.following' => 'Siguiendo',
			'stream_list.live' => 'En directo',
			'stream_list.planned' => 'Planificado',
			'stream_list.ended' => 'Finalizado',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Importe personalizado',
			'zap.confirm' => 'Confirmar',
			'zap.comment' => 'Comentario',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zapear ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Abrir en cartera',
			'zap.button_connect_wallet' => 'Billetera Connect',
			'zap.copy' => 'Copiado al portapapeles',
			'zap.error.invalid_custom_amount' => 'Importe personalizado no válido',
			'zap.error.no_wallet' => 'Sin monedero relámpago instalado',
			'zap.error.no_lud16' => 'No se ha encontrado ninguna dirección de rayos',
			'profile.past_streams' => 'Transmisiones anteriores',
			'settings.button_profile' => 'Editar perfil',
			'settings.button_wallet' => 'Configuración de la cartera',
			'settings.profile.display_name' => 'Mostrar nombre',
			'settings.profile.about' => 'Acerca de',
			'settings.profile.nip05' => 'Dirección Nostr',
			'settings.profile.lud16' => 'Dirección del rayo',
			'settings.profile.error.logged_out' => 'No se puede editar el perfil cuando se cierra la sesión',
			'settings.wallet.connect_wallet' => 'Cartera Connect (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Desconectar Cartera',
			'settings.wallet.connect_1tap' => 'Conexión de 1 toma',
			'settings.wallet.paste' => 'Pegar URL',
			'settings.wallet.balance' => 'Saldo',
			'settings.wallet.name' => 'Cartera',
			'settings.wallet.error.logged_out' => 'No se puede conectar el monedero al cerrar la sesión',
			'settings.wallet.error.nwc_auth_event_not_found' => 'No se ha encontrado ningún evento de autenticación de cartera',
			'login.username' => 'Usuario',
			'login.amber' => 'Iniciar sesión con Amber',
			'login.key' => 'Inicio de sesión con clave',
			'login.create' => 'Crear una cuenta',
			'login.error.invalid_key' => 'Clave no válida',
			'live.start' => 'EN VIVO',
			'live.configure_stream' => 'Configurar Stream',
			'live.endpoint' => 'Punto final',
			'live.accept_tos' => 'Aceptar TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Título',
			'live.summary' => 'Resumen',
			'live.image' => 'Imagen de portada',
			'live.tags' => 'Etiquetas',
			'live.nsfw' => 'Contenido NSFW',
			'live.nsfw_description' => 'Compruebe aquí si este flujo contiene desnudos o contenido pornográfico.',
			'live.error.failed' => 'Corriente fallida',
			'live.error.connection_error' => 'Error de conexión',
			'live.error.start_failed' => 'Error en el inicio de la transmisión, compruebe su saldo',
			_ => null,
		};
	}
}
