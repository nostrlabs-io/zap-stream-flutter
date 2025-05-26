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
class TranslationsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations

	/// アバターのプレースホルダーを押してアップロードを開始するよう促すテキスト
	@override String get upload_avatar => 'アバターのアップロード';

	/// ザップによるリストの上のストリーマーに向かう
	@override String get most_zapped_streamers => '最もザッピングされたストリーマー';

	/// 検索してもユーザーが見つからない
	@override String get no_user_found => 'ユーザーが見つかりません';

	/// 匿名ユーザー
	@override String get anon => '匿名';

	/// ストリームの視聴者数
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '1 視聴者',
		other: '${n} 人が視聴中',
	);

	@override late final _TranslationsStreamJa stream = _TranslationsStreamJa._(_root);
	@override late final _TranslationsGoalJa goal = _TranslationsGoalJa._(_root);
	@override late final _TranslationsButtonJa button = _TranslationsButtonJa._(_root);
	@override late final _TranslationsEmbedJa embed = _TranslationsEmbedJa._(_root);

	/// ライブ／終了／予定など、ストリーム・タイプ別のストリーム・リストの見出し。
	@override late final _TranslationsStreamListJa stream_list = _TranslationsStreamListJa._(_root);

	@override late final _TranslationsZapJa zap = _TranslationsZapJa._(_root);
	@override late final _TranslationsProfileJa profile = _TranslationsProfileJa._(_root);
	@override late final _TranslationsSettingsJa settings = _TranslationsSettingsJa._(_root);
	@override late final _TranslationsLoginJa login = _TranslationsLoginJa._(_root);
}

// Path: stream
class _TranslationsStreamJa extends TranslationsStreamEn {
	_TranslationsStreamJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusJa status = _TranslationsStreamStatusJa._(_root);
	@override String started({required Object timestamp}) => '${timestamp} を開始';
	@override late final _TranslationsStreamChatJa chat = _TranslationsStreamChatJa._(_root);
}

// Path: goal
class _TranslationsGoalJa extends TranslationsGoalEn {
	_TranslationsGoalJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => '目標額： ${amount}';
	@override String remaining({required Object amount}) => '残り： ${amount}';
	@override String get complete => '完了';
}

// Path: button
class _TranslationsButtonJa extends TranslationsButtonEn {
	_TranslationsButtonJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations

	/// ログインボタンのテキスト
	@override String get login => 'ログイン';

	@override String get logout => 'ログアウト';
	@override String get edit_profile => 'プロフィールを編集';

	/// フォローボタンのテキスト
	@override String get follow => 'フォロー';

	/// フォロー解除ボタンのテキスト
	@override String get unfollow => 'フォロー解除';

	@override String get mute => 'ミュート';
	@override String get unmute => 'ミュート解除';
	@override String get share => '共有';
	@override String get save => '保存';
	@override String get connect => '接続';
	@override String get settings => '設定';
}

// Path: embed
class _TranslationsEmbedJa extends TranslationsEmbedEn {
	_TranslationsEmbedJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => '記事： ${name}';
	@override String note_by({required Object name}) => '${name} の投稿';
	@override String live_stream_by({required Object name}) => 'ライブ・ストリーム ${name}';
}

// Path: stream_list
class _TranslationsStreamListJa extends TranslationsStreamListEn {
	_TranslationsStreamListJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get following => 'フォロー中';
	@override String get live => 'ライブ配信中';
	@override String get planned => '予定あり';
	@override String get ended => '終了しました';
}

// Path: zap
class _TranslationsZapJa extends TranslationsZapEn {
	_TranslationsZapJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => '${name} をザップ';
	@override String get custom_amount => 'カスタム金額';
	@override String get confirm => '確認';
	@override String get comment => 'コメント';
	@override String button_zap_ready({required Object amount}) => '${amount} satsをザップする';
	@override String get button_zap => 'ザップ';
	@override String get button_open_wallet => 'ウォレットで開く';
	@override String get button_connect_wallet => 'コネクトウォレット';
	@override String get copy => 'クリップボードにコピー';
	@override late final _TranslationsZapErrorJa error = _TranslationsZapErrorJa._(_root);
}

