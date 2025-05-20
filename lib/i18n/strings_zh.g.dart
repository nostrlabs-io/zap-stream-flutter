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
class TranslationsZh implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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

	/// 串流的觀看者人數
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '1 個檢視器',
		other: '${n} 觀眾',
	);

	@override late final _TranslationsStreamZh stream = _TranslationsStreamZh._(_root);
	@override late final _TranslationsGoalZh goal = _TranslationsGoalZh._(_root);
	@override late final _TranslationsButtonZh button = _TranslationsButtonZh._(_root);
	@override late final _TranslationsEmbedZh embed = _TranslationsEmbedZh._(_root);

	/// 串流清單上的標題依串流類型為現場/結束/計劃中等。
	@override late final _TranslationsStreamListZh stream_list = _TranslationsStreamListZh._(_root);

	@override late final _TranslationsZapZh zap = _TranslationsZapZh._(_root);
	@override late final _TranslationsProfileZh profile = _TranslationsProfileZh._(_root);
	@override late final _TranslationsLoginZh login = _TranslationsLoginZh._(_root);
}

// Path: stream
class _TranslationsStreamZh implements TranslationsStreamEn {
	_TranslationsStreamZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusZh status = _TranslationsStreamStatusZh._(_root);
	@override String started({ required Object timestamp}) => '開始 ${timestamp}';
	@override late final _TranslationsStreamChatZh chat = _TranslationsStreamChatZh._(_root);
}

// Path: goal
class _TranslationsGoalZh implements TranslationsGoalEn {
	_TranslationsGoalZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => '目標：${amount}';
	@override String remaining({ required Object amount}) => '剩餘： ${amount}';
	@override String get complete => '完成';
}

// Path: button
class _TranslationsButtonZh implements TranslationsButtonEn {
	_TranslationsButtonZh._(this._root);

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
}

// Path: embed
class _TranslationsEmbedZh implements TranslationsEmbedEn {
	_TranslationsEmbedZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => '文章來源： ${name}';
	@override String note_by({ required Object name}) => '${name} 的筆記';
	@override String live_stream_by({ required Object name}) => 'Live stream by ${name}';
}

// Path: stream_list
class _TranslationsStreamListZh implements TranslationsStreamListEn {
	_TranslationsStreamListZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get following => '已關注';
	@override String get live => '直播';
	@override String get planned => '已計畫';
	@override String get ended => '已結束';
}

// Path: zap
class _TranslationsZapZh implements TranslationsZapEn {
	_TranslationsZapZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => '打閃${name}';
	@override String get custom_amount => '自訂金額';
	@override String get confirm => '確認';
	@override String get comment => '評論';
	@override String button_zap_ready({ required Object amount}) => '打閃 ${amount} 聰';
	@override String get button_zap => '打閃';
	@override String get button_open_wallet => '在錢包中開啟';
	@override String get copy => '複製到剪貼簿';
	@override late final _TranslationsZapErrorZh error = _TranslationsZapErrorZh._(_root);
}

// Path: profile
class _TranslationsProfileZh implements TranslationsProfileEn {
	_TranslationsProfileZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get past_streams => '過去的直播';
	@override late final _TranslationsProfileEditZh edit = _TranslationsProfileEditZh._(_root);
}

// Path: login
class _TranslationsLoginZh implements TranslationsLoginEn {
	_TranslationsLoginZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get username => '用戶名';
	@override String get amber => '使用 Amber 登入';
	@override String get key => '使用鑰匙登入';
	@override String get create => '創建帳戶';
	@override late final _TranslationsLoginErrorZh error = _TranslationsLoginErrorZh._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusZh implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get live => '直播';
	@override String get ended => '結束';
	@override String get planned => '計劃';
}

// Path: stream.chat
class _TranslationsStreamChatZh implements TranslationsStreamChatEn {
	_TranslationsStreamChatZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get disabled => '關閉聊天';
	@override String disabled_timeout({ required Object time}) => '超時過期： ${time}';

	/// 顯示逾時事件的聊天訊息
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' 超時 '),
		user,
		const TextSpan(text: ' for '),
		time,
	], style: style, recognizer: recognizer);

	/// 聊天底部的流結束頁尾
	@override String get ended => '串流結束';

	/// 聊天訊息顯示串流斷點
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' 打閃了 '),
		amount,
		const TextSpan(text: ' 聰'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteZh write = _TranslationsStreamChatWriteZh._(_root);
	@override late final _TranslationsStreamChatBadgeZh badge = _TranslationsStreamChatBadgeZh._(_root);
	@override late final _TranslationsStreamChatRaidZh raid = _TranslationsStreamChatRaidZh._(_root);
}

