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
class TranslationsPt implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	@override 
	TranslationsPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPt(meta: meta ?? this.$meta);

	// Translations

	/// Texto solicitando que o usuário clique no espaço reservado do avatar para iniciar o upload
	@override String get upload_avatar => 'Carregar Avatar';

	/// Dirigindo-se para as principais serpentinas listadas por zaps
	@override String get most_zapped_streamers => 'Streamers mais afetados';

	/// Nenhum usuário foi encontrado durante a pesquisa
	@override String get no_user_found => 'Nenhum usuário encontrado';

	/// Um usuário anônimo
	@override String get anon => 'Anônimo';

	/// Número de espectadores da transmissão
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '1 visualizador',
		other: '${n} espectadores',
	);

	@override late final _TranslationsStreamPt stream = _TranslationsStreamPt._(_root);
	@override late final _TranslationsGoalPt goal = _TranslationsGoalPt._(_root);
	@override late final _TranslationsButtonPt button = _TranslationsButtonPt._(_root);
	@override late final _TranslationsEmbedPt embed = _TranslationsEmbedPt._(_root);

	/// Cabeçalhos nas listas de transmissões por tipo de transmissão ao vivo/terminada/planejada etc.
	@override late final _TranslationsStreamListPt stream_list = _TranslationsStreamListPt._(_root);

	@override late final _TranslationsZapPt zap = _TranslationsZapPt._(_root);
	@override late final _TranslationsProfilePt profile = _TranslationsProfilePt._(_root);
	@override late final _TranslationsLoginPt login = _TranslationsLoginPt._(_root);
}

// Path: stream
class _TranslationsStreamPt implements TranslationsStreamEn {
	_TranslationsStreamPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusPt status = _TranslationsStreamStatusPt._(_root);
	@override String started({ required Object timestamp}) => 'Iniciado em ${timestamp}';
	@override late final _TranslationsStreamChatPt chat = _TranslationsStreamChatPt._(_root);
}

// Path: goal
class _TranslationsGoalPt implements TranslationsGoalEn {
	_TranslationsGoalPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Meta: ${amount}';
	@override String remaining({ required Object amount}) => 'Restante: ${amount}';
	@override String get complete => 'COMPLETO';
}

// Path: button
class _TranslationsButtonPt implements TranslationsButtonEn {
	_TranslationsButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations

	/// Texto do botão para o botão de login
	@override String get login => 'Entrar';

	@override String get logout => 'Sair';
	@override String get edit_profile => 'Editar perfil';

	/// Texto do botão para o botão Seguir
	@override String get follow => 'Seguir';

	/// Texto do botão para o botão deixar de seguir
	@override String get unfollow => 'Deixar de seguir';

	@override String get mute => 'Silenciar';
	@override String get unmute => 'Desmutar';
	@override String get share => 'Compartilhar';
	@override String get save => 'Salvar';
}

// Path: embed
class _TranslationsEmbedPt implements TranslationsEmbedEn {
	_TranslationsEmbedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Artigo de ${name}';
	@override String note_by({ required Object name}) => 'Nota de ${name}';
	@override String live_stream_by({ required Object name}) => 'Transmissão ao vivo pelo site ${name}';
}

// Path: stream_list
class _TranslationsStreamListPt implements TranslationsStreamListEn {
	_TranslationsStreamListPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get following => 'Seguindo';
	@override String get live => 'Ao vivo';
	@override String get planned => 'Planejado';
	@override String get ended => 'Encerrado';
}

// Path: zap
class _TranslationsZapPt implements TranslationsZapEn {
	_TranslationsZapPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Valor personalizado';
	@override String get confirm => 'Confirmar';
	@override String get comment => 'Comentar';
	@override String button_zap_ready({ required Object amount}) => 'Enviar Zap de ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Abrir na carteira';
	@override String get copy => 'Copiado para a área de transferência';
	@override late final _TranslationsZapErrorPt error = _TranslationsZapErrorPt._(_root);
}

// Path: profile
class _TranslationsProfilePt implements TranslationsProfileEn {
	_TranslationsProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Transmissões Passadas';
	@override late final _TranslationsProfileEditPt edit = _TranslationsProfileEditPt._(_root);
}

// Path: login
class _TranslationsLoginPt implements TranslationsLoginEn {
	_TranslationsLoginPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nome de usuário';
	@override String get amber => 'Faça login com o Amber';
	@override String get key => 'Login com chave';
	@override String get create => 'Criar Conta';
	@override late final _TranslationsLoginErrorPt error = _TranslationsLoginErrorPt._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusPt implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get live => 'AO VIVO';
	@override String get ended => 'FINALIZADO';
	@override String get planned => 'PLANEJADO';
}

// Path: stream.chat
class _TranslationsStreamChatPt implements TranslationsStreamChatEn {
	_TranslationsStreamChatPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'BATE-PAPO DESATIVADO';
	@override String disabled_timeout({ required Object time}) => 'O tempo limite expira: ${time}';

	/// Mensagem de bate-papo mostrando eventos de tempo limite
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' Tempo esgotado '),
		user,
		const TextSpan(text: ' para '),
		time,
	], style: style, recognizer: recognizer);

	/// O rodapé do fluxo terminou na parte inferior do bate-papo
	@override String get ended => 'TRANSMISSÃO ENCERRADA';

	/// Mensagem de bate-papo mostrando zaps de fluxo
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapeou '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWritePt write = _TranslationsStreamChatWritePt._(_root);
	@override late final _TranslationsStreamChatBadgePt badge = _TranslationsStreamChatBadgePt._(_root);
	@override late final _TranslationsStreamChatRaidPt raid = _TranslationsStreamChatRaidPt._(_root);
}

