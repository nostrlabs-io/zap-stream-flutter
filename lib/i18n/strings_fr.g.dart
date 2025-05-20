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
class TranslationsFr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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

	/// Nombre de spectateurs du flux
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '1 téléspectateur',
		other: '${n} spectateurs',
	);

	@override late final _TranslationsStreamFr stream = _TranslationsStreamFr._(_root);
	@override late final _TranslationsGoalFr goal = _TranslationsGoalFr._(_root);
	@override late final _TranslationsButtonFr button = _TranslationsButtonFr._(_root);
	@override late final _TranslationsEmbedFr embed = _TranslationsEmbedFr._(_root);

	/// Rubriques sur les listes de flux par type de flux en direct/fini/prévu, etc.
	@override late final _TranslationsStreamListFr stream_list = _TranslationsStreamListFr._(_root);

	@override late final _TranslationsZapFr zap = _TranslationsZapFr._(_root);
	@override late final _TranslationsProfileFr profile = _TranslationsProfileFr._(_root);
	@override late final _TranslationsLoginFr login = _TranslationsLoginFr._(_root);
}

// Path: stream
class _TranslationsStreamFr implements TranslationsStreamEn {
	_TranslationsStreamFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusFr status = _TranslationsStreamStatusFr._(_root);
	@override String started({ required Object timestamp}) => 'Commencé à ${timestamp}';
	@override late final _TranslationsStreamChatFr chat = _TranslationsStreamChatFr._(_root);
}

// Path: goal
class _TranslationsGoalFr implements TranslationsGoalEn {
	_TranslationsGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Objectif : ${amount}';
	@override String remaining({ required Object amount}) => 'Reste : ${amount}';
	@override String get complete => 'COMPLET';
}

// Path: button
class _TranslationsButtonFr implements TranslationsButtonEn {
	_TranslationsButtonFr._(this._root);

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
}

// Path: embed
class _TranslationsEmbedFr implements TranslationsEmbedEn {
	_TranslationsEmbedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Article par ${name}';
	@override String note_by({ required Object name}) => 'Note par ${name}';
	@override String live_stream_by({ required Object name}) => 'Retransmission en direct sur ${name}';
}

// Path: stream_list
class _TranslationsStreamListFr implements TranslationsStreamListEn {
	_TranslationsStreamListFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get following => 'Abonnements';
	@override String get live => 'En direct';
	@override String get planned => 'Planifié';
	@override String get ended => 'Terminé';
}

// Path: zap
class _TranslationsZapFr implements TranslationsZapEn {
	_TranslationsZapFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Montant personnalisé';
	@override String get confirm => 'Confirmer';
	@override String get comment => 'Commenter';
	@override String button_zap_ready({ required Object amount}) => 'Zapper ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Ouvrir dans le portefeuille';
	@override String get copy => 'Copié dans le presse-papiers';
	@override late final _TranslationsZapErrorFr error = _TranslationsZapErrorFr._(_root);
}

// Path: profile
class _TranslationsProfileFr implements TranslationsProfileEn {
	_TranslationsProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Streams passés';
	@override late final _TranslationsProfileEditFr edit = _TranslationsProfileEditFr._(_root);
}

// Path: login
class _TranslationsLoginFr implements TranslationsLoginEn {
	_TranslationsLoginFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nom d’utilisateur';
	@override String get amber => 'Se connecter avec Amber';
	@override String get key => 'Connexion avec la clé';
	@override String get create => 'Créer un Compte';
	@override late final _TranslationsLoginErrorFr error = _TranslationsLoginErrorFr._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusFr implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get live => 'VIVRE';
	@override String get ended => 'FINI';
	@override String get planned => 'PRÉVU';
}

// Path: stream.chat
class _TranslationsStreamChatFr implements TranslationsStreamChatEn {
	_TranslationsStreamChatFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'CHAT DISABLED';
	@override String disabled_timeout({ required Object time}) => 'Le délai expire : ${time}';

	/// Message de chat indiquant les événements de dépassement de délai
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' '),
		user,
		const TextSpan(text: ' a expiré dans le temps pour '),
		time,
	], style: style, recognizer: recognizer);

	/// Stream ended footer at bottom of chat
	@override String get ended => 'STREAM ENDED';

	/// Message de chat montrant des zaps de flux
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' a zappé '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteFr write = _TranslationsStreamChatWriteFr._(_root);
	@override late final _TranslationsStreamChatBadgeFr badge = _TranslationsStreamChatBadgeFr._(_root);
	@override late final _TranslationsStreamChatRaidFr raid = _TranslationsStreamChatRaidFr._(_root);
}

