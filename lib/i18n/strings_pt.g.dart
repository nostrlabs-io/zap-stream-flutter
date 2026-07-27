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
class TranslationsPt extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('pt').format(n)} sats';

	/// Número de espectadores da transmissão
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '1 visualizador',
		other: '${NumberFormat.decimalPattern('pt').format(n)} espectadores',
	);

	@override late final _Translations$stream$pt stream = _Translations$stream$pt._(_root);
	@override late final _Translations$goal$pt goal = _Translations$goal$pt._(_root);
	@override late final _Translations$button$pt button = _Translations$button$pt._(_root);
	@override late final _Translations$embed$pt embed = _Translations$embed$pt._(_root);

	/// Cabeçalhos nas listas de transmissões por tipo de transmissão ao vivo/terminada/planejada etc.
	@override late final _Translations$stream_list$pt stream_list = _Translations$stream_list$pt._(_root);

	@override late final _Translations$zap$pt zap = _Translations$zap$pt._(_root);
	@override late final _Translations$profile$pt profile = _Translations$profile$pt._(_root);
	@override late final _Translations$settings$pt settings = _Translations$settings$pt._(_root);
	@override late final _Translations$login$pt login = _Translations$login$pt._(_root);
	@override late final _Translations$live$pt live = _Translations$live$pt._(_root);
}

// Path: stream
class _Translations$stream$pt extends Translations$stream$en {
	_Translations$stream$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$pt status = _Translations$stream$status$pt._(_root);
	@override String started({required Object timestamp}) => 'Iniciado em ${timestamp}';
	@override String notification({required Object name}) => '${name} foi ao ar!';
	@override late final _Translations$stream$chat$pt chat = _Translations$stream$chat$pt._(_root);
}

// Path: goal
class _Translations$goal$pt extends Translations$goal$en {
	_Translations$goal$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Meta: ${amount}';
	@override String remaining({required Object amount}) => 'Restante: ${amount}';
	@override String get complete => 'COMPLETO';
}

// Path: button
class _Translations$button$pt extends Translations$button$en {
	_Translations$button$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
	@override String get connect => 'Conectar';
	@override String get settings => 'Configurações';
}

// Path: embed
class _Translations$embed$pt extends Translations$embed$en {
	_Translations$embed$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Artigo de ${name}';
	@override String note_by({required Object name}) => 'Nota de ${name}';
	@override String live_stream_by({required Object name}) => 'Transmissão ao vivo pelo site ${name}';
}

// Path: stream_list
class _Translations$stream_list$pt extends Translations$stream_list$en {
	_Translations$stream_list$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get following => 'Seguindo';
	@override String get live => 'Ao vivo';
	@override String get planned => 'Planejado';
	@override String get ended => 'Encerrado';
}

// Path: zap
class _Translations$zap$pt extends Translations$zap$en {
	_Translations$zap$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Valor personalizado';
	@override String get confirm => 'Confirmar';
	@override String get comment => 'Comentar';
	@override String button_zap_ready({required Object amount}) => 'Enviar Zap de ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Abrir na carteira';
	@override String get button_connect_wallet => 'Conectar carteira';
	@override String get copy => 'Copiado para a área de transferência';
	@override late final _Translations$zap$error$pt error = _Translations$zap$error$pt._(_root);
}

// Path: profile
class _Translations$profile$pt extends Translations$profile$en {
	_Translations$profile$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Transmissões Passadas';
}

// Path: settings
class _Translations$settings$pt extends Translations$settings$en {
	_Translations$settings$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Editar perfil';
	@override String get button_wallet => 'Configurações da carteira';
	@override late final _Translations$settings$profile$pt profile = _Translations$settings$profile$pt._(_root);
	@override late final _Translations$settings$wallet$pt wallet = _Translations$settings$wallet$pt._(_root);
}

// Path: login
class _Translations$login$pt extends Translations$login$en {
	_Translations$login$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get username => 'Nome de usuário';
	@override String get amber => 'Faça login com o Amber';
	@override String get key => 'Login com chave';
	@override String get create => 'Criar Conta';
	@override late final _Translations$login$error$pt error = _Translations$login$error$pt._(_root);
}

