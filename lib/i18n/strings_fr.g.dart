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
class TranslationsFr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations

	/// Texte invitant l'utilisateur à cliquer sur l'espace réservé à l'avatar pour commencer le téléchargement
	@override String get upload_avatar => 'Télécharger l\'avatar';

	/// Les têtes d'affiche sont listées par zaps.
	@override String get most_zapped_streamers => 'Les Streamers les plus zappés';

	/// Aucun utilisateur n'a été trouvé lors de la recherche
	@override String get no_user_found => 'Aucun utilisateur trouvé';

	/// Un utilisateur anonyme
	@override String get anon => 'Anonyme';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('fr').format(n)} sats';

	/// Nombre de spectateurs du flux
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '1 téléspectateur',
		other: '${NumberFormat.decimalPattern('fr').format(n)} téléspectateurs',
	);

	@override late final _Translations$stream$fr stream = _Translations$stream$fr._(_root);
	@override late final _Translations$goal$fr goal = _Translations$goal$fr._(_root);
	@override late final _Translations$button$fr button = _Translations$button$fr._(_root);
	@override late final _Translations$embed$fr embed = _Translations$embed$fr._(_root);

	/// Rubriques sur les listes de flux par type de flux en direct/fini/prévu, etc.
	@override late final _Translations$stream_list$fr stream_list = _Translations$stream_list$fr._(_root);

	@override late final _Translations$zap$fr zap = _Translations$zap$fr._(_root);
	@override late final _Translations$profile$fr profile = _Translations$profile$fr._(_root);
	@override late final _Translations$settings$fr settings = _Translations$settings$fr._(_root);
	@override late final _Translations$login$fr login = _Translations$login$fr._(_root);
	@override late final _Translations$live$fr live = _Translations$live$fr._(_root);
}

// Path: stream
class _Translations$stream$fr extends Translations$stream$en {
	_Translations$stream$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$fr status = _Translations$stream$status$fr._(_root);
	@override String started({required Object timestamp}) => 'Commencé à ${timestamp}';
	@override String notification({required Object name}) => '${name} est en ligne !';
	@override late final _Translations$stream$chat$fr chat = _Translations$stream$chat$fr._(_root);
}

// Path: goal
class _Translations$goal$fr extends Translations$goal$en {
	_Translations$goal$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Objectif : ${amount}';
	@override String remaining({required Object amount}) => 'Reste : ${amount}';
	@override String get complete => 'COMPLET';
}

// Path: button
class _Translations$button$fr extends Translations$button$en {
	_Translations$button$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations

	/// Texte du bouton de connexion
	@override String get login => 'Se Connecter';

	@override String get logout => 'Se déconnecter';
	@override String get edit_profile => 'Modifier le Profil';

	/// Texte du bouton de suivi
	@override String get follow => 'Suivre';

	/// Texte du bouton pour le bouton "unfollow
	@override String get unfollow => 'Ne plus suivre';

	@override String get mute => 'Muet';
	@override String get unmute => 'Retirer sourdine';
	@override String get share => 'Partager';
	@override String get save => 'Sauvegarder';
	@override String get connect => 'Connecter';
	@override String get settings => 'Paramètres';
}

// Path: embed
class _Translations$embed$fr extends Translations$embed$en {
	_Translations$embed$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Article par ${name}';
	@override String note_by({required Object name}) => 'Note par ${name}';
	@override String live_stream_by({required Object name}) => 'Retransmission en direct sur ${name}';
}

// Path: stream_list
class _Translations$stream_list$fr extends Translations$stream_list$en {
	_Translations$stream_list$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get following => 'Abonnements';
	@override String get live => 'En direct';
	@override String get planned => 'Planifié';
	@override String get ended => 'Terminé';
}

// Path: zap
class _Translations$zap$fr extends Translations$zap$en {
	_Translations$zap$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Montant personnalisé';
	@override String get confirm => 'Confirmer';
	@override String get comment => 'Commenter';
	@override String button_zap_ready({required Object amount}) => 'Zapper ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Ouvrir dans le portefeuille';
	@override String get button_connect_wallet => 'Connecter le portefeuille';
	@override String get copy => 'Copié dans le presse-papiers';
	@override late final _Translations$zap$error$fr error = _Translations$zap$error$fr._(_root);
}

// Path: profile
class _Translations$profile$fr extends Translations$profile$en {
	_Translations$profile$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Streams passés';
}

// Path: settings
class _Translations$settings$fr extends Translations$settings$en {
	_Translations$settings$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Modifier le profil';
	@override String get button_wallet => 'Paramètres du portefeuille';
	@override late final _Translations$settings$profile$fr profile = _Translations$settings$profile$fr._(_root);
	@override late final _Translations$settings$wallet$fr wallet = _Translations$settings$wallet$fr._(_root);
}

