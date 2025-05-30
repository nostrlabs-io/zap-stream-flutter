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
class TranslationsAr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsAr _root = this; // ignore: unused_field

	@override 
	TranslationsAr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsAr(meta: meta ?? this.$meta);

	// Translations

	/// نص يطالب المستخدم بالضغط على العنصر النائب للصورة الرمزية لبدء التحميل
	@override String get upload_avatar => 'تحميل الصورة الرمزية';

	/// التوجه فوق اللافتات العلوية المدرجة من قبل zaps
	@override String get most_zapped_streamers => 'معظم اللافتات التي يتم بثها';

	/// لم يتم العثور على مستخدم عند البحث
	@override String get no_user_found => 'لم يتم العثور على مستخدم';

	/// مستخدم مجهول
	@override String get anon => 'هوية مخفية';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('ar').format(n)} دولار ساتس';

	/// عدد مشاهدي البث
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '1 مشاهد',
		other: '{n:decimalPattern} المشاهدين',
	);

	@override late final _TranslationsStreamAr stream = _TranslationsStreamAr._(_root);
	@override late final _TranslationsGoalAr goal = _TranslationsGoalAr._(_root);
	@override late final _TranslationsButtonAr button = _TranslationsButtonAr._(_root);
	@override late final _TranslationsEmbedAr embed = _TranslationsEmbedAr._(_root);

	/// العناوين في قوائم البث حسب نوع البث المباشر/المُنتهي/المخطط له وما إلى ذلك.
	@override late final _TranslationsStreamListAr stream_list = _TranslationsStreamListAr._(_root);

	@override late final _TranslationsZapAr zap = _TranslationsZapAr._(_root);
	@override late final _TranslationsProfileAr profile = _TranslationsProfileAr._(_root);
	@override late final _TranslationsSettingsAr settings = _TranslationsSettingsAr._(_root);
	@override late final _TranslationsLoginAr login = _TranslationsLoginAr._(_root);
	@override late final _TranslationsLiveAr live = _TranslationsLiveAr._(_root);
}

// Path: stream
class _TranslationsStreamAr extends TranslationsStreamEn {
	_TranslationsStreamAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusAr status = _TranslationsStreamStatusAr._(_root);
	@override String started({required Object timestamp}) => 'بدأ ${timestamp}';
	@override String notification({required Object name}) => '${name} بدأ البث المباشر!';
	@override late final _TranslationsStreamChatAr chat = _TranslationsStreamChatAr._(_root);
}

// Path: goal
class _TranslationsGoalAr extends TranslationsGoalEn {
	_TranslationsGoalAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'الهدف: ${amount}';
	@override String remaining({required Object amount}) => 'المتبقي: ${amount}';
	@override String get complete => 'مكتمل';
}

// Path: button
class _TranslationsButtonAr extends TranslationsButtonEn {
	_TranslationsButtonAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations

	/// نص الزر الخاص بزر تسجيل الدخول
	@override String get login => 'تسجيل الدخول';

	@override String get logout => 'تسجيل الخروج';
	@override String get edit_profile => 'تعديل الملف الشخصي';

	/// نص الزر الخاص بزر المتابعة
	@override String get follow => 'متابعة';

	/// نص الزر لزر إلغاء المتابعة
	@override String get unfollow => 'الغاء المتابعة';

	@override String get mute => 'كتم';
	@override String get unmute => 'رفع الكتم';
	@override String get share => 'مشاركة';
	@override String get save => 'حفظ';
	@override String get connect => 'الاتصال';
	@override String get settings => 'الإعدادات';
}

// Path: embed
class _TranslationsEmbedAr extends TranslationsEmbedEn {
	_TranslationsEmbedAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'مقال بقلم ${name}';
	@override String note_by({required Object name}) => 'ملاحظة من ${name}';
	@override String live_stream_by({required Object name}) => 'بث مباشر من ${name}';
}

// Path: stream_list
class _TranslationsStreamListAr extends TranslationsStreamListEn {
	_TranslationsStreamListAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get following => 'المتابَعون';
	@override String get live => 'بث مباشر';
	@override String get planned => 'مخطط';
	@override String get ended => 'انتهى';
}