// Path: zap.error
class _TranslationsZapErrorPt implements TranslationsZapErrorEn {
	_TranslationsZapErrorPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Valor personalizado inválido';
	@override String get no_wallet => 'Nenhuma carteira lightning instalada';
	@override String get no_lud16 => 'Nenhum endereço de raio encontrado';
}

// Path: profile.edit
class _TranslationsProfileEditPt implements TranslationsProfileEditEn {
	_TranslationsProfileEditPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nome de exibição';
	@override String get about => 'Sobre';
	@override String get nip05 => 'Endereço do Nostr';
	@override String get lud16 => 'Endereço Lightning';
	@override late final _TranslationsProfileEditErrorPt error = _TranslationsProfileEditErrorPt._(_root);
}

// Path: login.error
class _TranslationsLoginErrorPt implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Chave inválida';
}

// Path: stream.chat.write
class _TranslationsStreamChatWritePt implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWritePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations

	/// Rótulo na caixa de entrada da mensagem de bate-papo
	@override String get label => 'Escrever mensagem';

	/// Mensagem de entrada de bate-papo exibida quando o usuário está conectado apenas com a pubkey
	@override String get no_signer => 'Não é possível escrever mensagens com o login do npub';

	/// Mensagem de entrada de chat exibida quando o usuário está desconectado
	@override String get login => 'Faça login para enviar mensagens';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgePt implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations

	/// Cabeçalho sobre a lista de usuários que receberam um emblema
	@override String get awarded_to => 'Prêmio concedido a:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidPt implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations

	/// Mensagem de invasão de bate-papo para outro fluxo
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Mensagem de invasão de bate-papo de outro fluxo
	@override String from({ required Object name}) => 'RAID DE ${name}';

	/// Cronômetro de contagem regressiva para o ataque automático
	@override String countdown({ required Object time}) => 'Incursões em ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorPt implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Não é possível editar o perfil quando se está desconectado';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Carregar Avatar';
			case 'most_zapped_streamers': return 'Streamers mais afetados';
			case 'no_user_found': return 'Nenhum usuário encontrado';
			case 'anon': return 'Anônimo';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
				one: '1 visualizador',
				other: '${n} espectadores',
			);
			case 'stream.status.live': return 'AO VIVO';
			case 'stream.status.ended': return 'FINALIZADO';
			case 'stream.status.planned': return 'PLANEJADO';
			case 'stream.started': return ({ required Object timestamp}) => 'Iniciado em ${timestamp}';
			case 'stream.chat.disabled': return 'BATE-PAPO DESATIVADO';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'O tempo limite expira: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' Tempo esgotado '),
				user,
				const TextSpan(text: ' para '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'TRANSMISSÃO ENCERRADA';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapeou '),
				amount,
				const TextSpan(text: ' sats'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Escrever mensagem';
			case 'stream.chat.write.no_signer': return 'Não é possível escrever mensagens com o login do npub';
			case 'stream.chat.write.login': return 'Faça login para enviar mensagens';
			case 'stream.chat.badge.awarded_to': return 'Prêmio concedido a:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID DE ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Incursões em ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Meta: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Restante: ${amount}';
			case 'goal.complete': return 'COMPLETO';
			case 'button.login': return 'Entrar';
			case 'button.logout': return 'Sair';
			case 'button.edit_profile': return 'Editar perfil';
			case 'button.follow': return 'Seguir';
			case 'button.unfollow': return 'Deixar de seguir';
			case 'button.mute': return 'Silenciar';
			case 'button.unmute': return 'Desmutar';
			case 'button.share': return 'Compartilhar';
			case 'button.save': return 'Salvar';
			case 'embed.article_by': return ({ required Object name}) => 'Artigo de ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Nota de ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Transmissão ao vivo pelo site ${name}';
			case 'stream_list.following': return 'Seguindo';
			case 'stream_list.live': return 'Ao vivo';
			case 'stream_list.planned': return 'Planejado';
			case 'stream_list.ended': return 'Encerrado';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Valor personalizado';
			case 'zap.confirm': return 'Confirmar';
			case 'zap.comment': return 'Comentar';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Enviar Zap de ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Abrir na carteira';
			case 'zap.copy': return 'Copiado para a área de transferência';
			case 'zap.error.invalid_custom_amount': return 'Valor personalizado inválido';
			case 'zap.error.no_wallet': return 'Nenhuma carteira lightning instalada';
			case 'zap.error.no_lud16': return 'Nenhum endereço de raio encontrado';
			case 'profile.past_streams': return 'Transmissões Passadas';
			case 'profile.edit.display_name': return 'Nome de exibição';
			case 'profile.edit.about': return 'Sobre';
			case 'profile.edit.nip05': return 'Endereço do Nostr';
			case 'profile.edit.lud16': return 'Endereço Lightning';
			case 'profile.edit.error.logged_out': return 'Não é possível editar o perfil quando se está desconectado';
			case 'login.username': return 'Nome de usuário';
			case 'login.amber': return 'Faça login com o Amber';
			case 'login.key': return 'Login com chave';
			case 'login.create': return 'Criar Conta';
			case 'login.error.invalid_key': return 'Chave inválida';
			default: return null;
		}
	}
}

