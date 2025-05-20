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
class TranslationsRu implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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

	/// Количество зрителей потока
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '1 зритель',
		other: '${n} зрителей',
	);

	@override late final _TranslationsStreamRu stream = _TranslationsStreamRu._(_root);
	@override late final _TranslationsGoalRu goal = _TranslationsGoalRu._(_root);
	@override late final _TranslationsButtonRu button = _TranslationsButtonRu._(_root);
	@override late final _TranslationsEmbedRu embed = _TranslationsEmbedRu._(_root);

	/// Заголовки в списках потоков по типу потока - живой/законченный/запланированный и т. д.
	@override late final _TranslationsStreamListRu stream_list = _TranslationsStreamListRu._(_root);

	@override late final _TranslationsZapRu zap = _TranslationsZapRu._(_root);
	@override late final _TranslationsProfileRu profile = _TranslationsProfileRu._(_root);
	@override late final _TranslationsLoginRu login = _TranslationsLoginRu._(_root);
}

// Path: stream
class _TranslationsStreamRu implements TranslationsStreamEn {
	_TranslationsStreamRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusRu status = _TranslationsStreamStatusRu._(_root);
	@override String started({ required Object timestamp}) => 'Начало ${timestamp}';
	@override late final _TranslationsStreamChatRu chat = _TranslationsStreamChatRu._(_root);
}

// Path: goal
class _TranslationsGoalRu implements TranslationsGoalEn {
	_TranslationsGoalRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Цель: ${amount}';
	@override String remaining({ required Object amount}) => 'Осталось: ${amount}';
	@override String get complete => 'КОМПЛЕКТ';
}

// Path: button
class _TranslationsButtonRu implements TranslationsButtonEn {
	_TranslationsButtonRu._(this._root);

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
}

// Path: embed
class _TranslationsEmbedRu implements TranslationsEmbedEn {
	_TranslationsEmbedRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Статья ${name}';
	@override String note_by({ required Object name}) => 'Заметка на сайте ${name}';
	@override String live_stream_by({ required Object name}) => 'Прямая трансляция: ${name}';
}

// Path: stream_list
class _TranslationsStreamListRu implements TranslationsStreamListEn {
	_TranslationsStreamListRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get following => 'Подписки';
	@override String get live => 'Прямой эфир';
	@override String get planned => 'Запланировано';
	@override String get ended => 'Завершено';
}

// Path: zap
class _TranslationsZapRu implements TranslationsZapEn {
	_TranslationsZapRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Запнуть (${name}';
	@override String get custom_amount => 'Пользовательская сумма';
	@override String get confirm => 'Подтвердить';
	@override String get comment => 'Комментарий';
	@override String button_zap_ready({ required Object amount}) => 'Запнуть ${amount} сат';
	@override String get button_zap => 'Зап';
	@override String get button_open_wallet => 'Открыть в кошельке';
	@override String get copy => 'Скопировано в буфер обмена';
	@override late final _TranslationsZapErrorRu error = _TranslationsZapErrorRu._(_root);
}

// Path: profile
class _TranslationsProfileRu implements TranslationsProfileEn {
	_TranslationsProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Предыдущие трансляции';
	@override late final _TranslationsProfileEditRu edit = _TranslationsProfileEditRu._(_root);
}

// Path: login
class _TranslationsLoginRu implements TranslationsLoginEn {
	_TranslationsLoginRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get username => 'Имя пользователя';
	@override String get amber => 'Войти с помощью Amber';
	@override String get key => 'Вход в систему с помощью ключа';
	@override String get create => 'Создать аккаунт';
	@override late final _TranslationsLoginErrorRu error = _TranslationsLoginErrorRu._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusRu implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'КОНЕЦ';
	@override String get planned => 'ПЛАНИРУЕМЫЙ';
}

// Path: stream.chat
class _TranslationsStreamChatRu implements TranslationsStreamChatEn {
	_TranslationsStreamChatRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'ЧАТ ОТКЛЮЧЕН';
	@override String disabled_timeout({ required Object time}) => 'Таймаут истекает: ${time}';

	/// Сообщение в чате, показывающее события по тайм-ауту
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' тайм-аут '),
		user,
		const TextSpan(text: ' для '),
		time,
	], style: style, recognizer: recognizer);

	/// Поток закончился в нижней части чата
	@override String get ended => 'ТРАНСЛЯЦИЯ ОКОНЧЕНА';

	/// Сообщение в чате, отображающее потоковые зазоры
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' запнул '),
		amount,
		const TextSpan(text: ' сат'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteRu write = _TranslationsStreamChatWriteRu._(_root);
	@override late final _TranslationsStreamChatBadgeRu badge = _TranslationsStreamChatBadgeRu._(_root);
	@override late final _TranslationsStreamChatRaidRu raid = _TranslationsStreamChatRaidRu._(_root);
}