// Path: live
class _Translations$live$pt extends Translations$live$en {
	_Translations$live$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get start => 'GO LIVE';
	@override String get configure_stream => 'Configurar fluxo';
	@override String get endpoint => 'Ponto final';
	@override String get accept_tos => 'Aceitar os Termos de Serviço';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Título';
	@override String get summary => 'Resumo';
	@override String get image => 'Imagem da capa';
	@override String get tags => 'Tags';
	@override String get nsfw => 'Conteúdo NSFW';
	@override String get nsfw_description => 'Verifique aqui se essa transmissão contém nudez ou conteúdo pornográfico.';
	@override late final _Translations$live$error$pt error = _Translations$live$error$pt._(_root);
}

// Path: stream.status
class _Translations$stream$status$pt extends Translations$stream$status$en {
	_Translations$stream$status$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get live => 'AO VIVO';
	@override String get ended => 'FINALIZADO';
	@override String get planned => 'PLANEJADO';
}

// Path: stream.chat
class _Translations$stream$chat$pt extends Translations$stream$chat$en {
	_Translations$stream$chat$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'BATE-PAPO DESATIVADO';
	@override String disabled_timeout({required Object time}) => 'O tempo limite expira: ${time}';

	/// Mensagem de bate-papo mostrando eventos de tempo limite
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' Tempo esgotado '),
		user,
		const TextSpan(text: ' para '),
		time,
	]);

	/// O rodapé do fluxo terminou na parte inferior do bate-papo
	@override String get ended => 'TRANSMISSÃO ENCERRADA';

	/// Mensagem de bate-papo mostrando zaps de fluxo
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapeou '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$pt write = _Translations$stream$chat$write$pt._(_root);
	@override late final _Translations$stream$chat$badge$pt badge = _Translations$stream$chat$badge$pt._(_root);
	@override late final _Translations$stream$chat$raid$pt raid = _Translations$stream$chat$raid$pt._(_root);
}

// Path: zap.error
class _Translations$zap$error$pt extends Translations$zap$error$en {
	_Translations$zap$error$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Valor personalizado inválido';
	@override String get no_wallet => 'Nenhuma carteira lightning instalada';
	@override String get no_lud16 => 'Nenhum endereço de raio encontrado';
}