// Path: profile
class _TranslationsProfileJa extends TranslationsProfileEn {
	_TranslationsProfileJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get past_streams => '過去の配信';
}

// Path: settings
class _TranslationsSettingsJa extends TranslationsSettingsEn {
	_TranslationsSettingsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'プロフィール編集';
	@override String get button_wallet => 'ウォレットの設定';
	@override late final _TranslationsSettingsProfileJa profile = _TranslationsSettingsProfileJa._(_root);
	@override late final _TranslationsSettingsWalletJa wallet = _TranslationsSettingsWalletJa._(_root);
}

// Path: login
class _TranslationsLoginJa extends TranslationsLoginEn {
	_TranslationsLoginJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get username => 'ユーザー名';
	@override String get amber => '琥珀でログイン';
	@override String get key => 'キーでログイン';
	@override String get create => 'アカウントを作成する';
	@override late final _TranslationsLoginErrorJa error = _TranslationsLoginErrorJa._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusJa extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get live => 'ライブ';
	@override String get ended => '終了';
	@override String get planned => '予定';
}

// Path: stream.chat
class _TranslationsStreamChatJa extends TranslationsStreamChatEn {
	_TranslationsStreamChatJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'チャット無効';
	@override String disabled_timeout({required Object time}) => 'タイムアウト： ${time}';

	/// タイムアウトイベントを表示するチャットメッセージ
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' タイムアウト '),
		user,
		const TextSpan(text: ' for '),
		time,
	]);

	/// チャットの下にストリーム終了のフッター
	@override String get ended => '配信終了';

	/// ストリームのザッピングを表示するチャットメッセージ
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' が '),
		amount,
		const TextSpan(text: ' sats をザップしました'),
	]);

	@override late final _TranslationsStreamChatWriteJa write = _TranslationsStreamChatWriteJa._(_root);
	@override late final _TranslationsStreamChatBadgeJa badge = _TranslationsStreamChatBadgeJa._(_root);
	@override late final _TranslationsStreamChatRaidJa raid = _TranslationsStreamChatRaidJa._(_root);
}

// Path: zap.error
class _TranslationsZapErrorJa extends TranslationsZapErrorEn {
	_TranslationsZapErrorJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => '無効なカスタム金額';
	@override String get no_wallet => 'Lightningウォレット未装着';
	@override String get no_lud16 => '雷アドレスが見つかりません';
}

// Path: settings.profile
class _TranslationsSettingsProfileJa extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfileJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get display_name => '表示名';
	@override String get about => 'について';
	@override String get nip05 => '住所';
	@override String get lud16 => 'ライトニングアドレス';
	@override late final _TranslationsSettingsProfileErrorJa error = _TranslationsSettingsProfileErrorJa._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletJa extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'コネクトウォレット (NWC nwc://)';
	@override String get disconnect_wallet => 'ウォレットの切断';
	@override late final _TranslationsSettingsWalletErrorJa error = _TranslationsSettingsWalletErrorJa._(_root);
}

// Path: login.error
class _TranslationsLoginErrorJa extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => '無効なキー';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteJa extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations

	/// チャットメッセージ入力ボックスのラベル
	@override String get label => 'メッセージを書く';

	/// ユーザーがpubkeyのみでログインしている場合に表示されるチャット入力メッセージ
	@override String get no_signer => 'npubログインでメッセージが書けない';

	/// ログアウト時に表示されるチャット入力メッセージ
	@override String get login => 'メッセージを送信するにはログインしてください';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeJa extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations

	/// バッジを授与されたユーザーのリスト上の見出し
	@override String get awarded_to => '受賞者';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidJa extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations

	/// 別のストリームへのチャット襲撃メッセージ
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// 他のストリームからのチャット襲撃メッセージ
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// 自動騎乗のカウントダウン・タイマー
	@override String countdown({required Object time}) => '${time}における襲撃';
}

