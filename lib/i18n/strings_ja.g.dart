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
class TranslationsJa extends Translations with BaseTranslations<AppLocale, Translations> {
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
	@override String get upload_avatar => '画像アップロード';

	/// ザップによるリストの上のストリーマーに向かう
	@override String get most_zapped_streamers => '最もザッピングされたストリーマー';

	/// 検索してもユーザーが見つからない
	@override String get no_user_found => 'ユーザーが見つかりません';

	/// 匿名ユーザー
	@override String get anon => '匿名';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('ja').format(n)} サッツ';

	/// ストリームの視聴者数
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '1 視聴者',
		other: '${NumberFormat.decimalPattern('ja').format(n)} 人が視聴中',
	);

	@override late final _Translations$stream$ja stream = _Translations$stream$ja._(_root);
	@override late final _Translations$goal$ja goal = _Translations$goal$ja._(_root);
	@override late final _Translations$button$ja button = _Translations$button$ja._(_root);
	@override late final _Translations$embed$ja embed = _Translations$embed$ja._(_root);

	/// ライブ／終了／予定など、ストリーム・タイプ別のストリーム・リストの見出し。
	@override late final _Translations$stream_list$ja stream_list = _Translations$stream_list$ja._(_root);

	@override late final _Translations$zap$ja zap = _Translations$zap$ja._(_root);
	@override late final _Translations$profile$ja profile = _Translations$profile$ja._(_root);
	@override late final _Translations$settings$ja settings = _Translations$settings$ja._(_root);
	@override late final _Translations$login$ja login = _Translations$login$ja._(_root);
	@override late final _Translations$live$ja live = _Translations$live$ja._(_root);
}

// Path: stream
class _Translations$stream$ja extends Translations$stream$en {
	_Translations$stream$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$ja status = _Translations$stream$status$ja._(_root);
	@override String started({required Object timestamp}) => '${timestamp} を開始';
	@override String notification({required Object name}) => '${name} がライブを開始した！';
	@override late final _Translations$stream$chat$ja chat = _Translations$stream$chat$ja._(_root);
}

// Path: goal
class _Translations$goal$ja extends Translations$goal$en {
	_Translations$goal$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => '目標額： ${amount}';
	@override String remaining({required Object amount}) => '残り： ${amount}';
	@override String get complete => '完了';
}

// Path: button
class _Translations$button$ja extends Translations$button$en {
	_Translations$button$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$embed$ja extends Translations$embed$en {
	_Translations$embed$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => '記事： ${name}';
	@override String note_by({required Object name}) => '${name} の投稿';
	@override String live_stream_by({required Object name}) => 'ライブ・ストリーム ${name}';
}

// Path: stream_list
class _Translations$stream_list$ja extends Translations$stream_list$en {
	_Translations$stream_list$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get following => 'フォロー中';
	@override String get live => 'ライブ配信中';
	@override String get planned => '予定あり';
	@override String get ended => '終了しました';
}

// Path: zap
class _Translations$zap$ja extends Translations$zap$en {
	_Translations$zap$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
	@override late final _Translations$zap$error$ja error = _Translations$zap$error$ja._(_root);
}

// Path: profile
class _Translations$profile$ja extends Translations$profile$en {
	_Translations$profile$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get past_streams => '過去の配信';
}

// Path: settings
class _Translations$settings$ja extends Translations$settings$en {
	_Translations$settings$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'プロフィール編集';
	@override String get button_wallet => 'ウォレットの設定';
	@override late final _Translations$settings$profile$ja profile = _Translations$settings$profile$ja._(_root);
	@override late final _Translations$settings$wallet$ja wallet = _Translations$settings$wallet$ja._(_root);
}

// Path: login
class _Translations$login$ja extends Translations$login$en {
	_Translations$login$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get username => 'ユーザー名';
	@override String get amber => '琥珀でログイン';
	@override String get key => 'キーでログイン';
	@override String get create => 'アカウントを作成する';
	@override late final _Translations$login$error$ja error = _Translations$login$error$ja._(_root);
}

// Path: live
class _Translations$live$ja extends Translations$live$en {
	_Translations$live$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get start => 'ライブ中継';
	@override String get configure_stream => 'ストリームの設定';
	@override String get endpoint => 'エンドポイント';
	@override String get accept_tos => 'TOSを受け入れる';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'タイトル';
	@override String get summary => '概要';
	@override String get image => '表紙画像';
	@override String get tags => 'タグ';
	@override String get nsfw => 'NSFWコンテンツ';
	@override String get nsfw_description => 'このストリームにヌードやポルノが含まれている場合は、ここをチェックしてください。';
	@override late final _Translations$live$error$ja error = _Translations$live$error$ja._(_root);
}

// Path: stream.status
class _Translations$stream$status$ja extends Translations$stream$status$en {
	_Translations$stream$status$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get live => 'ライブ';
	@override String get ended => '終了';
	@override String get planned => '予定';
}

// Path: stream.chat
class _Translations$stream$chat$ja extends Translations$stream$chat$en {
	_Translations$stream$chat$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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