// Path: zap
class _TranslationsZapAr extends TranslationsZapEn {
	_TranslationsZapAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'زاب ${name}';
	@override String get custom_amount => 'المبلغ المخصص';
	@override String get confirm => 'تأكيد';
	@override String get comment => 'تعليق';
	@override String button_zap_ready({required Object amount}) => 'أومض ${amount} ساتوشي';
	@override String get button_zap => 'زاب';
	@override String get button_open_wallet => 'فتح في المحفظة';
	@override String get button_connect_wallet => 'توصيل المحفظة';
	@override String get copy => 'نسخ إلى الحافظة';
	@override late final _TranslationsZapErrorAr error = _TranslationsZapErrorAr._(_root);
}

// Path: profile
class _TranslationsProfileAr extends TranslationsProfileEn {
	_TranslationsProfileAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'التدفقات السابقة';
}

// Path: settings
class _TranslationsSettingsAr extends TranslationsSettingsEn {
	_TranslationsSettingsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'تعديل الملف الشخصي';
	@override String get button_wallet => 'إعدادات المحفظة';
	@override late final _TranslationsSettingsProfileAr profile = _TranslationsSettingsProfileAr._(_root);
	@override late final _TranslationsSettingsWalletAr wallet = _TranslationsSettingsWalletAr._(_root);
}

// Path: login
class _TranslationsLoginAr extends TranslationsLoginEn {
	_TranslationsLoginAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get username => 'اسم المستخدم';
	@override String get amber => 'تسجيل الدخول مع آمبر';
	@override String get key => 'تسجيل الدخول بالمفتاح';
	@override String get create => 'إنشاء حساب';
	@override late final _TranslationsLoginErrorAr error = _TranslationsLoginErrorAr._(_root);
}

// Path: live
class _TranslationsLiveAr extends TranslationsLiveEn {
	_TranslationsLiveAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get start => 'ابدأ البث المباشر';
	@override String get configure_stream => 'تكوين الدفق';
	@override String get endpoint => 'نقطة النهاية';
	@override String get accept_tos => 'قبول شروط الخدمة';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'العنوان';
	@override String get summary => 'الملخص';
	@override String get image => 'صورة الغلاف';
	@override String get tags => 'الوسوم';
	@override String get nsfw => 'محتوى غير لائق جنسيًا';
	@override String get nsfw_description => 'تحقق هنا إذا كان هذا البث يحتوي على محتوى إباحي أو عري.';
	@override late final _TranslationsLiveErrorAr error = _TranslationsLiveErrorAr._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusAr extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get live => 'بث مباشر';
	@override String get ended => 'انتهى';
	@override String get planned => 'مخطط';
}

// Path: stream.chat
class _TranslationsStreamChatAr extends TranslationsStreamChatEn {
	_TranslationsStreamChatAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'تم تعطيل الدردشة';
	@override String disabled_timeout({required Object time}) => 'تنتهي المهلة: ${time}';

	/// رسالة دردشة تظهر أحداث المهلة
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' انتهى الوقت '),
		user,
		const TextSpan(text: ' لـ '),
		time,
	]);

	/// تيار انتهى التذييل في أسفل الدردشة
	@override String get ended => 'انتهى البث';

	/// رسالة الدردشة التي تُظهر البث المباشر
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' انطلق '),
		amount,
		const TextSpan(text: ' ساتس'),
	]);

	@override late final _TranslationsStreamChatWriteAr write = _TranslationsStreamChatWriteAr._(_root);
	@override late final _TranslationsStreamChatBadgeAr badge = _TranslationsStreamChatBadgeAr._(_root);
	@override late final _TranslationsStreamChatRaidAr raid = _TranslationsStreamChatRaidAr._(_root);
}

// Path: zap.error
class _TranslationsZapErrorAr extends TranslationsZapErrorEn {
	_TranslationsZapErrorAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'مبلغ مخصص غير صالح';
	@override String get no_wallet => 'لا توجد محفظة برق مثبتة';
	@override String get no_lud16 => 'لم يتم العثور على عنوان البرق';
}

// Path: settings.profile
class _TranslationsSettingsProfileAr extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfileAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'اسم العرض';
	@override String get about => 'نبذة عن';
	@override String get nip05 => 'عنوان نوستر';
	@override String get lud16 => 'عنوان البرق';
	@override late final _TranslationsSettingsProfileErrorAr error = _TranslationsSettingsProfileErrorAr._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletAr extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'توصيل المحفظة (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'محفظة قطع الاتصال';
	@override String get connect_1tap => '1-التوصيل بنقرة 1';
	@override String get paste => 'لصق عنوان URL';
	@override String get balance => 'الرصيد';
	@override String get name => 'المحفظة';
	@override late final _TranslationsSettingsWalletErrorAr error = _TranslationsSettingsWalletErrorAr._(_root);
}

