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
class TranslationsZh extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsZh _root = this; // ignore: unused_field

	@override 
	TranslationsZh $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZh(meta: meta ?? this.$meta);

	// Translations

	/// 提示使用者點擊頭像占位符開始上傳的文字
	@override String get upload_avatar => '上傳頭像';

	/// ヘッドランドから列されている頂幡からずった
	@override String get most_zapped_streamers => '最多被擊中的溪流';

	/// 搜尋時未找到使用者
	@override String get no_user_found => '未找到使用者';

	/// 匿名使用者
	@override String get anon => '匿名';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('zh').format(n)} Sats';

	/// 串流的觀看者人數
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '1 個檢視器',
		other: '${NumberFormat.decimalPattern('zh').format(n)} 觀眾',
	);

	@override late final _Translations$stream$zh stream = _Translations$stream$zh._(_root);
	@override late final _Translations$goal$zh goal = _Translations$goal$zh._(_root);
	@override late final _Translations$button$zh button = _Translations$button$zh._(_root);
	@override late final _Translations$embed$zh embed = _Translations$embed$zh._(_root);

	/// 串流清單上的標題依串流類型為現場/結束/計劃中等。
	@override late final _Translations$stream_list$zh stream_list = _Translations$stream_list$zh._(_root);

	@override late final _Translations$zap$zh zap = _Translations$zap$zh._(_root);
	@override late final _Translations$profile$zh profile = _Translations$profile$zh._(_root);
	@override late final _Translations$settings$zh settings = _Translations$settings$zh._(_root);
	@override late final _Translations$login$zh login = _Translations$login$zh._(_root);
	@override late final _Translations$live$zh live = _Translations$live$zh._(_root);
}

// Path: stream
class _Translations$stream$zh extends Translations$stream$en {
	_Translations$stream$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$zh status = _Translations$stream$status$zh._(_root);
	@override String started({required Object timestamp}) => '開始 ${timestamp}';
	@override String notification({required Object name}) => '${name} 已啟用！';
	@override late final _Translations$stream$chat$zh chat = _Translations$stream$chat$zh._(_root);
}

// Path: goal
class _Translations$goal$zh extends Translations$goal$en {
	_Translations$goal$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => '目標：${amount}';
	@override String remaining({required Object amount}) => '剩餘： ${amount}';
	@override String get complete => '完成';
}

// Path: button
class _Translations$button$zh extends Translations$button$en {
	_Translations$button$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations

	/// 登入按鈕的按鈕文字
	@override String get login => '登錄';

	@override String get logout => '登出';
	@override String get edit_profile => '編輯個人檔案';

	/// 跟蹤按鈕的按鈕文字
	@override String get follow => '關注';

	/// 取消關注按鈕的按鈕文字
	@override String get unfollow => '取消關注';

	@override String get mute => '靜音';
	@override String get unmute => '解除静音';
	@override String get share => '分享';
	@override String get save => '保存';
	@override String get connect => '連接';
	@override String get settings => '設定';
}

// Path: embed
class _Translations$embed$zh extends Translations$embed$en {
	_Translations$embed$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => '文章來源： ${name}';
	@override String note_by({required Object name}) => '${name} 的筆記';
	@override String live_stream_by({required Object name}) => 'Live stream by ${name}';
}

// Path: stream_list
class _Translations$stream_list$zh extends Translations$stream_list$en {
	_Translations$stream_list$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get following => '已關注';
	@override String get live => '直播';
	@override String get planned => '已計畫';
	@override String get ended => '已結束';
}

// Path: zap
class _Translations$zap$zh extends Translations$zap$en {
	_Translations$zap$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => '打閃${name}';
	@override String get custom_amount => '自訂金額';
	@override String get confirm => '確認';
	@override String get comment => '評論';
	@override String button_zap_ready({required Object amount}) => '打閃 ${amount} 聰';
	@override String get button_zap => '打閃';
	@override String get button_open_wallet => '在錢包中開啟';
	@override String get button_connect_wallet => '連接錢包';
	@override String get copy => '複製到剪貼簿';
	@override late final _Translations$zap$error$zh error = _Translations$zap$error$zh._(_root);
}

// Path: profile
class _Translations$profile$zh extends Translations$profile$en {
	_Translations$profile$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get past_streams => '過去的直播';
}

// Path: settings
class _Translations$settings$zh extends Translations$settings$en {
	_Translations$settings$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get button_profile => '編輯個人資料';
	@override String get button_wallet => '錢包設定';
	@override late final _Translations$settings$profile$zh profile = _Translations$settings$profile$zh._(_root);
	@override late final _Translations$settings$wallet$zh wallet = _Translations$settings$wallet$zh._(_root);
}