	@override late final _Translations$stream$chat$write$ja write = _Translations$stream$chat$write$ja._(_root);
	@override late final _Translations$stream$chat$badge$ja badge = _Translations$stream$chat$badge$ja._(_root);
	@override late final _Translations$stream$chat$raid$ja raid = _Translations$stream$chat$raid$ja._(_root);
}

// Path: zap.error
class _Translations$zap$error$ja extends Translations$zap$error$en {
	_Translations$zap$error$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => '無効なカスタム金額';
	@override String get no_wallet => 'Lightningウォレット未装着';
	@override String get no_lud16 => '雷アドレスが見つかりません';
}

// Path: settings.profile
class _Translations$settings$profile$ja extends Translations$settings$profile$en {
	_Translations$settings$profile$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get display_name => '表示名';
	@override String get about => 'について';
	@override String get nip05 => '住所';
	@override String get lud16 => 'ライトニングアドレス';
	@override late final _Translations$settings$profile$error$ja error = _Translations$settings$profile$error$ja._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$ja extends Translations$settings$wallet$en {
	_Translations$settings$wallet$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'コネクトウォレット（NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'ウォレットの切断';
	@override String get connect_1tap => '1タップ接続';
	@override String get paste => 'URLを貼り付ける';
	@override String get balance => 'バランス';
	@override String get name => '財布';
	@override late final _Translations$settings$wallet$error$ja error = _Translations$settings$wallet$error$ja._(_root);
}

// Path: login.error
class _Translations$login$error$ja extends Translations$login$error$en {
	_Translations$login$error$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => '無効なキー';
}

// Path: live.error
class _Translations$live$error$ja extends Translations$live$error$en {
	_Translations$live$error$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get failed => 'ストリーム失敗';
	@override String get connection_error => '接続エラー';
	@override String get start_failed => 'ストリームの開始に失敗しました。';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$ja extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$ja extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations

	/// バッジを授与されたユーザーのリスト上の見出し
	@override String get awarded_to => '受賞者';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$ja extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$settings$profile$error$ja extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'ログアウトするとプロフィールが編集できない';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$ja extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'ログアウト時にウォレットに接続できない';
	@override String get nwc_auth_event_not_found => 'ウォレットの認証イベントが見つかりません';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => '画像アップロード',
			'most_zapped_streamers' => '最もザッピングされたストリーマー',
			'no_user_found' => 'ユーザーが見つかりません',
			'anon' => '匿名',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('ja').format(n)} サッツ',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '1 視聴者', other: '${NumberFormat.decimalPattern('ja').format(n)} 人が視聴中', ), 
			'stream.status.live' => 'ライブ',
			'stream.status.ended' => '終了',
			'stream.status.planned' => '予定',
			'stream.started' => ({required Object timestamp}) => '${timestamp} を開始',
			'stream.notification' => ({required Object name}) => '${name} がライブを開始した！',
			'stream.chat.disabled' => 'チャット無効',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'タイムアウト： ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' タイムアウト '), user, const TextSpan(text: ' for '), time, ]), 
			'stream.chat.ended' => '配信終了',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' が '), amount, const TextSpan(text: ' sats をザップしました'), ]), 
			'stream.chat.write.label' => 'メッセージを書く',
			'stream.chat.write.no_signer' => 'npubログインでメッセージが書けない',
			'stream.chat.write.login' => 'メッセージを送信するにはログインしてください',
			'stream.chat.badge.awarded_to' => '受賞者',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => '${time}における襲撃',
			'goal.title' => ({required Object amount}) => '目標額： ${amount}',
			'goal.remaining' => ({required Object amount}) => '残り： ${amount}',
			'goal.complete' => '完了',
			'button.login' => 'ログイン',
			'button.logout' => 'ログアウト',
			'button.edit_profile' => 'プロフィールを編集',
			'button.follow' => 'フォロー',
			'button.unfollow' => 'フォロー解除',
			'button.mute' => 'ミュート',
			'button.unmute' => 'ミュート解除',
			'button.share' => '共有',
			'button.save' => '保存',
			'button.connect' => '接続',
			'button.settings' => '設定',
			'embed.article_by' => ({required Object name}) => '記事： ${name}',
			'embed.note_by' => ({required Object name}) => '${name} の投稿',
			'embed.live_stream_by' => ({required Object name}) => 'ライブ・ストリーム ${name}',
			'stream_list.following' => 'フォロー中',
			'stream_list.live' => 'ライブ配信中',
			'stream_list.planned' => '予定あり',
			'stream_list.ended' => '終了しました',
			'zap.title' => ({required Object name}) => '${name} をザップ',
			'zap.custom_amount' => 'カスタム金額',
			'zap.confirm' => '確認',
			'zap.comment' => 'コメント',
			'zap.button_zap_ready' => ({required Object amount}) => '${amount} satsをザップする',
			'zap.button_zap' => 'ザップ',
			'zap.button_open_wallet' => 'ウォレットで開く',
			'zap.button_connect_wallet' => 'コネクトウォレット',
			'zap.copy' => 'クリップボードにコピー',
			'zap.error.invalid_custom_amount' => '無効なカスタム金額',
			'zap.error.no_wallet' => 'Lightningウォレット未装着',
			'zap.error.no_lud16' => '雷アドレスが見つかりません',
			'profile.past_streams' => '過去の配信',
			'settings.button_profile' => 'プロフィール編集',
			'settings.button_wallet' => 'ウォレットの設定',
			'settings.profile.display_name' => '表示名',
			'settings.profile.about' => 'について',
			'settings.profile.nip05' => '住所',
			'settings.profile.lud16' => 'ライトニングアドレス',
			'settings.profile.error.logged_out' => 'ログアウトするとプロフィールが編集できない',
			'settings.wallet.connect_wallet' => 'コネクトウォレット（NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'ウォレットの切断',
			'settings.wallet.connect_1tap' => '1タップ接続',
			'settings.wallet.paste' => 'URLを貼り付ける',
			'settings.wallet.balance' => 'バランス',
			'settings.wallet.name' => '財布',
			'settings.wallet.error.logged_out' => 'ログアウト時にウォレットに接続できない',
			'settings.wallet.error.nwc_auth_event_not_found' => 'ウォレットの認証イベントが見つかりません',
			'login.username' => 'ユーザー名',
			'login.amber' => '琥珀でログイン',
			'login.key' => 'キーでログイン',
			'login.create' => 'アカウントを作成する',
			'login.error.invalid_key' => '無効なキー',
			'live.start' => 'ライブ中継',
			'live.configure_stream' => 'ストリームの設定',
			'live.endpoint' => 'エンドポイント',
			'live.accept_tos' => 'TOSを受け入れる',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'タイトル',
			'live.summary' => '概要',
			'live.image' => '表紙画像',
			'live.tags' => 'タグ',
			'live.nsfw' => 'NSFWコンテンツ',
			'live.nsfw_description' => 'このストリームにヌードやポルノが含まれている場合は、ここをチェックしてください。',
			'live.error.failed' => 'ストリーム失敗',
			'live.error.connection_error' => '接続エラー',
			'live.error.start_failed' => 'ストリームの開始に失敗しました。',
			_ => null,
		};
	}
}