// Path: login.error
class _TranslationsLoginErrorAr extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'مفتاح غير صالح';
}

// Path: live.error
class _TranslationsLiveErrorAr extends TranslationsLiveErrorEn {
	_TranslationsLiveErrorAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get failed => 'فشل البث';
	@override String get connection_error => 'خطأ في الاتصال';
	@override String get start_failed => 'فشل بدء البث فشل، يرجى التحقق من رصيدك';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteAr extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations

	/// التسمية على مربع إدخال رسالة الدردشة
	@override String get label => 'اكتب رسالة';

	/// تظهر رسالة إدخال الدردشة عندما يقوم المستخدم بتسجيل الدخول باستخدام مفتاح الحانة فقط
	@override String get no_signer => 'لا يمكن كتابة الرسائل باستخدام تسجيل الدخول إلى npub';

	/// تظهر رسالة إدخال الدردشة عند تسجيل خروج المستخدم من المحادثة
	@override String get login => 'الرجاء تسجيل الدخول لإرسال الرسائل';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeAr extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations

	/// العنوان فوق قائمة المستخدمين الذين حصلوا على شارة
	@override String get awarded_to => 'مُنحت الجائزة لـ';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidAr extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations

	/// رسالة غارة الدردشة إلى دفق آخر
	@override String to({required Object name}) => 'التصفح ${name}';

	/// رسالة غارة الدردشة من دفق آخر
	@override String from({required Object name}) => 'RAID من ${name}';

	/// مؤقت العد التنازلي للقيادة التلقائية
	@override String countdown({required Object time}) => 'الإغارة في ${time}';
}

