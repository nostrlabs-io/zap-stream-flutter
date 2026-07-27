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
class TranslationsUk extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUk({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.uk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uk>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsUk _root = this; // ignore: unused_field

	@override 
	TranslationsUk $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUk(meta: meta ?? this.$meta);

	// Translations

	/// Текст, що пропонує користувачеві натиснути на заповнювач аватара, щоб почати завантаження
	@override String get upload_avatar => 'Завантажити аватар';

	/// Перехід до переліку найкращих стрімерів за запитами
	@override String get most_zapped_streamers => 'Більшість стримерів, які були під напругою';

	/// Користувача не знайдено при пошуку
	@override String get no_user_found => 'Користувача не знайдено';

	/// Анонімний користувач
	@override String get anon => 'Анонім.';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('uk').format(n)} сатів';

	/// Кількість глядачів стріму
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '1 глядач',
		other: '${NumberFormat.decimalPattern('uk').format(n)} глядачів',
	);

	@override late final _Translations$stream$uk stream = _Translations$stream$uk._(_root);
	@override late final _Translations$goal$uk goal = _Translations$goal$uk._(_root);
	@override late final _Translations$button$uk button = _Translations$button$uk._(_root);
	@override late final _Translations$embed$uk embed = _Translations$embed$uk._(_root);

	/// Заголовки у списках трансляцій за типом трансляції: наживо/закінчилася/запланована тощо.
	@override late final _Translations$stream_list$uk stream_list = _Translations$stream_list$uk._(_root);

	@override late final _Translations$zap$uk zap = _Translations$zap$uk._(_root);
	@override late final _Translations$profile$uk profile = _Translations$profile$uk._(_root);
	@override late final _Translations$settings$uk settings = _Translations$settings$uk._(_root);
	@override late final _Translations$login$uk login = _Translations$login$uk._(_root);
	@override late final _Translations$live$uk live = _Translations$live$uk._(_root);
}

// Path: stream
class _Translations$stream$uk extends Translations$stream$en {
	_Translations$stream$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$uk status = _Translations$stream$status$uk._(_root);
	@override String started({required Object timestamp}) => 'Запустив ${timestamp}';
	@override String notification({required Object name}) => '${name} запрацював!';
	@override late final _Translations$stream$chat$uk chat = _Translations$stream$chat$uk._(_root);
}

// Path: goal
class _Translations$goal$uk extends Translations$goal$en {
	_Translations$goal$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Мета: ${amount}';
	@override String remaining({required Object amount}) => 'Залишилося: ${amount}';
	@override String get complete => 'ЗАВЕРШИТИ';
}

// Path: button
class _Translations$button$uk extends Translations$button$en {
	_Translations$button$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations

	/// Текст для кнопки входу в систему
	@override String get login => 'Логін';

	@override String get logout => 'Вийти з системи';
	@override String get edit_profile => 'Редагувати профіль';

	/// Текст для кнопки переходу
	@override String get follow => 'Підпишіться';

	/// Текст для кнопки відписки
	@override String get unfollow => 'Скасувати відповідь';

	@override String get mute => 'Вимкнути звук.';
	@override String get unmute => 'Увімкнути звук.';
	@override String get share => 'Поділіться';
	@override String get save => 'Зберегти';
	@override String get connect => 'Підключіться';
	@override String get settings => 'Налаштування';
}

// Path: embed
class _Translations$embed$uk extends Translations$embed$en {
	_Translations$embed$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Стаття за посиланням ${name}';
	@override String note_by({required Object name}) => 'Примітка ${name}';
	@override String live_stream_by({required Object name}) => 'Пряма трансляція на ${name}';
}

// Path: stream_list
class _Translations$stream_list$uk extends Translations$stream_list$en {
	_Translations$stream_list$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get following => 'Після того, як';
	@override String get live => 'Наживо';
	@override String get planned => 'Заплановано';
	@override String get ended => 'Закінчилося';
}

// Path: zap
class _Translations$zap$uk extends Translations$zap$en {
	_Translations$zap$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Нестандартна сума';
	@override String get confirm => 'Підтвердити';
	@override String get comment => 'Коментар';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap!';
	@override String get button_open_wallet => 'Відкрити в Гаманці';
	@override String get button_connect_wallet => 'Підключити гаманець';
	@override String get copy => 'Скопійовано в буфер обміну';
	@override late final _Translations$zap$error$uk error = _Translations$zap$error$uk._(_root);
}

// Path: profile
class _Translations$profile$uk extends Translations$profile$en {
	_Translations$profile$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Минулі потоки';
}

// Path: settings
class _Translations$settings$uk extends Translations$settings$en {
	_Translations$settings$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Редагувати профіль';
	@override String get button_wallet => 'Налаштування гаманця';
	@override late final _Translations$settings$profile$uk profile = _Translations$settings$profile$uk._(_root);
	@override late final _Translations$settings$wallet$uk wallet = _Translations$settings$wallet$uk._(_root);
}

