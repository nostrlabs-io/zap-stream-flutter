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
class TranslationsRo extends Translations {
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

	/// Numărul de telespectatori ai fluxului
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '1 vizualizator',
		other: '${NumberFormat.decimalPattern('ro').format(n)} telespectatori',
	);

	@override late final _TranslationsStreamRo stream = _TranslationsStreamRo._(_root);
	@override late final _TranslationsGoalRo goal = _TranslationsGoalRo._(_root);
	@override late final _TranslationsButtonRo button = _TranslationsButtonRo._(_root);
	@override late final _TranslationsEmbedRo embed = _TranslationsEmbedRo._(_root);

	/// Rubrici pe listele de fluxuri în funcție de tipul fluxului în direct/terminat/planificat etc.
	@override late final _TranslationsStreamListRo stream_list = _TranslationsStreamListRo._(_root);

	@override late final _TranslationsZapRo zap = _TranslationsZapRo._(_root);
	@override late final _TranslationsProfileRo profile = _TranslationsProfileRo._(_root);
	@override late final _TranslationsSettingsRo settings = _TranslationsSettingsRo._(_root);
	@override late final _TranslationsLoginRo login = _TranslationsLoginRo._(_root);
}

// Path: stream
class _TranslationsStreamRo extends TranslationsStreamEn {
	_TranslationsStreamRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusRo status = _TranslationsStreamStatusRo._(_root);
	@override String started({required Object timestamp}) => 'A început ${timestamp}';
	@override late final _TranslationsStreamChatRo chat = _TranslationsStreamChatRo._(_root);
}

// Path: goal
class _TranslationsGoalRo extends TranslationsGoalEn {
	_TranslationsGoalRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Obiectiv: ${amount}';
	@override String remaining({required Object amount}) => 'Rămase: ${amount}';
	@override String get complete => 'COMPLET';
}

// Path: button
class _TranslationsButtonRo extends TranslationsButtonEn {
	_TranslationsButtonRo._(TranslationsRo root) : this._root = root, super.internal(root);

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
class _TranslationsEmbedRo extends TranslationsEmbedEn {
	_TranslationsEmbedRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Articol de ${name}';
	@override String note_by({required Object name}) => 'Notă de la ${name}';
	@override String live_stream_by({required Object name}) => 'Transmisiune live prin ${name}';
}

// Path: stream_list
class _TranslationsStreamListRo extends TranslationsStreamListEn {
	_TranslationsStreamListRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get following => 'În urma';
	@override String get live => 'În direct';
	@override String get planned => 'Planificate';
	@override String get ended => 'Încheiat';
}

// Path: zap
class _TranslationsZapRo extends TranslationsZapEn {
	_TranslationsZapRo._(TranslationsRo root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsZapErrorRo error = _TranslationsZapErrorRo._(_root);
}

// Path: profile
class _TranslationsProfileRo extends TranslationsProfileEn {
	_TranslationsProfileRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Fluxuri trecute';
}

// Path: settings
class _TranslationsSettingsRo extends TranslationsSettingsEn {
	_TranslationsSettingsRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Editare profil';
	@override String get button_wallet => 'Setări portofel';
	@override late final _TranslationsSettingsProfileRo profile = _TranslationsSettingsProfileRo._(_root);
	@override late final _TranslationsSettingsWalletRo wallet = _TranslationsSettingsWalletRo._(_root);
}

// Path: login
class _TranslationsLoginRo extends TranslationsLoginEn {
	_TranslationsLoginRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nume utilizator';
	@override String get amber => 'Conectați-vă cu Amber';
	@override String get key => 'Autentificare cu cheie';
	@override String get create => 'Creare cont';
	@override late final _TranslationsLoginErrorRo error = _TranslationsLoginErrorRo._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusRo extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get live => 'ÎN DIRECT';
	@override String get ended => 'TERMINAT';
	@override String get planned => 'PLANIFICATE';
}

// Path: stream.chat
class _TranslationsStreamChatRo extends TranslationsStreamChatEn {
	_TranslationsStreamChatRo._(TranslationsRo root) : this._root = root, super.internal(root);

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