// Path: settings.profile.error
class _TranslationsSettingsProfileErrorAr extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'لا يمكن تحرير ملف التعريف عند تسجيل الخروج';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorAr extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'لا يمكن الاتصال بالمحفظة عند تسجيل الخروج';
	@override String get nwc_auth_event_not_found => 'لم يتم العثور على حدث مصادقة المحفظة';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'تحميل الصورة الرمزية';
			case 'most_zapped_streamers': return 'معظم اللافتات التي يتم بثها';
			case 'no_user_found': return 'لم يتم العثور على مستخدم';
			case 'anon': return 'هوية مخفية';
			case 'full_amount_sats': return ({required num n}) => '${NumberFormat.decimalPattern('ar').format(n)} دولار ساتس';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
				one: '1 مشاهد',
				other: '{n:decimalPattern} المشاهدين',
			);
			case 'stream.status.live': return 'بث مباشر';
			case 'stream.status.ended': return 'انتهى';
			case 'stream.status.planned': return 'مخطط';
			case 'stream.started': return ({required Object timestamp}) => 'بدأ ${timestamp}';
			case 'stream.notification': return ({required Object name}) => '${name} بدأ البث المباشر!';
			case 'stream.chat.disabled': return 'تم تعطيل الدردشة';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'تنتهي المهلة: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' انتهى الوقت '),
				user,
				const TextSpan(text: ' لـ '),
				time,
			]);
			case 'stream.chat.ended': return 'انتهى البث';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' انطلق '),
				amount,
				const TextSpan(text: ' ساتس'),
			]);
			case 'stream.chat.write.label': return 'اكتب رسالة';
			case 'stream.chat.write.no_signer': return 'لا يمكن كتابة الرسائل باستخدام تسجيل الدخول إلى npub';
			case 'stream.chat.write.login': return 'الرجاء تسجيل الدخول لإرسال الرسائل';
			case 'stream.chat.badge.awarded_to': return 'مُنحت الجائزة لـ';
			case 'stream.chat.raid.to': return ({required Object name}) => 'التصفح ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID من ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'الإغارة في ${time}';
			case 'goal.title': return ({required Object amount}) => 'الهدف: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'المتبقي: ${amount}';
			case 'goal.complete': return 'مكتمل';
			case 'button.login': return 'تسجيل الدخول';
			case 'button.logout': return 'تسجيل الخروج';
			case 'button.edit_profile': return 'تعديل الملف الشخصي';
			case 'button.follow': return 'متابعة';
			case 'button.unfollow': return 'الغاء المتابعة';
			case 'button.mute': return 'كتم';
			case 'button.unmute': return 'رفع الكتم';
			case 'button.share': return 'مشاركة';
			case 'button.save': return 'حفظ';
			case 'button.connect': return 'الاتصال';
			case 'button.settings': return 'الإعدادات';
			case 'embed.article_by': return ({required Object name}) => 'مقال بقلم ${name}';
			case 'embed.note_by': return ({required Object name}) => 'ملاحظة من ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'بث مباشر من ${name}';
			case 'stream_list.following': return 'المتابَعون';
			case 'stream_list.live': return 'بث مباشر';
			case 'stream_list.planned': return 'مخطط';
			case 'stream_list.ended': return 'انتهى';
			case 'zap.title': return ({required Object name}) => 'زاب ${name}';
			case 'zap.custom_amount': return 'المبلغ المخصص';
			case 'zap.confirm': return 'تأكيد';
			case 'zap.comment': return 'تعليق';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'أومض ${amount} ساتوشي';
			case 'zap.button_zap': return 'زاب';
			case 'zap.button_open_wallet': return 'فتح في المحفظة';
			case 'zap.button_connect_wallet': return 'توصيل المحفظة';
			case 'zap.copy': return 'نسخ إلى الحافظة';
			case 'zap.error.invalid_custom_amount': return 'مبلغ مخصص غير صالح';
			case 'zap.error.no_wallet': return 'لا توجد محفظة برق مثبتة';
			case 'zap.error.no_lud16': return 'لم يتم العثور على عنوان البرق';
			case 'profile.past_streams': return 'التدفقات السابقة';
			case 'settings.button_profile': return 'تعديل الملف الشخصي';
			case 'settings.button_wallet': return 'إعدادات المحفظة';
			case 'settings.profile.display_name': return 'اسم العرض';
			case 'settings.profile.about': return 'نبذة عن';
			case 'settings.profile.nip05': return 'عنوان نوستر';
			case 'settings.profile.lud16': return 'عنوان البرق';
			case 'settings.profile.error.logged_out': return 'لا يمكن تحرير ملف التعريف عند تسجيل الخروج';
			case 'settings.wallet.connect_wallet': return 'توصيل المحفظة (NWC nostr+walletconnect://)';
			case 'settings.wallet.disconnect_wallet': return 'محفظة قطع الاتصال';
			case 'settings.wallet.connect_1tap': return '1-التوصيل بنقرة 1';
			case 'settings.wallet.paste': return 'لصق عنوان URL';
			case 'settings.wallet.balance': return 'الرصيد';
			case 'settings.wallet.name': return 'المحفظة';
			case 'settings.wallet.error.logged_out': return 'لا يمكن الاتصال بالمحفظة عند تسجيل الخروج';
			case 'settings.wallet.error.nwc_auth_event_not_found': return 'لم يتم العثور على حدث مصادقة المحفظة';
			case 'login.username': return 'اسم المستخدم';
			case 'login.amber': return 'تسجيل الدخول مع آمبر';
			case 'login.key': return 'تسجيل الدخول بالمفتاح';
			case 'login.create': return 'إنشاء حساب';
			case 'login.error.invalid_key': return 'مفتاح غير صالح';
			case 'live.start': return 'ابدأ البث المباشر';
			case 'live.configure_stream': return 'تكوين الدفق';
			case 'live.endpoint': return 'نقطة النهاية';
			case 'live.accept_tos': return 'قبول شروط الخدمة';
			case 'live.balance_left': return ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
				zero: '∞',
				other: '~${time}',
			);
			case 'live.title': return 'العنوان';
			case 'live.summary': return 'الملخص';
			case 'live.image': return 'صورة الغلاف';
			case 'live.tags': return 'الوسوم';
			case 'live.nsfw': return 'محتوى غير لائق جنسيًا';
			case 'live.nsfw_description': return 'تحقق هنا إذا كان هذا البث يحتوي على محتوى إباحي أو عري.';
			case 'live.error.failed': return 'فشل البث';
			case 'live.error.connection_error': return 'خطأ في الاتصال';
			case 'live.error.start_failed': return 'فشل بدء البث فشل، يرجى التحقق من رصيدك';
			default: return null;
		}
	}
}

