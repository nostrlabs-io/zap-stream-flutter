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
class TranslationsRo extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ro,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ro>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('ro').format(n)} sats';

	/// Numărul de telespectatori ai fluxului
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '1 vizualizator',
		other: '${NumberFormat.decimalPattern('ro').format(n)} telespectatori',
	);

	@override late final _Translations$stream$ro stream = _Translations$stream$ro._(_root);
	@override late final _Translations$goal$ro goal = _Translations$goal$ro._(_root);
	@override late final _Translations$button$ro button = _Translations$button$ro._(_root);
	@override late final _Translations$embed$ro embed = _Translations$embed$ro._(_root);

	/// Rubrici pe listele de fluxuri în funcție de tipul fluxului în direct/terminat/planificat etc.
	@override late final _Translations$stream_list$ro stream_list = _Translations$stream_list$ro._(_root);

	@override late final _Translations$zap$ro zap = _Translations$zap$ro._(_root);
	@override late final _Translations$profile$ro profile = _Translations$profile$ro._(_root);
	@override late final _Translations$settings$ro settings = _Translations$settings$ro._(_root);
	@override late final _Translations$login$ro login = _Translations$login$ro._(_root);
	@override late final _Translations$live$ro live = _Translations$live$ro._(_root);
}

// Path: stream
class _Translations$stream$ro extends Translations$stream$en {
	_Translations$stream$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$ro status = _Translations$stream$status$ro._(_root);
	@override String started({required Object timestamp}) => 'A început ${timestamp}';
	@override String notification({required Object name}) => '${name} a intrat în direct!';
	@override late final _Translations$stream$chat$ro chat = _Translations$stream$chat$ro._(_root);
}

// Path: goal
class _Translations$goal$ro extends Translations$goal$en {
	_Translations$goal$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Obiectiv: ${amount}';
	@override String remaining({required Object amount}) => 'Rămase: ${amount}';
	@override String get complete => 'COMPLET';
}

// Path: button
class _Translations$button$ro extends Translations$button$en {
	_Translations$button$ro._(TranslationsRo root) : this._root = root, super.internal(root);

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
	@override String get connect => 'Conectare';
	@override String get settings => 'Setări';
}

// Path: embed
class _Translations$embed$ro extends Translations$embed$en {
	_Translations$embed$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Articol de ${name}';
	@override String note_by({required Object name}) => 'Notă de la ${name}';
	@override String live_stream_by({required Object name}) => 'Transmisiune live prin ${name}';
}

// Path: stream_list
class _Translations$stream_list$ro extends Translations$stream_list$en {
	_Translations$stream_list$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get following => 'În urma';
	@override String get live => 'În direct';
	@override String get planned => 'Planificate';
	@override String get ended => 'Încheiat';
}

// Path: zap
class _Translations$zap$ro extends Translations$zap$en {
	_Translations$zap$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Sumă personalizată';
	@override String get confirm => 'Confirmați';
	@override String get comment => 'Comentariu';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Deschide în portofel';
	@override String get button_connect_wallet => 'Conectați portofelul';
	@override String get copy => 'Copiat în clipboard';
	@override late final _Translations$zap$error$ro error = _Translations$zap$error$ro._(_root);
}

// Path: profile
class _Translations$profile$ro extends Translations$profile$en {
	_Translations$profile$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Fluxuri trecute';
}

// Path: settings
class _Translations$settings$ro extends Translations$settings$en {
	_Translations$settings$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Editare profil';
	@override String get button_wallet => 'Setări portofel';
	@override late final _Translations$settings$profile$ro profile = _Translations$settings$profile$ro._(_root);
	@override late final _Translations$settings$wallet$ro wallet = _Translations$settings$wallet$ro._(_root);
}

// Path: login
class _Translations$login$ro extends Translations$login$en {
	_Translations$login$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nume utilizator';
	@override String get amber => 'Conectați-vă cu Amber';
	@override String get key => 'Autentificare cu cheie';
	@override String get create => 'Creare cont';
	@override late final _Translations$login$error$ro error = _Translations$login$error$ro._(_root);
}