// Path: zap.error
class _TranslationsZapErrorFr implements TranslationsZapErrorEn {
	_TranslationsZapErrorFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Montant personnalisé non valide';
	@override String get no_wallet => 'Pas de porte-monnaie électronique installé';
	@override String get no_lud16 => 'Pas d\'adresse éclair trouvée';
}

// Path: profile.edit
class _TranslationsProfileEditFr implements TranslationsProfileEditEn {
	_TranslationsProfileEditFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nom d\'affichage';
	@override String get about => 'À propos';
	@override String get nip05 => 'Adresse Nostr';
	@override String get lud16 => 'Adresse Lightning';
	@override late final _TranslationsProfileEditErrorFr error = _TranslationsProfileEditErrorFr._(_root);
}

// Path: login.error
class _TranslationsLoginErrorFr implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Clé non valide';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteFr implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteFr._(this._root);

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
class _TranslationsStreamChatBadgeFr implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations

	/// Titre sur la liste des utilisateurs qui ont reçu un badge
	@override String get awarded_to => 'Attribué à :';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidFr implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations

	/// Message de raid par chat vers un autre flux
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Message de raid sur le chat à partir d'un autre flux
	@override String from({ required Object name}) => 'RAID FROM ${name}';

	/// Compte à rebours pour l'auto-raid
	@override String countdown({ required Object time}) => 'Raid sur ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorFr implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Impossible de modifier le profil lorsque l\'on est déconnecté';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Télécharger l\'avatar';
			case 'most_zapped_streamers': return 'Les Streamers les plus zappés';
			case 'no_user_found': return 'Aucun utilisateur trouvé';
			case 'anon': return 'Anonyme';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: '1 téléspectateur',
				other: '${n} spectateurs',
			);
			case 'stream.status.live': return 'VIVRE';
			case 'stream.status.ended': return 'FINI';
			case 'stream.status.planned': return 'PRÉVU';
			case 'stream.started': return ({ required Object timestamp}) => 'Commencé à ${timestamp}';
			case 'stream.chat.disabled': return 'CHAT DISABLED';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Le délai expire : ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' '),
				user,
				const TextSpan(text: ' a expiré dans le temps pour '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'STREAM ENDED';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' a zappé '),
				amount,
				const TextSpan(text: ' sats'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Message écrit';
			case 'stream.chat.write.no_signer': return 'Impossible d\'écrire des messages avec le login npub';
			case 'stream.chat.write.login': return 'Veuillez vous connecter pour envoyer des messages';
			case 'stream.chat.badge.awarded_to': return 'Attribué à :';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Raid sur ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Objectif : ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Reste : ${amount}';
			case 'goal.complete': return 'COMPLET';
			case 'button.login': return 'Se Connecter';
			case 'button.logout': return 'Se déconnecter';
			case 'button.edit_profile': return 'Modifier le Profil';
			case 'button.follow': return 'Suivre';
			case 'button.unfollow': return 'Ne plus suivre';
			case 'button.mute': return 'Muet';
			case 'button.unmute': return 'Retirer sourdine';
			case 'button.share': return 'Partager';
			case 'button.save': return 'Sauvegarder';
			case 'embed.article_by': return ({ required Object name}) => 'Article par ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Note par ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Retransmission en direct sur ${name}';
			case 'stream_list.following': return 'Abonnements';
			case 'stream_list.live': return 'En direct';
			case 'stream_list.planned': return 'Planifié';
			case 'stream_list.ended': return 'Terminé';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Montant personnalisé';
			case 'zap.confirm': return 'Confirmer';
			case 'zap.comment': return 'Commenter';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zapper ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Ouvrir dans le portefeuille';
			case 'zap.copy': return 'Copié dans le presse-papiers';
			case 'zap.error.invalid_custom_amount': return 'Montant personnalisé non valide';
			case 'zap.error.no_wallet': return 'Pas de porte-monnaie électronique installé';
			case 'zap.error.no_lud16': return 'Pas d\'adresse éclair trouvée';
			case 'profile.past_streams': return 'Streams passés';
			case 'profile.edit.display_name': return 'Nom d\'affichage';
			case 'profile.edit.about': return 'À propos';
			case 'profile.edit.nip05': return 'Adresse Nostr';
			case 'profile.edit.lud16': return 'Adresse Lightning';
			case 'profile.edit.error.logged_out': return 'Impossible de modifier le profil lorsque l\'on est déconnecté';
			case 'login.username': return 'Nom d’utilisateur';
			case 'login.amber': return 'Se connecter avec Amber';
			case 'login.key': return 'Connexion avec la clé';
			case 'login.create': return 'Créer un Compte';
			case 'login.error.invalid_key': return 'Clé non valide';
			default: return null;
		}
	}
}