// Path: login
class _Translations$login$fr extends Translations$login$en {
	_Translations$login$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nom d’utilisateur';
	@override String get amber => 'Se connecter avec Amber';
	@override String get key => 'Connexion avec la clé';
	@override String get create => 'Créer un Compte';
	@override late final _Translations$login$error$fr error = _Translations$login$error$fr._(_root);
}

// Path: live
class _Translations$live$fr extends Translations$live$en {
	_Translations$live$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get start => 'GO LIVE';
	@override String get configure_stream => 'Configurer le flux';
	@override String get endpoint => 'Point final';
	@override String get accept_tos => 'Accepter les CGU';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Titre';
	@override String get summary => 'Résumé';
	@override String get image => 'Image de couverture';
	@override String get tags => 'Tags';
	@override String get nsfw => 'Contenu NSFW';
	@override String get nsfw_description => 'Cochez cette case si ce flux contient de la nudité ou du contenu pornographique.';
	@override late final _Translations$live$error$fr error = _Translations$live$error$fr._(_root);
}

// Path: stream.status
class _Translations$stream$status$fr extends Translations$stream$status$en {
	_Translations$stream$status$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get live => 'VIVRE';
	@override String get ended => 'FINI';
	@override String get planned => 'PRÉVU';
}

// Path: stream.chat
class _Translations$stream$chat$fr extends Translations$stream$chat$en {
	_Translations$stream$chat$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DISABLED';
	@override String disabled_timeout({required Object time}) => 'Le délai expire : ${time}';

	/// Message de chat indiquant les événements de dépassement de délai
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' '),
		user,
		const TextSpan(text: ' a expiré dans le temps pour '),
		time,
	]);

	/// Stream ended footer at bottom of chat
	@override String get ended => 'STREAM ENDED';

	/// Message de chat montrant des zaps de flux
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' a zappé '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$fr write = _Translations$stream$chat$write$fr._(_root);
	@override late final _Translations$stream$chat$badge$fr badge = _Translations$stream$chat$badge$fr._(_root);
	@override late final _Translations$stream$chat$raid$fr raid = _Translations$stream$chat$raid$fr._(_root);
}

// Path: zap.error
class _Translations$zap$error$fr extends Translations$zap$error$en {
	_Translations$zap$error$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Montant personnalisé non valide';
	@override String get no_wallet => 'Pas de porte-monnaie électronique installé';
	@override String get no_lud16 => 'Pas d\'adresse éclair trouvée';
}

