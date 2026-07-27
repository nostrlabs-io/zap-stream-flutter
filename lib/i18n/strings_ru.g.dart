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
class TranslationsRu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations

	/// Текст, побуждающий пользователя нажать кнопку с изображением аватара, чтобы начать загрузку
	@override String get upload_avatar => 'Загрузить аватар';

	/// Направляясь по перечисленным верхним стримерам с помощью запс
	@override String get most_zapped_streamers => 'Самые прыткие стримеры';

	/// Пользователь не найден при поиске
	@override String get no_user_found => 'Пользователь не найден';

	/// Анонимный пользователь
	@override String get anon => 'Аноним';

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('ru').format(n)} sats';

	/// Количество зрителей потока
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '1 зритель',
		other: '${NumberFormat.decimalPattern('ru').format(n)} зрителей',
	);

	@override late final _Translations$stream$ru stream = _Translations$stream$ru._(_root);
	@override late final _Translations$goal$ru goal = _Translations$goal$ru._(_root);
	@override late final _Translations$button$ru button = _Translations$button$ru._(_root);
	@override late final _Translations$embed$ru embed = _Translations$embed$ru._(_root);

	/// Заголовки в списках потоков по типу потока - живой/законченный/запланированный и т. д.
	@override late final _Translations$stream_list$ru stream_list = _Translations$stream_list$ru._(_root);

	@override late final _Translations$zap$ru zap = _Translations$zap$ru._(_root);
	@override late final _Translations$profile$ru profile = _Translations$profile$ru._(_root);
	@override late final _Translations$settings$ru settings = _Translations$settings$ru._(_root);
	@override late final _Translations$login$ru login = _Translations$login$ru._(_root);
	@override late final _Translations$live$ru live = _Translations$live$ru._(_root);
}

// Path: stream
class _Translations$stream$ru extends Translations$stream$en {
	_Translations$stream$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$ru status = _Translations$stream$status$ru._(_root);
	@override String started({required Object timestamp}) => 'Начало ${timestamp}';
	@override String notification({required Object name}) => '${name} запустился!';
	@override late final _Translations$stream$chat$ru chat = _Translations$stream$chat$ru._(_root);
}

// Path: goal
class _Translations$goal$ru extends Translations$goal$en {
	_Translations$goal$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Цель: ${amount}';
	@override String remaining({required Object amount}) => 'Осталось: ${amount}';
	@override String get complete => 'КОМПЛЕКТ';
}

// Path: button
class _Translations$button$ru extends Translations$button$en {
	_Translations$button$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations

	/// Текст кнопки для входа в систему
	@override String get login => 'Логин';

	@override String get logout => 'Выйти';
	@override String get edit_profile => 'Редактировать профиль';

	/// Текст кнопки для кнопки следования
	@override String get follow => 'Подписаться';

	/// Текст кнопки для кнопки "Развернуть
	@override String get unfollow => 'Отписаться';

	@override String get mute => 'Заглушить';
	@override String get unmute => 'Включить уведомления';
	@override String get share => 'Поделиться';
	@override String get save => 'Сохранить';
	@override String get connect => 'Подключайтесь';
	@override String get settings => 'Настройки';
}

// Path: embed
class _Translations$embed$ru extends Translations$embed$en {
	_Translations$embed$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Статья ${name}';
	@override String note_by({required Object name}) => 'Заметка на сайте ${name}';
	@override String live_stream_by({required Object name}) => 'Прямая трансляция: ${name}';
}

// Path: stream_list
class _Translations$stream_list$ru extends Translations$stream_list$en {
	_Translations$stream_list$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get following => 'Подписки';
	@override String get live => 'Прямой эфир';
	@override String get planned => 'Запланировано';
	@override String get ended => 'Завершено';
}