// Path: live
class _Translations$live$ro extends Translations$live$en {
	_Translations$live$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get start => 'GO LIVE';
	@override String get configure_stream => 'Configurați fluxul';
	@override String get endpoint => 'Punct final';
	@override String get accept_tos => 'Acceptați TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Titlu';
	@override String get summary => 'Rezumat';
	@override String get image => 'Imagine de copertă';
	@override String get tags => 'Etichete';
	@override String get nsfw => 'Conținut NSFW';
	@override String get nsfw_description => 'Bifați aici dacă acest flux conține nuditate sau conținut pornografic.';
	@override late final _Translations$live$error$ro error = _Translations$live$error$ro._(_root);
}

// Path: stream.status
class _Translations$stream$status$ro extends Translations$stream$status$en {
	_Translations$stream$status$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get live => 'ÎN DIRECT';
	@override String get ended => 'TERMINAT';
	@override String get planned => 'PLANIFICATE';
}

// Path: stream.chat
class _Translations$stream$chat$ro extends Translations$stream$chat$en {
	_Translations$stream$chat$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DEZACTIVAT';
	@override String disabled_timeout({required Object time}) => 'Timpul expiră: ${time}';

	/// Mesaj de chat care afișează evenimentele de timeout
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' Timed out '),
		user,
		const TextSpan(text: ' pentru '),
		time,
	]);

	/// Stream a încheiat footer-ul în partea de jos a chat-ului
	@override String get ended => 'STREAM ÎNCHEIAT';

	/// Mesaj de chat care arată zapsuri de flux
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$ro write = _Translations$stream$chat$write$ro._(_root);
	@override late final _Translations$stream$chat$badge$ro badge = _Translations$stream$chat$badge$ro._(_root);
	@override late final _Translations$stream$chat$raid$ro raid = _Translations$stream$chat$raid$ro._(_root);
}

// Path: zap.error
class _Translations$zap$error$ro extends Translations$zap$error$en {
	_Translations$zap$error$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Sumă personalizată invalidă';
	@override String get no_wallet => 'Nu este instalat niciun portofel Lightning';
	@override String get no_lud16 => 'Nu a fost găsită nicio adresă de fulgere';
}