	@override late final _TranslationsStreamChatWriteRo write = _TranslationsStreamChatWriteRo._(_root);
	@override late final _TranslationsStreamChatBadgeRo badge = _TranslationsStreamChatBadgeRo._(_root);
	@override late final _TranslationsStreamChatRaidRo raid = _TranslationsStreamChatRaidRo._(_root);
}

// Path: zap.error
class _TranslationsZapErrorRo extends TranslationsZapErrorEn {
	_TranslationsZapErrorRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Sumă personalizată invalidă';
	@override String get no_wallet => 'Nu este instalat niciun portofel Lightning';
	@override String get no_lud16 => 'Nu a fost găsită nicio adresă de fulgere';
}

// Path: settings.profile
class _TranslationsSettingsProfileRo extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfileRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nume afișat';
	@override String get about => 'Despre';
	@override String get nip05 => 'Adresa Nostr';
	@override String get lud16 => 'Adresa fulgerului';
	@override late final _TranslationsSettingsProfileErrorRo error = _TranslationsSettingsProfileErrorRo._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletRo extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Conectați portofelul (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Deconectați portofelul';
	@override String get connect_1tap => 'Conexiune 1-Tap';
	@override String get paste => 'Lipiți URL';
	@override late final _TranslationsSettingsWalletErrorRo error = _TranslationsSettingsWalletErrorRo._(_root);
}

// Path: login.error
class _TranslationsLoginErrorRo extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Cheie invalidă';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteRo extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteRo._(TranslationsRo root) : this._root = root, super.internal(root);

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
class _TranslationsStreamChatBadgeRo extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations

	/// Antet peste lista de utilizatori care au primit o insignă
	@override String get awarded_to => 'Premiat pentru:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidRo extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidRo._(TranslationsRo root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsProfileErrorRo extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nu pot edita profilul când sunt deconectat';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorRo extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorRo._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Nu puteți conecta portofelul atunci când sunteți deconectat';
	@override String get nwc_auth_event_not_found => 'Nu a fost găsit niciun eveniment de autorizare a portofelului';
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
				other: '${NumberFormat.decimalPattern('ro').format(n)} telespectatori',
			);
			case 'stream.status.live': return 'ÎN DIRECT';
			case 'stream.status.ended': return 'TERMINAT';
			case 'stream.status.planned': return 'PLANIFICATE';
			case 'stream.started': return ({required Object timestamp}) => 'A început ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT DEZACTIVAT';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Timpul expiră: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' Timed out '),
				user,
				const TextSpan(text: ' pentru '),
				time,
			]);
			case 'stream.chat.ended': return 'STREAM ÎNCHEIAT';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Scrieți mesajul';
			case 'stream.chat.write.no_signer': return 'Nu se pot scrie mesaje cu autentificarea npub';
			case 'stream.chat.write.login': return 'Vă rugăm să vă autentificați pentru a trimite mesaje';
			case 'stream.chat.badge.awarded_to': return 'Premiat pentru:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID DE LA ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Raiduri în ${time}';
			case 'goal.title': return ({required Object amount}) => 'Obiectiv: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Rămase: ${amount}';
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
			case 'button.connect': return 'Conectare';
			case 'button.settings': return 'Setări';
			case 'embed.article_by': return ({required Object name}) => 'Articol de ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Notă de la ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Transmisiune live prin ${name}';
			case 'stream_list.following': return 'În urma';
			case 'stream_list.live': return 'În direct';
			case 'stream_list.planned': return 'Planificate';
			case 'stream_list.ended': return 'Încheiat';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Sumă personalizată';
			case 'zap.confirm': return 'Confirmați';
			case 'zap.comment': return 'Comentariu';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Deschide în portofel';
			case 'zap.button_connect_wallet': return 'Conectați portofelul';
			case 'zap.copy': return 'Copiat în clipboard';
			case 'zap.error.invalid_custom_amount': return 'Sumă personalizată invalidă';
			case 'zap.error.no_wallet': return 'Nu este instalat niciun portofel Lightning';
			case 'zap.error.no_lud16': return 'Nu a fost găsită nicio adresă de fulgere';
			case 'profile.past_streams': return 'Fluxuri trecute';
			case 'settings.button_profile': return 'Editare profil';
			case 'settings.button_wallet': return 'Setări portofel';
			case 'settings.profile.display_name': return 'Nume afișat';
			case 'settings.profile.about': return 'Despre';
			case 'settings.profile.nip05': return 'Adresa Nostr';
			case 'settings.profile.lud16': return 'Adresa fulgerului';
			case 'settings.profile.error.logged_out': return 'Nu pot edita profilul când sunt deconectat';
			case 'settings.wallet.connect_wallet': return 'Conectați portofelul (NWC nostr+walletconnect://)';
			case 'settings.wallet.disconnect_wallet': return 'Deconectați portofelul';
			case 'settings.wallet.connect_1tap': return 'Conexiune 1-Tap';
			case 'settings.wallet.paste': return 'Lipiți URL';
			case 'settings.wallet.error.logged_out': return 'Nu puteți conecta portofelul atunci când sunteți deconectat';
			case 'settings.wallet.error.nwc_auth_event_not_found': return 'Nu a fost găsit niciun eveniment de autorizare a portofelului';
			case 'login.username': return 'Nume utilizator';
			case 'login.amber': return 'Conectați-vă cu Amber';
			case 'login.key': return 'Autentificare cu cheie';
			case 'login.create': return 'Creare cont';
			case 'login.error.invalid_key': return 'Cheie invalidă';
			default: return null;
		}
	}
}