// Path: zap.error
class _TranslationsZapErrorRu implements TranslationsZapErrorEn {
	_TranslationsZapErrorRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Недопустимая пользовательская сумма';
	@override String get no_wallet => 'Кошелек молнии не установлен';
	@override String get no_lud16 => 'Адрес молнии не найден';
}

// Path: profile.edit
class _TranslationsProfileEditRu implements TranslationsProfileEditEn {
	_TranslationsProfileEditRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Отображаемое имя';
	@override String get about => 'О себе';
	@override String get nip05 => 'Nostr адрес';
	@override String get lud16 => 'Lightning Адрес';
	@override late final _TranslationsProfileEditErrorRu error = _TranslationsProfileEditErrorRu._(_root);
}

// Path: login.error
class _TranslationsLoginErrorRu implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Неверный ключ';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteRu implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteRu._(this._root);

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
class _TranslationsStreamChatBadgeRu implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations

	/// Заголовок над списком пользователей, награжденных значком
	@override String get awarded_to => 'Награждается:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidRu implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations

	/// Сообщение о рейде в чате в другой поток
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Сообщение о рейде в чате из другого потока
	@override String from({ required Object name}) => 'RAID FROM ${name}';

	/// Таймер обратного отсчета для автопоездки
	@override String countdown({ required Object time}) => 'Рейды в ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorRu implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Невозможно редактировать профиль при выходе из системы';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Загрузить аватар';
			case 'most_zapped_streamers': return 'Самые прыткие стримеры';
			case 'no_user_found': return 'Пользователь не найден';
			case 'anon': return 'Аноним';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
				one: '1 зритель',
				other: '${n} зрителей',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'КОНЕЦ';
			case 'stream.status.planned': return 'ПЛАНИРУЕМЫЙ';
			case 'stream.started': return ({ required Object timestamp}) => 'Начало ${timestamp}';
			case 'stream.chat.disabled': return 'ЧАТ ОТКЛЮЧЕН';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Таймаут истекает: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' тайм-аут '),
				user,
				const TextSpan(text: ' для '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'ТРАНСЛЯЦИЯ ОКОНЧЕНА';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' запнул '),
				amount,
				const TextSpan(text: ' сат'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Написать сообщение';
			case 'stream.chat.write.no_signer': return 'Невозможно писать сообщения с логином npub';
			case 'stream.chat.write.login': return 'Пожалуйста, войдите в систему, чтобы отправлять сообщения';
			case 'stream.chat.badge.awarded_to': return 'Награждается:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Рейды в ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Цель: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Осталось: ${amount}';
			case 'goal.complete': return 'КОМПЛЕКТ';
			case 'button.login': return 'Логин';
			case 'button.logout': return 'Выйти';
			case 'button.edit_profile': return 'Редактировать профиль';
			case 'button.follow': return 'Подписаться';
			case 'button.unfollow': return 'Отписаться';
			case 'button.mute': return 'Заглушить';
			case 'button.unmute': return 'Включить уведомления';
			case 'button.share': return 'Поделиться';
			case 'button.save': return 'Сохранить';
			case 'embed.article_by': return ({ required Object name}) => 'Статья ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Заметка на сайте ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Прямая трансляция: ${name}';
			case 'stream_list.following': return 'Подписки';
			case 'stream_list.live': return 'Прямой эфир';
			case 'stream_list.planned': return 'Запланировано';
			case 'stream_list.ended': return 'Завершено';
			case 'zap.title': return ({ required Object name}) => 'Запнуть (${name}';
			case 'zap.custom_amount': return 'Пользовательская сумма';
			case 'zap.confirm': return 'Подтвердить';
			case 'zap.comment': return 'Комментарий';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Запнуть ${amount} сат';
			case 'zap.button_zap': return 'Зап';
			case 'zap.button_open_wallet': return 'Открыть в кошельке';
			case 'zap.copy': return 'Скопировано в буфер обмена';
			case 'zap.error.invalid_custom_amount': return 'Недопустимая пользовательская сумма';
			case 'zap.error.no_wallet': return 'Кошелек молнии не установлен';
			case 'zap.error.no_lud16': return 'Адрес молнии не найден';
			case 'profile.past_streams': return 'Предыдущие трансляции';
			case 'profile.edit.display_name': return 'Отображаемое имя';
			case 'profile.edit.about': return 'О себе';
			case 'profile.edit.nip05': return 'Nostr адрес';
			case 'profile.edit.lud16': return 'Lightning Адрес';
			case 'profile.edit.error.logged_out': return 'Невозможно редактировать профиль при выходе из системы';
			case 'login.username': return 'Имя пользователя';
			case 'login.amber': return 'Войти с помощью Amber';
			case 'login.key': return 'Вход в систему с помощью ключа';
			case 'login.create': return 'Создать аккаунт';
			case 'login.error.invalid_key': return 'Неверный ключ';
			default: return null;
		}
	}
}

