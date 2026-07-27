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
class TranslationsAr extends Translations with BaseTranslations<AppLocale, Translations> {
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

	@override late final _Translations$stream$ar stream = _Translations$stream$ar._(_root);
	@override late final _Translations$goal$ar goal = _Translations$goal$ar._(_root);
	@override late final _Translations$button$ar button = _Translations$button$ar._(_root);
	@override late final _Translations$embed$ar embed = _Translations$embed$ar._(_root);

	/// العناوين في قوائم البث حسب نوع البث المباشر/المُنتهي/المخطط له وما إلى ذلك.
	@override late final _Translations$stream_list$ar stream_list = _Translations$stream_list$ar._(_root);

	@override late final _Translations$zap$ar zap = _Translations$zap$ar._(_root);
	@override late final _Translations$profile$ar profile = _Translations$profile$ar._(_root);
	@override late final _Translations$settings$ar settings = _Translations$settings$ar._(_root);
	@override late final _Translations$login$ar login = _Translations$login$ar._(_root);
	@override late final _Translations$live$ar live = _Translations$live$ar._(_root);
}

// Path: stream
class _Translations$stream$ar extends Translations$stream$en {
	_Translations$stream$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$ar status = _Translations$stream$status$ar._(_root);
	@override String started({required Object timestamp}) => 'بدأ ${timestamp}';
	@override String notification({required Object name}) => '${name} بدأ البث المباشر!';
	@override late final _Translations$stream$chat$ar chat = _Translations$stream$chat$ar._(_root);
}

// Path: goal
class _Translations$goal$ar extends Translations$goal$en {
	_Translations$goal$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'الهدف: ${amount}';
	@override String remaining({required Object amount}) => 'المتبقي: ${amount}';
	@override String get complete => 'مكتمل';
}

// Path: button
class _Translations$button$ar extends Translations$button$en {
	_Translations$button$ar._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _Translations$embed$ar extends Translations$embed$en {
	_Translations$embed$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'مقال بقلم ${name}';
	@override String note_by({required Object name}) => 'ملاحظة من ${name}';
	@override String live_stream_by({required Object name}) => 'بث مباشر من ${name}';
}

// Path: stream_list
class _Translations$stream_list$ar extends Translations$stream_list$en {
	_Translations$stream_list$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get following => 'المتابَعون';
	@override String get live => 'بث مباشر';
	@override String get planned => 'مخطط';
	@override String get ended => 'انتهى';
}

// Path: zap
class _Translations$zap$ar extends Translations$zap$en {
	_Translations$zap$ar._(TranslationsAr root) : this._root = root, super.internal(root);

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
	@override late final _Translations$zap$error$ar error = _Translations$zap$error$ar._(_root);
}

// Path: profile
class _Translations$profile$ar extends Translations$profile$en {
	_Translations$profile$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'التدفقات السابقة';
}

// Path: settings
class _Translations$settings$ar extends Translations$settings$en {
	_Translations$settings$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'تعديل الملف الشخصي';
	@override String get button_wallet => 'إعدادات المحفظة';
	@override late final _Translations$settings$profile$ar profile = _Translations$settings$profile$ar._(_root);
	@override late final _Translations$settings$wallet$ar wallet = _Translations$settings$wallet$ar._(_root);
}

// Path: login
class _Translations$login$ar extends Translations$login$en {
	_Translations$login$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get username => 'اسم المستخدم';
	@override String get amber => 'تسجيل الدخول مع آمبر';
	@override String get key => 'تسجيل الدخول بالمفتاح';
	@override String get create => 'إنشاء حساب';
	@override late final _Translations$login$error$ar error = _Translations$login$error$ar._(_root);
}

// Path: live
class _Translations$live$ar extends Translations$live$en {
	_Translations$live$ar._(TranslationsAr root) : this._root = root, super.internal(root);

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
	@override late final _Translations$live$error$ar error = _Translations$live$error$ar._(_root);
}

// Path: stream.status
class _Translations$stream$status$ar extends Translations$stream$status$en {
	_Translations$stream$status$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get live => 'بث مباشر';
	@override String get ended => 'انتهى';
	@override String get planned => 'مخطط';
}

// Path: stream.chat
class _Translations$stream$chat$ar extends Translations$stream$chat$en {
	_Translations$stream$chat$ar._(TranslationsAr root) : this._root = root, super.internal(root);

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