// Path: settings.profile
class _Translations$settings$profile$fr extends Translations$settings$profile$en {
	_Translations$settings$profile$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nom d\'affichage';
	@override String get about => 'A propos de';
	@override String get nip05 => 'Nostr Adresse';
	@override String get lud16 => 'Adresse de la foudre';
	@override late final _Translations$settings$profile$error$fr error = _Translations$settings$profile$error$fr._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$fr extends Translations$settings$wallet$en {
	_Translations$settings$wallet$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Portefeuille Connect (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Déconnecter le portefeuille';
	@override String get connect_1tap => 'Connexion à 1 robinet';
	@override String get paste => 'Coller l\'URL';
	@override String get balance => 'Équilibre';
	@override String get name => 'Portefeuille';
	@override late final _Translations$settings$wallet$error$fr error = _Translations$settings$wallet$error$fr._(_root);
}

// Path: login.error
class _Translations$login$error$fr extends Translations$login$error$en {
	_Translations$login$error$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Clé non valide';
}

// Path: live.error
class _Translations$live$error$fr extends Translations$live$error$en {
	_Translations$live$error$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Échec du flux';
	@override String get connection_error => 'Erreur de connexion';
	@override String get start_failed => 'Le démarrage du flux a échoué, veuillez vérifier votre solde';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$fr extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations

	/// Étiquette sur la boîte de saisie du message de chat
	@override String get label => 'Message écrit';

	/// Message d'entrée du chat affiché lorsque l'utilisateur n'est connecté qu'avec pubkey
	@override String get no_signer => 'Impossible d\'écrire des messages avec le login npub';

	/// Message d'entrée du chat affiché lorsque l'utilisateur est déconnecté
	@override String get login => 'Veuillez vous connecter pour envoyer des messages';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$fr extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations

	/// Titre sur la liste des utilisateurs qui ont reçu un badge
	@override String get awarded_to => 'Attribué à :';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$fr extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations

	/// Message de raid par chat vers un autre flux
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Message de raid sur le chat à partir d'un autre flux
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// Compte à rebours pour l'auto-raid
	@override String countdown({required Object time}) => 'Raid sur ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$fr extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Impossible de modifier le profil lorsque l\'on est déconnecté';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$fr extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Impossible de se connecter au portefeuille lorsque l\'on est déconnecté';
	@override String get nwc_auth_event_not_found => 'Aucun événement d\'authentification de portefeuille n\'a été trouvé';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Télécharger l\'avatar',
			'most_zapped_streamers' => 'Les Streamers les plus zappés',
			'no_user_found' => 'Aucun utilisateur trouvé',
			'anon' => 'Anonyme',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('fr').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '1 téléspectateur', other: '${NumberFormat.decimalPattern('fr').format(n)} téléspectateurs', ), 
			'stream.status.live' => 'VIVRE',
			'stream.status.ended' => 'FINI',
			'stream.status.planned' => 'PRÉVU',
			'stream.started' => ({required Object timestamp}) => 'Commencé à ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} est en ligne !',
			'stream.chat.disabled' => 'CHAT DISABLED',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Le délai expire : ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' '), user, const TextSpan(text: ' a expiré dans le temps pour '), time, ]), 
			'stream.chat.ended' => 'STREAM ENDED',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' a zappé '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Message écrit',
			'stream.chat.write.no_signer' => 'Impossible d\'écrire des messages avec le login npub',
			'stream.chat.write.login' => 'Veuillez vous connecter pour envoyer des messages',
			'stream.chat.badge.awarded_to' => 'Attribué à :',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Raid sur ${time}',
			'goal.title' => ({required Object amount}) => 'Objectif : ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Reste : ${amount}',
			'goal.complete' => 'COMPLET',
			'button.login' => 'Se Connecter',
			'button.logout' => 'Se déconnecter',
			'button.edit_profile' => 'Modifier le Profil',
			'button.follow' => 'Suivre',
			'button.unfollow' => 'Ne plus suivre',
			'button.mute' => 'Muet',
			'button.unmute' => 'Retirer sourdine',
			'button.share' => 'Partager',
			'button.save' => 'Sauvegarder',
			'button.connect' => 'Connecter',
			'button.settings' => 'Paramètres',
			'embed.article_by' => ({required Object name}) => 'Article par ${name}',
			'embed.note_by' => ({required Object name}) => 'Note par ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Retransmission en direct sur ${name}',
			'stream_list.following' => 'Abonnements',
			'stream_list.live' => 'En direct',
			'stream_list.planned' => 'Planifié',
			'stream_list.ended' => 'Terminé',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Montant personnalisé',
			'zap.confirm' => 'Confirmer',
			'zap.comment' => 'Commenter',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zapper ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Ouvrir dans le portefeuille',
			'zap.button_connect_wallet' => 'Connecter le portefeuille',
			'zap.copy' => 'Copié dans le presse-papiers',
			'zap.error.invalid_custom_amount' => 'Montant personnalisé non valide',
			'zap.error.no_wallet' => 'Pas de porte-monnaie électronique installé',
			'zap.error.no_lud16' => 'Pas d\'adresse éclair trouvée',
			'profile.past_streams' => 'Streams passés',
			'settings.button_profile' => 'Modifier le profil',
			'settings.button_wallet' => 'Paramètres du portefeuille',
			'settings.profile.display_name' => 'Nom d\'affichage',
			'settings.profile.about' => 'A propos de',
			'settings.profile.nip05' => 'Nostr Adresse',
			'settings.profile.lud16' => 'Adresse de la foudre',
			'settings.profile.error.logged_out' => 'Impossible de modifier le profil lorsque l\'on est déconnecté',
			'settings.wallet.connect_wallet' => 'Portefeuille Connect (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Déconnecter le portefeuille',
			'settings.wallet.connect_1tap' => 'Connexion à 1 robinet',
			'settings.wallet.paste' => 'Coller l\'URL',
			'settings.wallet.balance' => 'Équilibre',
			'settings.wallet.name' => 'Portefeuille',
			'settings.wallet.error.logged_out' => 'Impossible de se connecter au portefeuille lorsque l\'on est déconnecté',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Aucun événement d\'authentification de portefeuille n\'a été trouvé',
			'login.username' => 'Nom d’utilisateur',
			'login.amber' => 'Se connecter avec Amber',
			'login.key' => 'Connexion avec la clé',
			'login.create' => 'Créer un Compte',
			'login.error.invalid_key' => 'Clé non valide',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Configurer le flux',
			'live.endpoint' => 'Point final',
			'live.accept_tos' => 'Accepter les CGU',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Titre',
			'live.summary' => 'Résumé',
			'live.image' => 'Image de couverture',
			'live.tags' => 'Tags',
			'live.nsfw' => 'Contenu NSFW',
			'live.nsfw_description' => 'Cochez cette case si ce flux contient de la nudité ou du contenu pornographique.',
			'live.error.failed' => 'Échec du flux',
			'live.error.connection_error' => 'Erreur de connexion',
			'live.error.start_failed' => 'Le démarrage du flux a échoué, veuillez vérifier votre solde',
			_ => null,
		};
	}
}