// Path: settings.profile.error
class _TranslationsSettingsProfileErrorJa extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'ログアウトするとプロフィールが編集できない';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorJa extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'ログアウト時にウォレットに接続できない';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'アバターのアップロード';
			case 'most_zapped_streamers': return '最もザッピングされたストリーマー';
			case 'no_user_found': return 'ユーザーが見つかりません';
			case 'anon': return '匿名';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
				one: '1 視聴者',
				other: '${n} 人が視聴中',
			);
			case 'stream.status.live': return 'ライブ';
			case 'stream.status.ended': return '終了';
			case 'stream.status.planned': return '予定';
			case 'stream.started': return ({required Object timestamp}) => '${timestamp} を開始';
			case 'stream.chat.disabled': return 'チャット無効';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'タイムアウト： ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' タイムアウト '),
				user,
				const TextSpan(text: ' for '),
				time,
			]);
			case 'stream.chat.ended': return '配信終了';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' が '),
				amount,
				const TextSpan(text: ' sats をザップしました'),
			]);
			case 'stream.chat.write.label': return 'メッセージを書く';
			case 'stream.chat.write.no_signer': return 'npubログインでメッセージが書けない';
			case 'stream.chat.write.login': return 'メッセージを送信するにはログインしてください';
			case 'stream.chat.badge.awarded_to': return '受賞者';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => '${time}における襲撃';
			case 'goal.title': return ({required Object amount}) => '目標額： ${amount}';
			case 'goal.remaining': return ({required Object amount}) => '残り： ${amount}';
			case 'goal.complete': return '完了';
			case 'button.login': return 'ログイン';
			case 'button.logout': return 'ログアウト';
			case 'button.edit_profile': return 'プロフィールを編集';
			case 'button.follow': return 'フォロー';
			case 'button.unfollow': return 'フォロー解除';
			case 'button.mute': return 'ミュート';
			case 'button.unmute': return 'ミュート解除';
			case 'button.share': return '共有';
			case 'button.save': return '保存';
			case 'button.connect': return '接続';
			case 'button.settings': return '設定';
			case 'embed.article_by': return ({required Object name}) => '記事： ${name}';
			case 'embed.note_by': return ({required Object name}) => '${name} の投稿';
			case 'embed.live_stream_by': return ({required Object name}) => 'ライブ・ストリーム ${name}';
			case 'stream_list.following': return 'フォロー中';
			case 'stream_list.live': return 'ライブ配信中';
			case 'stream_list.planned': return '予定あり';
			case 'stream_list.ended': return '終了しました';
			case 'zap.title': return ({required Object name}) => '${name} をザップ';
			case 'zap.custom_amount': return 'カスタム金額';
			case 'zap.confirm': return '確認';
			case 'zap.comment': return 'コメント';
			case 'zap.button_zap_ready': return ({required Object amount}) => '${amount} satsをザップする';
			case 'zap.button_zap': return 'ザップ';
			case 'zap.button_open_wallet': return 'ウォレットで開く';
			case 'zap.button_connect_wallet': return 'コネクトウォレット';
			case 'zap.copy': return 'クリップボードにコピー';
			case 'zap.error.invalid_custom_amount': return '無効なカスタム金額';
			case 'zap.error.no_wallet': return 'Lightningウォレット未装着';
			case 'zap.error.no_lud16': return '雷アドレスが見つかりません';
			case 'profile.past_streams': return '過去の配信';
			case 'settings.button_profile': return 'プロフィール編集';
			case 'settings.button_wallet': return 'ウォレットの設定';
			case 'settings.profile.display_name': return '表示名';
			case 'settings.profile.about': return 'について';
			case 'settings.profile.nip05': return '住所';
			case 'settings.profile.lud16': return 'ライトニングアドレス';
			case 'settings.profile.error.logged_out': return 'ログアウトするとプロフィールが編集できない';
			case 'settings.wallet.connect_wallet': return 'コネクトウォレット (NWC nwc://)';
			case 'settings.wallet.disconnect_wallet': return 'ウォレットの切断';
			case 'settings.wallet.error.logged_out': return 'ログアウト時にウォレットに接続できない';
			case 'login.username': return 'ユーザー名';
			case 'login.amber': return '琥珀でログイン';
			case 'login.key': return 'キーでログイン';
			case 'login.create': return 'アカウントを作成する';
			case 'login.error.invalid_key': return '無効なキー';
			default: return null;
		}
	}
}