// Path: settings.profile
class _Translations$settings$profile$ro extends Translations$settings$profile$en {
	_Translations$settings$profile$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nume afișat';
	@override String get about => 'Despre';
	@override String get nip05 => 'Adresa Nostr';
	@override String get lud16 => 'Adresa fulgerului';
	@override late final _Translations$settings$profile$error$ro error = _Translations$settings$profile$error$ro._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$ro extends Translations$settings$wallet$en {
	_Translations$settings$wallet$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Conectați portofelul (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Deconectați portofelul';
	@override String get connect_1tap => 'Conexiune 1-Tap';
	@override String get paste => 'Lipiți URL';
	@override String get balance => 'Echilibru';
	@override String get name => 'Portofel';
	@override late final _Translations$settings$wallet$error$ro error = _Translations$settings$wallet$error$ro._(_root);
}

// Path: login.error
class _Translations$login$error$ro extends Translations$login$error$en {
	_Translations$login$error$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Cheie invalidă';
}

// Path: live.error
class _Translations$live$error$ro extends Translations$live$error$en {
	_Translations$live$error$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Fluxul a eșuat';
	@override String get connection_error => 'Eroare de conectare';
	@override String get start_failed => 'Pornirea fluxului a eșuat, vă rugăm să verificați soldul';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$ro extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$ro._(TranslationsRo root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$ro extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations

	/// Antet peste lista de utilizatori care au primit o insignă
	@override String get awarded_to => 'Premiat pentru:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$ro extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations

	/// Chat mesaj raid la un alt flux
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Chat raid mesaj din alt flux
	@override String from({required Object name}) => 'RAID DE LA ${name}';

	/// Cronometru cu numărătoare inversă pentru auto-raid
	@override String countdown({required Object time}) => 'Raiduri în ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$ro extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nu pot edita profilul când sunt deconectat';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$ro extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nu puteți conecta portofelul atunci când sunteți deconectat';
	@override String get nwc_auth_event_not_found => 'Nu a fost găsit niciun eveniment de autorizare a portofelului';
}

/// The flat map containing all translations for locale <ro>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Încărcați Avatar',
			'most_zapped_streamers' => 'Cele mai multe Streamers Zapped',
			'no_user_found' => 'Niciun utilizator găsit',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('ro').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '1 vizualizator', other: '${NumberFormat.decimalPattern('ro').format(n)} telespectatori', ), 
			'stream.status.live' => 'ÎN DIRECT',
			'stream.status.ended' => 'TERMINAT',
			'stream.status.planned' => 'PLANIFICATE',
			'stream.started' => ({required Object timestamp}) => 'A început ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} a intrat în direct!',
			'stream.chat.disabled' => 'CHAT DEZACTIVAT',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Timpul expiră: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' Timed out '), user, const TextSpan(text: ' pentru '), time, ]), 
			'stream.chat.ended' => 'STREAM ÎNCHEIAT',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Scrieți mesajul',
			'stream.chat.write.no_signer' => 'Nu se pot scrie mesaje cu autentificarea npub',
			'stream.chat.write.login' => 'Vă rugăm să vă autentificați pentru a trimite mesaje',
			'stream.chat.badge.awarded_to' => 'Premiat pentru:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID DE LA ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Raiduri în ${time}',
			'goal.title' => ({required Object amount}) => 'Obiectiv: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Rămase: ${amount}',
			'goal.complete' => 'COMPLET',
			'button.login' => 'Autentificare',
			'button.logout' => 'Ieșire',
			'button.edit_profile' => 'Editare profil',
			'button.follow' => 'Urmați',
			'button.unfollow' => 'Unfollow',
			'button.mute' => 'Mut',
			'button.unmute' => 'Dezactivați',
			'button.share' => 'Share',
			'button.save' => 'Salvați',
			'button.connect' => 'Conectare',
			'button.settings' => 'Setări',
			'embed.article_by' => ({required Object name}) => 'Articol de ${name}',
			'embed.note_by' => ({required Object name}) => 'Notă de la ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Transmisiune live prin ${name}',
			'stream_list.following' => 'În urma',
			'stream_list.live' => 'În direct',
			'stream_list.planned' => 'Planificate',
			'stream_list.ended' => 'Încheiat',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Sumă personalizată',
			'zap.confirm' => 'Confirmați',
			'zap.comment' => 'Comentariu',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Deschide în portofel',
			'zap.button_connect_wallet' => 'Conectați portofelul',
			'zap.copy' => 'Copiat în clipboard',
			'zap.error.invalid_custom_amount' => 'Sumă personalizată invalidă',
			'zap.error.no_wallet' => 'Nu este instalat niciun portofel Lightning',
			'zap.error.no_lud16' => 'Nu a fost găsită nicio adresă de fulgere',
			'profile.past_streams' => 'Fluxuri trecute',
			'settings.button_profile' => 'Editare profil',
			'settings.button_wallet' => 'Setări portofel',
			'settings.profile.display_name' => 'Nume afișat',
			'settings.profile.about' => 'Despre',
			'settings.profile.nip05' => 'Adresa Nostr',
			'settings.profile.lud16' => 'Adresa fulgerului',
			'settings.profile.error.logged_out' => 'Nu pot edita profilul când sunt deconectat',
			'settings.wallet.connect_wallet' => 'Conectați portofelul (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Deconectați portofelul',
			'settings.wallet.connect_1tap' => 'Conexiune 1-Tap',
			'settings.wallet.paste' => 'Lipiți URL',
			'settings.wallet.balance' => 'Echilibru',
			'settings.wallet.name' => 'Portofel',
			'settings.wallet.error.logged_out' => 'Nu puteți conecta portofelul atunci când sunteți deconectat',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Nu a fost găsit niciun eveniment de autorizare a portofelului',
			'login.username' => 'Nume utilizator',
			'login.amber' => 'Conectați-vă cu Amber',
			'login.key' => 'Autentificare cu cheie',
			'login.create' => 'Creare cont',
			'login.error.invalid_key' => 'Cheie invalidă',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Configurați fluxul',
			'live.endpoint' => 'Punct final',
			'live.accept_tos' => 'Acceptați TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Titlu',
			'live.summary' => 'Rezumat',
			'live.image' => 'Imagine de copertă',
			'live.tags' => 'Etichete',
			'live.nsfw' => 'Conținut NSFW',
			'live.nsfw_description' => 'Bifați aici dacă acest flux conține nuditate sau conținut pornografic.',
			'live.error.failed' => 'Fluxul a eșuat',
			'live.error.connection_error' => 'Eroare de conectare',
			'live.error.start_failed' => 'Pornirea fluxului a eșuat, vă rugăm să verificați soldul',
			_ => null,
		};
	}
}