// Path: zap.error
class _TranslationsZapErrorZh implements TranslationsZapErrorEn {
	_TranslationsZapErrorZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => '無效自訂金額';
	@override String get no_wallet => '未安裝閃電錢夾';
	@override String get no_lud16 => '未找到閃電地址';
}

// Path: profile.edit
class _TranslationsProfileEditZh implements TranslationsProfileEditEn {
	_TranslationsProfileEditZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get display_name => '顯示名稱';
	@override String get about => '關於';
	@override String get nip05 => 'Nostr 地址';
	@override String get lud16 => '閃電地址';
	@override late final _TranslationsProfileEditErrorZh error = _TranslationsProfileEditErrorZh._(_root);
}

// Path: login.error
class _TranslationsLoginErrorZh implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => '無效按鍵';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteZh implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteZh._(this._root);

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
class _TranslationsStreamChatBadgeZh implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations

	/// 被授予徽章的使用者清單上的標題
	@override String get awarded_to => '頒發給';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidZh implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations

	/// 聊天突擊消息到另一個串流
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// 來自其他串流的聊天突襲訊息
	@override String from({ required Object name}) => 'RAID FROM ${name}';

	/// 自動騎乘倒數計時器
	@override String countdown({ required Object time}) => '突襲 ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorZh implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get logged_out => '登出時無法編輯個人資料';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZh {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return '上傳頭像';
			case 'most_zapped_streamers': return '最多被擊中的溪流';
			case 'no_user_found': return '未找到使用者';
			case 'anon': return '匿名';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
				one: '1 個檢視器',
				other: '${n} 觀眾',
			);
			case 'stream.status.live': return '直播';
			case 'stream.status.ended': return '結束';
			case 'stream.status.planned': return '計劃';
			case 'stream.started': return ({ required Object timestamp}) => '開始 ${timestamp}';
			case 'stream.chat.disabled': return '關閉聊天';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => '超時過期： ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' 超時 '),
				user,
				const TextSpan(text: ' for '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return '串流結束';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' 打閃了 '),
				amount,
				const TextSpan(text: ' 聰'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return '寫訊息';
			case 'stream.chat.write.no_signer': return '無法使用 npub 登入撰寫訊息';
			case 'stream.chat.write.login': return '請登入以傳送訊息';
			case 'stream.chat.badge.awarded_to': return '頒發給';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => '突襲 ${time}';
			case 'goal.title': return ({ required Object amount}) => '目標：${amount}';
			case 'goal.remaining': return ({ required Object amount}) => '剩餘： ${amount}';
			case 'goal.complete': return '完成';
			case 'button.login': return '登錄';
			case 'button.logout': return '登出';
			case 'button.edit_profile': return '編輯個人檔案';
			case 'button.follow': return '關注';
			case 'button.unfollow': return '取消關注';
			case 'button.mute': return '靜音';
			case 'button.unmute': return '解除静音';
			case 'button.share': return '分享';
			case 'button.save': return '保存';
			case 'embed.article_by': return ({ required Object name}) => '文章來源： ${name}';
			case 'embed.note_by': return ({ required Object name}) => '${name} 的筆記';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Live stream by ${name}';
			case 'stream_list.following': return '已關注';
			case 'stream_list.live': return '直播';
			case 'stream_list.planned': return '已計畫';
			case 'stream_list.ended': return '已結束';
			case 'zap.title': return ({ required Object name}) => '打閃${name}';
			case 'zap.custom_amount': return '自訂金額';
			case 'zap.confirm': return '確認';
			case 'zap.comment': return '評論';
			case 'zap.button_zap_ready': return ({ required Object amount}) => '打閃 ${amount} 聰';
			case 'zap.button_zap': return '打閃';
			case 'zap.button_open_wallet': return '在錢包中開啟';
			case 'zap.copy': return '複製到剪貼簿';
			case 'zap.error.invalid_custom_amount': return '無效自訂金額';
			case 'zap.error.no_wallet': return '未安裝閃電錢夾';
			case 'zap.error.no_lud16': return '未找到閃電地址';
			case 'profile.past_streams': return '過去的直播';
			case 'profile.edit.display_name': return '顯示名稱';
			case 'profile.edit.about': return '關於';
			case 'profile.edit.nip05': return 'Nostr 地址';
			case 'profile.edit.lud16': return '閃電地址';
			case 'profile.edit.error.logged_out': return '登出時無法編輯個人資料';
			case 'login.username': return '用戶名';
			case 'login.amber': return '使用 Amber 登入';
			case 'login.key': return '使用鑰匙登入';
			case 'login.create': return '創建帳戶';
			case 'login.error.invalid_key': return '無效按鍵';
			default: return null;
		}
	}
}