// Path: login
class _Translations$login$uk extends Translations$login$en {
	_Translations$login$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get username => 'Ім\'я користувача';
	@override String get amber => 'Увійдіть за допомогою Amber';
	@override String get key => 'Увійдіть за допомогою ключа';
	@override String get create => 'Створити обліковий запис';
	@override late final _Translations$login$error$uk error = _Translations$login$error$uk._(_root);
}

// Path: live
class _Translations$live$uk extends Translations$live$en {
	_Translations$live$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get start => 'GO LIVE';
	@override String get configure_stream => 'Налаштувати потік';
	@override String get endpoint => 'Кінцева точка';
	@override String get accept_tos => 'Прийміть ТЗ';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Назва';
	@override String get summary => 'Підсумок';
	@override String get image => 'Зображення обкладинки';
	@override String get tags => 'Теги';
	@override String get nsfw => 'Нецензурна лексика';
	@override String get nsfw_description => 'Перевірте тут, чи містить цей потік оголену натуру або порнографічний контент.';
	@override late final _Translations$live$error$uk error = _Translations$live$error$uk._(_root);
}

// Path: stream.status
class _Translations$stream$status$uk extends Translations$stream$status$en {
	_Translations$stream$status$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get live => 'НАЖИВО';
	@override String get ended => 'ЗАКІНЧЕНО';
	@override String get planned => 'ЗАПЛАНОВАНО';
}

// Path: stream.chat
class _Translations$stream$chat$uk extends Translations$stream$chat$en {
	_Translations$stream$chat$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'ЧАТ ВІДКЛЮЧЕНО';
	@override String disabled_timeout({required Object time}) => 'Тайм-аут закінчився: ${time}';

	/// Повідомлення в чаті про події тайм-ауту
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' таймінг '),
		user,
		const TextSpan(text: ' для '),
		time,
	]);

	/// Нижній колонтитул кінця потоку внизу чату
	@override String get ended => 'СТРІМ ЗАКІНЧИВСЯ';

	/// Повідомлення в чаті, що показує затримки потоку
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _Translations$stream$chat$write$uk write = _Translations$stream$chat$write$uk._(_root);
	@override late final _Translations$stream$chat$badge$uk badge = _Translations$stream$chat$badge$uk._(_root);
	@override late final _Translations$stream$chat$raid$uk raid = _Translations$stream$chat$raid$uk._(_root);
}

// Path: zap.error
class _Translations$zap$error$uk extends Translations$zap$error$en {
	_Translations$zap$error$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Неправильна сума замовлення';
	@override String get no_wallet => 'Не встановлено гаманець-блискавку';
	@override String get no_lud16 => 'Адреса блискавки не знайдена';
}