	@override late final _Translations$stream$chat$write$ar write = _Translations$stream$chat$write$ar._(_root);
	@override late final _Translations$stream$chat$badge$ar badge = _Translations$stream$chat$badge$ar._(_root);
	@override late final _Translations$stream$chat$raid$ar raid = _Translations$stream$chat$raid$ar._(_root);
}

// Path: zap.error
class _Translations$zap$error$ar extends Translations$zap$error$en {
	_Translations$zap$error$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'مبلغ مخصص غير صالح';
	@override String get no_wallet => 'لا توجد محفظة برق مثبتة';
	@override String get no_lud16 => 'لم يتم العثور على عنوان البرق';
}

// Path: settings.profile
class _Translations$settings$profile$ar extends Translations$settings$profile$en {
	_Translations$settings$profile$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'اسم العرض';
	@override String get about => 'نبذة عن';
	@override String get nip05 => 'عنوان نوستر';
	@override String get lud16 => 'عنوان البرق';
	@override late final _Translations$settings$profile$error$ar error = _Translations$settings$profile$error$ar._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$ar extends Translations$settings$wallet$en {
	_Translations$settings$wallet$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'توصيل المحفظة (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'محفظة قطع الاتصال';
	@override String get connect_1tap => '1-التوصيل بنقرة 1';
	@override String get paste => 'لصق عنوان URL';
	@override String get balance => 'الرصيد';
	@override String get name => 'المحفظة';
	@override late final _Translations$settings$wallet$error$ar error = _Translations$settings$wallet$error$ar._(_root);
}

// Path: login.error
class _Translations$login$error$ar extends Translations$login$error$en {
	_Translations$login$error$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'مفتاح غير صالح';
}

// Path: live.error
class _Translations$live$error$ar extends Translations$live$error$en {
	_Translations$live$error$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get failed => 'فشل البث';
	@override String get connection_error => 'خطأ في الاتصال';
	@override String get start_failed => 'فشل بدء البث فشل، يرجى التحقق من رصيدك';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$ar extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$ar._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$ar extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations

	/// العنوان فوق قائمة المستخدمين الذين حصلوا على شارة
	@override String get awarded_to => 'مُنحت الجائزة لـ';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$ar extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$ar._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _Translations$settings$profile$error$ar extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'لا يمكن تحرير ملف التعريف عند تسجيل الخروج';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$ar extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'لا يمكن الاتصال بالمحفظة عند تسجيل الخروج';
	@override String get nwc_auth_event_not_found => 'لم يتم العثور على حدث مصادقة المحفظة';
}

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'تحميل الصورة الرمزية',
			'most_zapped_streamers' => 'معظم اللافتات التي يتم بثها',
			'no_user_found' => 'لم يتم العثور على مستخدم',
			'anon' => 'هوية مخفية',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('ar').format(n)} دولار ساتس',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '1 مشاهد', other: '{n:decimalPattern} المشاهدين', ), 
			'stream.status.live' => 'بث مباشر',
			'stream.status.ended' => 'انتهى',
			'stream.status.planned' => 'مخطط',
			'stream.started' => ({required Object timestamp}) => 'بدأ ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} بدأ البث المباشر!',
			'stream.chat.disabled' => 'تم تعطيل الدردشة',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'تنتهي المهلة: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' انتهى الوقت '), user, const TextSpan(text: ' لـ '), time, ]), 
			'stream.chat.ended' => 'انتهى البث',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' انطلق '), amount, const TextSpan(text: ' ساتس'), ]), 
			'stream.chat.write.label' => 'اكتب رسالة',
			'stream.chat.write.no_signer' => 'لا يمكن كتابة الرسائل باستخدام تسجيل الدخول إلى npub',
			'stream.chat.write.login' => 'الرجاء تسجيل الدخول لإرسال الرسائل',
			'stream.chat.badge.awarded_to' => 'مُنحت الجائزة لـ',
			'stream.chat.raid.to' => ({required Object name}) => 'التصفح ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID من ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'الإغارة في ${time}',
			'goal.title' => ({required Object amount}) => 'الهدف: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'المتبقي: ${amount}',
			'goal.complete' => 'مكتمل',
			'button.login' => 'تسجيل الدخول',
			'button.logout' => 'تسجيل الخروج',
			'button.edit_profile' => 'تعديل الملف الشخصي',
			'button.follow' => 'متابعة',
			'button.unfollow' => 'الغاء المتابعة',
			'button.mute' => 'كتم',
			'button.unmute' => 'رفع الكتم',
			'button.share' => 'مشاركة',
			'button.save' => 'حفظ',
			'button.connect' => 'الاتصال',
			'button.settings' => 'الإعدادات',
			'embed.article_by' => ({required Object name}) => 'مقال بقلم ${name}',
			'embed.note_by' => ({required Object name}) => 'ملاحظة من ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'بث مباشر من ${name}',
			'stream_list.following' => 'المتابَعون',
			'stream_list.live' => 'بث مباشر',
			'stream_list.planned' => 'مخطط',
			'stream_list.ended' => 'انتهى',
			'zap.title' => ({required Object name}) => 'زاب ${name}',
			'zap.custom_amount' => 'المبلغ المخصص',
			'zap.confirm' => 'تأكيد',
			'zap.comment' => 'تعليق',
			'zap.button_zap_ready' => ({required Object amount}) => 'أومض ${amount} ساتوشي',
			'zap.button_zap' => 'زاب',
			'zap.button_open_wallet' => 'فتح في المحفظة',
			'zap.button_connect_wallet' => 'توصيل المحفظة',
			'zap.copy' => 'نسخ إلى الحافظة',
			'zap.error.invalid_custom_amount' => 'مبلغ مخصص غير صالح',
			'zap.error.no_wallet' => 'لا توجد محفظة برق مثبتة',
			'zap.error.no_lud16' => 'لم يتم العثور على عنوان البرق',
			'profile.past_streams' => 'التدفقات السابقة',
			'settings.button_profile' => 'تعديل الملف الشخصي',
			'settings.button_wallet' => 'إعدادات المحفظة',
			'settings.profile.display_name' => 'اسم العرض',
			'settings.profile.about' => 'نبذة عن',
			'settings.profile.nip05' => 'عنوان نوستر',
			'settings.profile.lud16' => 'عنوان البرق',
			'settings.profile.error.logged_out' => 'لا يمكن تحرير ملف التعريف عند تسجيل الخروج',
			'settings.wallet.connect_wallet' => 'توصيل المحفظة (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'محفظة قطع الاتصال',
			'settings.wallet.connect_1tap' => '1-التوصيل بنقرة 1',
			'settings.wallet.paste' => 'لصق عنوان URL',
			'settings.wallet.balance' => 'الرصيد',
			'settings.wallet.name' => 'المحفظة',
			'settings.wallet.error.logged_out' => 'لا يمكن الاتصال بالمحفظة عند تسجيل الخروج',
			'settings.wallet.error.nwc_auth_event_not_found' => 'لم يتم العثور على حدث مصادقة المحفظة',
			'login.username' => 'اسم المستخدم',
			'login.amber' => 'تسجيل الدخول مع آمبر',
			'login.key' => 'تسجيل الدخول بالمفتاح',
			'login.create' => 'إنشاء حساب',
			'login.error.invalid_key' => 'مفتاح غير صالح',
			'live.start' => 'ابدأ البث المباشر',
			'live.configure_stream' => 'تكوين الدفق',
			'live.endpoint' => 'نقطة النهاية',
			'live.accept_tos' => 'قبول شروط الخدمة',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'العنوان',
			'live.summary' => 'الملخص',
			'live.image' => 'صورة الغلاف',
			'live.tags' => 'الوسوم',
			'live.nsfw' => 'محتوى غير لائق جنسيًا',
			'live.nsfw_description' => 'تحقق هنا إذا كان هذا البث يحتوي على محتوى إباحي أو عري.',
			'live.error.failed' => 'فشل البث',
			'live.error.connection_error' => 'خطأ في الاتصال',
			'live.error.start_failed' => 'فشل بدء البث فشل، يرجى التحقق من رصيدك',
			_ => null,
		};
	}
}