// Path: zap
class _Translations$zap$ru extends Translations$zap$en {
	_Translations$zap$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Запнуть (${name}';
	@override String get custom_amount => 'Пользовательская сумма';
	@override String get confirm => 'Подтвердить';
	@override String get comment => 'Комментарий';
	@override String button_zap_ready({required Object amount}) => 'Запнуть ${amount} сат';
	@override String get button_zap => 'Зап';
	@override String get button_open_wallet => 'Открыть в кошельке';
	@override String get button_connect_wallet => 'Подключить кошелек';
	@override String get copy => 'Скопировано в буфер обмена';
	@override late final _Translations$zap$error$ru error = _Translations$zap$error$ru._(_root);
}

// Path: profile
class _Translations$profile$ru extends Translations$profile$en {
	_Translations$profile$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Предыдущие трансляции';
}

// Path: settings
class _Translations$settings$ru extends Translations$settings$en {
	_Translations$settings$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Редактировать профиль';
	@override String get button_wallet => 'Настройки кошелька';
	@override late final _Translations$settings$profile$ru profile = _Translations$settings$profile$ru._(_root);
	@override late final _Translations$settings$wallet$ru wallet = _Translations$settings$wallet$ru._(_root);
}

// Path: login
class _Translations$login$ru extends Translations$login$en {
	_Translations$login$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get username => 'Имя пользователя';
	@override String get amber => 'Войти с помощью Amber';
	@override String get key => 'Вход в систему с помощью ключа';
	@override String get create => 'Создать аккаунт';
	@override late final _Translations$login$error$ru error = _Translations$login$error$ru._(_root);
}

// Path: live
class _Translations$live$ru extends Translations$live$en {
	_Translations$live$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get start => 'ПЕРЕЙТИ В ПРЯМОЙ ЭФИР';
	@override String get configure_stream => 'Настроить поток';
	@override String get endpoint => 'Конечная точка';
	@override String get accept_tos => 'Принять TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Название';
	@override String get summary => 'Резюме';
	@override String get image => 'Изображение на обложке';
	@override String get tags => 'Теги';
	@override String get nsfw => 'NSFW-контент';
	@override String get nsfw_description => 'Отметьте здесь, если этот поток содержит наготу или порнографические материалы.';
	@override late final _Translations$live$error$ru error = _Translations$live$error$ru._(_root);
}

// Path: stream.status
class _Translations$stream$status$ru extends Translations$stream$status$en {
	_Translations$stream$status$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'КОНЕЦ';
	@override String get planned => 'ПЛАНИРУЕМЫЙ';
}

// Path: stream.chat
class _Translations$stream$chat$ru extends Translations$stream$chat$en {
	_Translations$stream$chat$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'ЧАТ ОТКЛЮЧЕН';
	@override String disabled_timeout({required Object time}) => 'Таймаут истекает: ${time}';

	/// Сообщение в чате, показывающее события по тайм-ауту
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' тайм-аут '),
		user,
		const TextSpan(text: ' для '),
		time,
	]);

	/// Поток закончился в нижней части чата
	@override String get ended => 'ТРАНСЛЯЦИЯ ОКОНЧЕНА';

	/// Сообщение в чате, отображающее потоковые зазоры
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' запнул '),
		amount,
		const TextSpan(text: ' сат'),
	]);

	@override late final _Translations$stream$chat$write$ru write = _Translations$stream$chat$write$ru._(_root);
	@override late final _Translations$stream$chat$badge$ru badge = _Translations$stream$chat$badge$ru._(_root);
	@override late final _Translations$stream$chat$raid$ru raid = _Translations$stream$chat$raid$ru._(_root);
}

// Path: zap.error
class _Translations$zap$error$ru extends Translations$zap$error$en {
	_Translations$zap$error$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Недопустимая пользовательская сумма';
	@override String get no_wallet => 'Кошелек молнии не установлен';
	@override String get no_lud16 => 'Адрес молнии не найден';
}