// Path: settings.profile
class _Translations$settings$profile$uk extends Translations$settings$profile$en {
	_Translations$settings$profile$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Ім\'я користувача';
	@override String get about => 'Про';
	@override String get nip05 => 'Nostr Адреса';
	@override String get lud16 => 'Блискавична адреса';
	@override late final _Translations$settings$profile$error$uk error = _Translations$settings$profile$error$uk._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$uk extends Translations$settings$wallet$en {
	_Translations$settings$wallet$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Підключити гаманець (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Відключити гаманець';
	@override String get connect_1tap => 'Підключення в 1 кран';
	@override String get paste => 'Вставити URL-адресу';
	@override String get balance => 'Баланс';
	@override String get name => 'Гаманець';
	@override late final _Translations$settings$wallet$error$uk error = _Translations$settings$wallet$error$uk._(_root);
}

// Path: login.error
class _Translations$login$error$uk extends Translations$login$error$en {
	_Translations$login$error$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Неправильний ключ';
}

// Path: live.error
class _Translations$live$error$uk extends Translations$live$error$en {
	_Translations$live$error$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Потік не вдалося запустити';
	@override String get connection_error => 'Помилка з\'єднання';
	@override String get start_failed => 'Не вдалося запустити трансляцію, будь ласка, перевірте свій баланс';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$uk extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations

	/// Мітка у вікні введення повідомлення чату
	@override String get label => 'Написати повідомлення';

	/// Повідомлення в чаті, що відображається, коли користувач увійшов до системи лише з ключем pubkey
	@override String get no_signer => 'Неможливо писати повідомлення з логіном npub';

	/// Повідомлення для введення в чаті, що відображається, коли користувач вийшов з системи
	@override String get login => 'Будь ласка, авторизуйтесь, щоб надсилати повідомлення';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$uk extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations

	/// Над списком користувачів, яким присвоєно бейдж
	@override String get awarded_to => 'Нагороджується:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$uk extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations

	/// Повідомлення про рейд чату в інший потік
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Повідомлення про наліт на чат з іншого потоку
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// Таймер зворотного відліку для авторейду
	@override String countdown({required Object time}) => 'Рейд у ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$uk extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Неможливо редагувати профіль, коли ви вийшли з системи';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$uk extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Не вдається підключити гаманець, коли ви вийшли з системи';
	@override String get nwc_auth_event_not_found => 'Не знайдено жодної події авторизації гаманця';
}

/// The flat map containing all translations for locale <uk>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUk {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Завантажити аватар',
			'most_zapped_streamers' => 'Більшість стримерів, які були під напругою',
			'no_user_found' => 'Користувача не знайдено',
			'anon' => 'Анонім.',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('uk').format(n)} сатів',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '1 глядач', other: '${NumberFormat.decimalPattern('uk').format(n)} глядачів', ), 
			'stream.status.live' => 'НАЖИВО',
			'stream.status.ended' => 'ЗАКІНЧЕНО',
			'stream.status.planned' => 'ЗАПЛАНОВАНО',
			'stream.started' => ({required Object timestamp}) => 'Запустив ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} запрацював!',
			'stream.chat.disabled' => 'ЧАТ ВІДКЛЮЧЕНО',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Тайм-аут закінчився: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' таймінг '), user, const TextSpan(text: ' для '), time, ]), 
			'stream.chat.ended' => 'СТРІМ ЗАКІНЧИВСЯ',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Написати повідомлення',
			'stream.chat.write.no_signer' => 'Неможливо писати повідомлення з логіном npub',
			'stream.chat.write.login' => 'Будь ласка, авторизуйтесь, щоб надсилати повідомлення',
			'stream.chat.badge.awarded_to' => 'Нагороджується:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Рейд у ${time}',
			'goal.title' => ({required Object amount}) => 'Мета: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Залишилося: ${amount}',
			'goal.complete' => 'ЗАВЕРШИТИ',
			'button.login' => 'Логін',
			'button.logout' => 'Вийти з системи',
			'button.edit_profile' => 'Редагувати профіль',
			'button.follow' => 'Підпишіться',
			'button.unfollow' => 'Скасувати відповідь',
			'button.mute' => 'Вимкнути звук.',
			'button.unmute' => 'Увімкнути звук.',
			'button.share' => 'Поділіться',
			'button.save' => 'Зберегти',
			'button.connect' => 'Підключіться',
			'button.settings' => 'Налаштування',
			'embed.article_by' => ({required Object name}) => 'Стаття за посиланням ${name}',
			'embed.note_by' => ({required Object name}) => 'Примітка ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Пряма трансляція на ${name}',
			'stream_list.following' => 'Після того, як',
			'stream_list.live' => 'Наживо',
			'stream_list.planned' => 'Заплановано',
			'stream_list.ended' => 'Закінчилося',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Нестандартна сума',
			'zap.confirm' => 'Підтвердити',
			'zap.comment' => 'Коментар',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap!',
			'zap.button_open_wallet' => 'Відкрити в Гаманці',
			'zap.button_connect_wallet' => 'Підключити гаманець',
			'zap.copy' => 'Скопійовано в буфер обміну',
			'zap.error.invalid_custom_amount' => 'Неправильна сума замовлення',
			'zap.error.no_wallet' => 'Не встановлено гаманець-блискавку',
			'zap.error.no_lud16' => 'Адреса блискавки не знайдена',
			'profile.past_streams' => 'Минулі потоки',
			'settings.button_profile' => 'Редагувати профіль',
			'settings.button_wallet' => 'Налаштування гаманця',
			'settings.profile.display_name' => 'Ім\'я користувача',
			'settings.profile.about' => 'Про',
			'settings.profile.nip05' => 'Nostr Адреса',
			'settings.profile.lud16' => 'Блискавична адреса',
			'settings.profile.error.logged_out' => 'Неможливо редагувати профіль, коли ви вийшли з системи',
			'settings.wallet.connect_wallet' => 'Підключити гаманець (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Відключити гаманець',
			'settings.wallet.connect_1tap' => 'Підключення в 1 кран',
			'settings.wallet.paste' => 'Вставити URL-адресу',
			'settings.wallet.balance' => 'Баланс',
			'settings.wallet.name' => 'Гаманець',
			'settings.wallet.error.logged_out' => 'Не вдається підключити гаманець, коли ви вийшли з системи',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Не знайдено жодної події авторизації гаманця',
			'login.username' => 'Ім\'я користувача',
			'login.amber' => 'Увійдіть за допомогою Amber',
			'login.key' => 'Увійдіть за допомогою ключа',
			'login.create' => 'Створити обліковий запис',
			'login.error.invalid_key' => 'Неправильний ключ',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Налаштувати потік',
			'live.endpoint' => 'Кінцева точка',
			'live.accept_tos' => 'Прийміть ТЗ',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Назва',
			'live.summary' => 'Підсумок',
			'live.image' => 'Зображення обкладинки',
			'live.tags' => 'Теги',
			'live.nsfw' => 'Нецензурна лексика',
			'live.nsfw_description' => 'Перевірте тут, чи містить цей потік оголену натуру або порнографічний контент.',
			'live.error.failed' => 'Потік не вдалося запустити',
			'live.error.connection_error' => 'Помилка з\'єднання',
			'live.error.start_failed' => 'Не вдалося запустити трансляцію, будь ласка, перевірте свій баланс',
			_ => null,
		};
	}
}