// Path: login
class _Translations$login$zh extends Translations$login$en {
	_Translations$login$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get username => '用戶名';
	@override String get amber => '使用 Amber 登入';
	@override String get key => '使用鑰匙登入';
	@override String get create => '創建帳戶';
	@override late final _Translations$login$error$zh error = _Translations$login$error$zh._(_root);
}

// Path: live
class _Translations$live$zh extends Translations$live$en {
	_Translations$live$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get start => '開始直播';
	@override String get configure_stream => '設定串流';
	@override String get endpoint => '終點';
	@override String get accept_tos => '接受服務條款';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => '標題';
	@override String get summary => '摘要';
	@override String get image => '封面圖片';
	@override String get tags => '標籤';
	@override String get nsfw => 'NSFW 內容';
	@override String get nsfw_description => '請檢查此串流是否包含裸體或色情內容。';
	@override late final _Translations$live$error$zh error = _Translations$live$error$zh._(_root);
}

// Path: stream.status
class _Translations$stream$status$zh extends Translations$stream$status$en {
	_Translations$stream$status$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get live => '直播';
	@override String get ended => '結束';
	@override String get planned => '計劃';
}

// Path: stream.chat
class _Translations$stream$chat$zh extends Translations$stream$chat$en {
	_Translations$stream$chat$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get disabled => '關閉聊天';
	@override String disabled_timeout({required Object time}) => '超時過期： ${time}';

	/// 顯示逾時事件的聊天訊息
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' 超時 '),
		user,
		const TextSpan(text: ' for '),
		time,
	]);

	/// 聊天底部的流結束頁尾
	@override String get ended => '串流結束';

	/// 聊天訊息顯示串流斷點
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' 打閃了 '),
		amount,
		const TextSpan(text: ' 聰'),
	]);

	@override late final _Translations$stream$chat$write$zh write = _Translations$stream$chat$write$zh._(_root);
	@override late final _Translations$stream$chat$badge$zh badge = _Translations$stream$chat$badge$zh._(_root);
	@override late final _Translations$stream$chat$raid$zh raid = _Translations$stream$chat$raid$zh._(_root);
}

// Path: zap.error
class _Translations$zap$error$zh extends Translations$zap$error$en {
	_Translations$zap$error$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => '無效自訂金額';
	@override String get no_wallet => '未安裝閃電錢夾';
	@override String get no_lud16 => '未找到閃電地址';
}

// Path: settings.profile
class _Translations$settings$profile$zh extends Translations$settings$profile$en {
	_Translations$settings$profile$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get display_name => '顯示名稱';
	@override String get about => '關於';
	@override String get nip05 => '地址';
	@override String get lud16 => '閃電地址';
	@override late final _Translations$settings$profile$error$zh error = _Translations$settings$profile$error$zh._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$zh extends Translations$settings$wallet$en {
	_Translations$settings$wallet$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => '斷開錢包';
	@override String get connect_1tap => '1 抽頭連接';
	@override String get paste => '貼上 URL';
	@override String get balance => '平衡';
	@override String get name => '錢包';
	@override late final _Translations$settings$wallet$error$zh error = _Translations$settings$wallet$error$zh._(_root);
}

// Path: login.error
class _Translations$login$error$zh extends Translations$login$error$en {
	_Translations$login$error$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => '無效按鍵';
}

// Path: live.error
class _Translations$live$error$zh extends Translations$live$error$en {
	_Translations$live$error$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get failed => '串流失敗';
	@override String get connection_error => '連線錯誤';
	@override String get start_failed => '串流啟動失敗，請檢查您的餘額';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$zh extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations

	/// 聊天訊息輸入方塊上的標籤
	@override String get label => '寫訊息';

	/// 當使用者僅使用 pubkey 登入時，會顯示聊天輸入訊息
	@override String get no_signer => '無法使用 npub 登入撰寫訊息';

	/// 使用者登出時顯示聊天輸入訊息
	@override String get login => '請登入以傳送訊息';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$zh extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations

	/// 被授予徽章的使用者清單上的標題
	@override String get awarded_to => '頒發給';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$zh extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations

	/// 聊天突擊消息到另一個串流
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// 來自其他串流的聊天突襲訊息
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// 自動騎乘倒數計時器
	@override String countdown({required Object time}) => '突襲 ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$zh extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get logged_out => '登出時無法編輯個人資料';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$zh extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$zh._(TranslationsZh root) : this._root = root, super.internal(root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get logged_out => '登出時無法連接錢包';
	@override String get nwc_auth_event_not_found => '未找到錢包認證事件';
}

/// The flat map containing all translations for locale <zh>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZh {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => '上傳頭像',
			'most_zapped_streamers' => '最多被擊中的溪流',
			'no_user_found' => '未找到使用者',
			'anon' => '匿名',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('zh').format(n)} Sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '1 個檢視器', other: '${NumberFormat.decimalPattern('zh').format(n)} 觀眾', ), 
			'stream.status.live' => '直播',
			'stream.status.ended' => '結束',
			'stream.status.planned' => '計劃',
			'stream.started' => ({required Object timestamp}) => '開始 ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} 已啟用！',
			'stream.chat.disabled' => '關閉聊天',
			'stream.chat.disabled_timeout' => ({required Object time}) => '超時過期： ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' 超時 '), user, const TextSpan(text: ' for '), time, ]), 
			'stream.chat.ended' => '串流結束',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' 打閃了 '), amount, const TextSpan(text: ' 聰'), ]), 
			'stream.chat.write.label' => '寫訊息',
			'stream.chat.write.no_signer' => '無法使用 npub 登入撰寫訊息',
			'stream.chat.write.login' => '請登入以傳送訊息',
			'stream.chat.badge.awarded_to' => '頒發給',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => '突襲 ${time}',
			'goal.title' => ({required Object amount}) => '目標：${amount}',
			'goal.remaining' => ({required Object amount}) => '剩餘： ${amount}',
			'goal.complete' => '完成',
			'button.login' => '登錄',
			'button.logout' => '登出',
			'button.edit_profile' => '編輯個人檔案',
			'button.follow' => '關注',
			'button.unfollow' => '取消關注',
			'button.mute' => '靜音',
			'button.unmute' => '解除静音',
			'button.share' => '分享',
			'button.save' => '保存',
			'button.connect' => '連接',
			'button.settings' => '設定',
			'embed.article_by' => ({required Object name}) => '文章來源： ${name}',
			'embed.note_by' => ({required Object name}) => '${name} 的筆記',
			'embed.live_stream_by' => ({required Object name}) => 'Live stream by ${name}',
			'stream_list.following' => '已關注',
			'stream_list.live' => '直播',
			'stream_list.planned' => '已計畫',
			'stream_list.ended' => '已結束',
			'zap.title' => ({required Object name}) => '打閃${name}',
			'zap.custom_amount' => '自訂金額',
			'zap.confirm' => '確認',
			'zap.comment' => '評論',
			'zap.button_zap_ready' => ({required Object amount}) => '打閃 ${amount} 聰',
			'zap.button_zap' => '打閃',
			'zap.button_open_wallet' => '在錢包中開啟',
			'zap.button_connect_wallet' => '連接錢包',
			'zap.copy' => '複製到剪貼簿',
			'zap.error.invalid_custom_amount' => '無效自訂金額',
			'zap.error.no_wallet' => '未安裝閃電錢夾',
			'zap.error.no_lud16' => '未找到閃電地址',
			'profile.past_streams' => '過去的直播',
			'settings.button_profile' => '編輯個人資料',
			'settings.button_wallet' => '錢包設定',
			'settings.profile.display_name' => '顯示名稱',
			'settings.profile.about' => '關於',
			'settings.profile.nip05' => '地址',
			'settings.profile.lud16' => '閃電地址',
			'settings.profile.error.logged_out' => '登出時無法編輯個人資料',
			'settings.wallet.connect_wallet' => 'Connect Wallet (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => '斷開錢包',
			'settings.wallet.connect_1tap' => '1 抽頭連接',
			'settings.wallet.paste' => '貼上 URL',
			'settings.wallet.balance' => '平衡',
			'settings.wallet.name' => '錢包',
			'settings.wallet.error.logged_out' => '登出時無法連接錢包',
			'settings.wallet.error.nwc_auth_event_not_found' => '未找到錢包認證事件',
			'login.username' => '用戶名',
			'login.amber' => '使用 Amber 登入',
			'login.key' => '使用鑰匙登入',
			'login.create' => '創建帳戶',
			'login.error.invalid_key' => '無效按鍵',
			'live.start' => '開始直播',
			'live.configure_stream' => '設定串流',
			'live.endpoint' => '終點',
			'live.accept_tos' => '接受服務條款',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => '標題',
			'live.summary' => '摘要',
			'live.image' => '封面圖片',
			'live.tags' => '標籤',
			'live.nsfw' => 'NSFW 內容',
			'live.nsfw_description' => '請檢查此串流是否包含裸體或色情內容。',
			'live.error.failed' => '串流失敗',
			'live.error.connection_error' => '連線錯誤',
			'live.error.start_failed' => '串流啟動失敗，請檢查您的餘額',
			_ => null,
		};
	}
}