// Path: settings.profile
class _Translations$settings$profile$pt extends Translations$settings$profile$en {
	_Translations$settings$profile$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Nome de exibição';
	@override String get about => 'Sobre';
	@override String get nip05 => 'Endereço Nostr';
	@override String get lud16 => 'Endereço para relâmpagos';
	@override late final _Translations$settings$profile$error$pt error = _Translations$settings$profile$error$pt._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$pt extends Translations$settings$wallet$en {
	_Translations$settings$wallet$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Carteira Connect (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Desconectar carteira';
	@override String get connect_1tap => 'Conexão de 1 torneira';
	@override String get paste => 'Colar URL';
	@override String get balance => 'Equilíbrio';
	@override String get name => 'Carteira';
	@override late final _Translations$settings$wallet$error$pt error = _Translations$settings$wallet$error$pt._(_root);
}

// Path: login.error
class _Translations$login$error$pt extends Translations$login$error$en {
	_Translations$login$error$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Chave inválida';
}

// Path: live.error
class _Translations$live$error$pt extends Translations$live$error$en {
	_Translations$live$error$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get failed => 'O fluxo falhou';
	@override String get connection_error => 'Erro de conexão';
	@override String get start_failed => 'Falha no início do fluxo, verifique seu saldo';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$pt extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$pt extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations

	/// Cabeçalho sobre a lista de usuários que receberam um emblema
	@override String get awarded_to => 'Prêmio concedido a:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$pt extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations

	/// Mensagem de invasão de bate-papo para outro fluxo
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Mensagem de invasão de bate-papo de outro fluxo
	@override String from({required Object name}) => 'RAID DE ${name}';

	/// Cronômetro de contagem regressiva para o ataque automático
	@override String countdown({required Object time}) => 'Incursões em ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$pt extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Não é possível editar o perfil quando se está desconectado';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$pt extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Não consigo conectar a carteira quando estou desconectado';
	@override String get nwc_auth_event_not_found => 'Nenhum evento de autenticação de carteira encontrado';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Carregar Avatar',
			'most_zapped_streamers' => 'Streamers mais afetados',
			'no_user_found' => 'Nenhum usuário encontrado',
			'anon' => 'Anônimo',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('pt').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '1 visualizador', other: '${NumberFormat.decimalPattern('pt').format(n)} espectadores', ), 
			'stream.status.live' => 'AO VIVO',
			'stream.status.ended' => 'FINALIZADO',
			'stream.status.planned' => 'PLANEJADO',
			'stream.started' => ({required Object timestamp}) => 'Iniciado em ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} foi ao ar!',
			'stream.chat.disabled' => 'BATE-PAPO DESATIVADO',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'O tempo limite expira: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' Tempo esgotado '), user, const TextSpan(text: ' para '), time, ]), 
			'stream.chat.ended' => 'TRANSMISSÃO ENCERRADA',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapeou '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Escrever mensagem',
			'stream.chat.write.no_signer' => 'Não é possível escrever mensagens com o login do npub',
			'stream.chat.write.login' => 'Faça login para enviar mensagens',
			'stream.chat.badge.awarded_to' => 'Prêmio concedido a:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID DE ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Incursões em ${time}',
			'goal.title' => ({required Object amount}) => 'Meta: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Restante: ${amount}',
			'goal.complete' => 'COMPLETO',
			'button.login' => 'Entrar',
			'button.logout' => 'Sair',
			'button.edit_profile' => 'Editar perfil',
			'button.follow' => 'Seguir',
			'button.unfollow' => 'Deixar de seguir',
			'button.mute' => 'Silenciar',
			'button.unmute' => 'Desmutar',
			'button.share' => 'Compartilhar',
			'button.save' => 'Salvar',
			'button.connect' => 'Conectar',
			'button.settings' => 'Configurações',
			'embed.article_by' => ({required Object name}) => 'Artigo de ${name}',
			'embed.note_by' => ({required Object name}) => 'Nota de ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Transmissão ao vivo pelo site ${name}',
			'stream_list.following' => 'Seguindo',
			'stream_list.live' => 'Ao vivo',
			'stream_list.planned' => 'Planejado',
			'stream_list.ended' => 'Encerrado',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Valor personalizado',
			'zap.confirm' => 'Confirmar',
			'zap.comment' => 'Comentar',
			'zap.button_zap_ready' => ({required Object amount}) => 'Enviar Zap de ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Abrir na carteira',
			'zap.button_connect_wallet' => 'Conectar carteira',
			'zap.copy' => 'Copiado para a área de transferência',
			'zap.error.invalid_custom_amount' => 'Valor personalizado inválido',
			'zap.error.no_wallet' => 'Nenhuma carteira lightning instalada',
			'zap.error.no_lud16' => 'Nenhum endereço de raio encontrado',
			'profile.past_streams' => 'Transmissões Passadas',
			'settings.button_profile' => 'Editar perfil',
			'settings.button_wallet' => 'Configurações da carteira',
			'settings.profile.display_name' => 'Nome de exibição',
			'settings.profile.about' => 'Sobre',
			'settings.profile.nip05' => 'Endereço Nostr',
			'settings.profile.lud16' => 'Endereço para relâmpagos',
			'settings.profile.error.logged_out' => 'Não é possível editar o perfil quando se está desconectado',
			'settings.wallet.connect_wallet' => 'Carteira Connect (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Desconectar carteira',
			'settings.wallet.connect_1tap' => 'Conexão de 1 torneira',
			'settings.wallet.paste' => 'Colar URL',
			'settings.wallet.balance' => 'Equilíbrio',
			'settings.wallet.name' => 'Carteira',
			'settings.wallet.error.logged_out' => 'Não consigo conectar a carteira quando estou desconectado',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Nenhum evento de autenticação de carteira encontrado',
			'login.username' => 'Nome de usuário',
			'login.amber' => 'Faça login com o Amber',
			'login.key' => 'Login com chave',
			'login.create' => 'Criar Conta',
			'login.error.invalid_key' => 'Chave inválida',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Configurar fluxo',
			'live.endpoint' => 'Ponto final',
			'live.accept_tos' => 'Aceitar os Termos de Serviço',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Título',
			'live.summary' => 'Resumo',
			'live.image' => 'Imagem da capa',
			'live.tags' => 'Tags',
			'live.nsfw' => 'Conteúdo NSFW',
			'live.nsfw_description' => 'Verifique aqui se essa transmissão contém nudez ou conteúdo pornográfico.',
			'live.error.failed' => 'O fluxo falhou',
			'live.error.connection_error' => 'Erro de conexão',
			'live.error.start_failed' => 'Falha no início do fluxo, verifique seu saldo',
			_ => null,
		};
	}
}