// Path: settings.profile
class _Translations$settings$profile$ru extends Translations$settings$profile$en {
	_Translations$settings$profile$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Отображаемое имя';
	@override String get about => 'О сайте';
	@override String get nip05 => 'Адрес Ностр';
	@override String get lud16 => 'Адрес молнии';
	@override late final _Translations$settings$profile$error$ru error = _Translations$settings$profile$error$ru._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$ru extends Translations$settings$wallet$en {
	_Translations$settings$wallet$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Кошелек Connect (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Отключить кошелек';
	@override String get connect_1tap => '1-кратное соединение';
	@override String get paste => 'Вставить URL';
	@override String get balance => 'Баланс';
	@override String get name => 'Кошелек';
	@override late final _Translations$settings$wallet$error$ru error = _Translations$settings$wallet$error$ru._(_root);
}

// Path: login.error
class _Translations$login$error$ru extends Translations$login$error$en {
	_Translations$login$error$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Неверный ключ';
}

// Path: live.error
class _Translations$live$error$ru extends Translations$live$error$en {
	_Translations$live$error$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Сбой потока';
	@override String get connection_error => 'Ошибка подключения';
	@override String get start_failed => 'Запуск потока не удался, пожалуйста, проверьте баланс';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$ru extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations

	/// Надпись на поле ввода сообщения чата
	@override String get label => 'Написать сообщение';

	/// Сообщение о входе в чат, отображаемое при входе пользователя только с pubkey
	@override String get no_signer => 'Невозможно писать сообщения с логином npub';

	/// Сообщение о входе в чат, отображаемое при выходе пользователя из системы
	@override String get login => 'Пожалуйста, войдите в систему, чтобы отправлять сообщения';
}

// Path: stream.chat.badge
class _Translations$stream$chat$badge$ru extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations

	/// Заголовок над списком пользователей, награжденных значком
	@override String get awarded_to => 'Награждается:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$ru extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations

	/// Сообщение о рейде в чате в другой поток
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Сообщение о рейде в чате из другого потока
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// Таймер обратного отсчета для автопоездки
	@override String countdown({required Object time}) => 'Рейды в ${time}';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$ru extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Невозможно редактировать профиль при выходе из системы';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$ru extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Невозможно подключить кошелек при выходе из системы';
	@override String get nwc_auth_event_not_found => 'Событие аутентификации кошелька не найдено';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Загрузить аватар',
			'most_zapped_streamers' => 'Самые прыткие стримеры',
			'no_user_found' => 'Пользователь не найден',
			'anon' => 'Аноним',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('ru').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '1 зритель', other: '${NumberFormat.decimalPattern('ru').format(n)} зрителей', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'КОНЕЦ',
			'stream.status.planned' => 'ПЛАНИРУЕМЫЙ',
			'stream.started' => ({required Object timestamp}) => 'Начало ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} запустился!',
			'stream.chat.disabled' => 'ЧАТ ОТКЛЮЧЕН',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Таймаут истекает: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' тайм-аут '), user, const TextSpan(text: ' для '), time, ]), 
			'stream.chat.ended' => 'ТРАНСЛЯЦИЯ ОКОНЧЕНА',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' запнул '), amount, const TextSpan(text: ' сат'), ]), 
			'stream.chat.write.label' => 'Написать сообщение',
			'stream.chat.write.no_signer' => 'Невозможно писать сообщения с логином npub',
			'stream.chat.write.login' => 'Пожалуйста, войдите в систему, чтобы отправлять сообщения',
			'stream.chat.badge.awarded_to' => 'Награждается:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Рейды в ${time}',
			'goal.title' => ({required Object amount}) => 'Цель: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Осталось: ${amount}',
			'goal.complete' => 'КОМПЛЕКТ',
			'button.login' => 'Логин',
			'button.logout' => 'Выйти',
			'button.edit_profile' => 'Редактировать профиль',
			'button.follow' => 'Подписаться',
			'button.unfollow' => 'Отписаться',
			'button.mute' => 'Заглушить',
			'button.unmute' => 'Включить уведомления',
			'button.share' => 'Поделиться',
			'button.save' => 'Сохранить',
			'button.connect' => 'Подключайтесь',
			'button.settings' => 'Настройки',
			'embed.article_by' => ({required Object name}) => 'Статья ${name}',
			'embed.note_by' => ({required Object name}) => 'Заметка на сайте ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Прямая трансляция: ${name}',
			'stream_list.following' => 'Подписки',
			'stream_list.live' => 'Прямой эфир',
			'stream_list.planned' => 'Запланировано',
			'stream_list.ended' => 'Завершено',
			'zap.title' => ({required Object name}) => 'Запнуть (${name}',
			'zap.custom_amount' => 'Пользовательская сумма',
			'zap.confirm' => 'Подтвердить',
			'zap.comment' => 'Комментарий',
			'zap.button_zap_ready' => ({required Object amount}) => 'Запнуть ${amount} сат',
			'zap.button_zap' => 'Зап',
			'zap.button_open_wallet' => 'Открыть в кошельке',
			'zap.button_connect_wallet' => 'Подключить кошелек',
			'zap.copy' => 'Скопировано в буфер обмена',
			'zap.error.invalid_custom_amount' => 'Недопустимая пользовательская сумма',
			'zap.error.no_wallet' => 'Кошелек молнии не установлен',
			'zap.error.no_lud16' => 'Адрес молнии не найден',
			'profile.past_streams' => 'Предыдущие трансляции',
			'settings.button_profile' => 'Редактировать профиль',
			'settings.button_wallet' => 'Настройки кошелька',
			'settings.profile.display_name' => 'Отображаемое имя',
			'settings.profile.about' => 'О сайте',
			'settings.profile.nip05' => 'Адрес Ностр',
			'settings.profile.lud16' => 'Адрес молнии',
			'settings.profile.error.logged_out' => 'Невозможно редактировать профиль при выходе из системы',
			'settings.wallet.connect_wallet' => 'Кошелек Connect (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Отключить кошелек',
			'settings.wallet.connect_1tap' => '1-кратное соединение',
			'settings.wallet.paste' => 'Вставить URL',
			'settings.wallet.balance' => 'Баланс',
			'settings.wallet.name' => 'Кошелек',
			'settings.wallet.error.logged_out' => 'Невозможно подключить кошелек при выходе из системы',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Событие аутентификации кошелька не найдено',
			'login.username' => 'Имя пользователя',
			'login.amber' => 'Войти с помощью Amber',
			'login.key' => 'Вход в систему с помощью ключа',
			'login.create' => 'Создать аккаунт',
			'login.error.invalid_key' => 'Неверный ключ',
			'live.start' => 'ПЕРЕЙТИ В ПРЯМОЙ ЭФИР',
			'live.configure_stream' => 'Настроить поток',
			'live.endpoint' => 'Конечная точка',
			'live.accept_tos' => 'Принять TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Название',
			'live.summary' => 'Резюме',
			'live.image' => 'Изображение на обложке',
			'live.tags' => 'Теги',
			'live.nsfw' => 'NSFW-контент',
			'live.nsfw_description' => 'Отметьте здесь, если этот поток содержит наготу или порнографические материалы.',
			'live.error.failed' => 'Сбой потока',
			'live.error.connection_error' => 'Ошибка подключения',
			'live.error.start_failed' => 'Запуск потока не удался, пожалуйста, проверьте баланс',
			_ => null,
		};
	}
}
