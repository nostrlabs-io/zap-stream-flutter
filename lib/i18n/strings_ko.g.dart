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
class TranslationsKo implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations

	/// 아바타 플레이스홀더를 눌러 업로드를 시작하라는 메시지를 표시하는 텍스트
	@override String get upload_avatar => '아바타 업로드';

	/// 나열된 상위 스트리머를 잽별로 살펴보기
	@override String get most_zapped_streamers => '가장 많이 재핑된 스트리머';

	/// 검색 시 사용자를 찾을 수 없음
	@override String get no_user_found => '사용자를 찾을 수 없습니다.';

	/// 익명 사용자
	@override String get anon => 'Anon';

	/// 스트림 시청자 수
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '시청자 1명',
		other: '${n} 시청자',
	);

	@override late final _TranslationsStreamKo stream = _TranslationsStreamKo._(_root);
	@override late final _TranslationsGoalKo goal = _TranslationsGoalKo._(_root);
	@override late final _TranslationsButtonKo button = _TranslationsButtonKo._(_root);
	@override late final _TranslationsEmbedKo embed = _TranslationsEmbedKo._(_root);

	/// 실시간/종료/예정 등 스트림 유형별로 스트림 목록의 제목을 표시합니다.
	@override late final _TranslationsStreamListKo stream_list = _TranslationsStreamListKo._(_root);

	@override late final _TranslationsZapKo zap = _TranslationsZapKo._(_root);
	@override late final _TranslationsProfileKo profile = _TranslationsProfileKo._(_root);
	@override late final _TranslationsLoginKo login = _TranslationsLoginKo._(_root);
}

// Path: stream
class _TranslationsStreamKo implements TranslationsStreamEn {
	_TranslationsStreamKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusKo status = _TranslationsStreamStatusKo._(_root);
	@override String started({ required Object timestamp}) => '시작 ${timestamp}';
	@override late final _TranslationsStreamChatKo chat = _TranslationsStreamChatKo._(_root);
}

// Path: goal
class _TranslationsGoalKo implements TranslationsGoalEn {
	_TranslationsGoalKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => '목표: ${amount}';
	@override String remaining({ required Object amount}) => '남음: ${amount}';
	@override String get complete => '완료';
}

// Path: button
class _TranslationsButtonKo implements TranslationsButtonEn {
	_TranslationsButtonKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations

	/// 로그인 버튼의 버튼 텍스트
	@override String get login => '로그인';

	@override String get logout => '로그아웃';
	@override String get edit_profile => '프로필 수정';

	/// 팔로우 버튼의 버튼 텍스트
	@override String get follow => '팔로우';

	/// 언팔로우 버튼의 버튼 텍스트
	@override String get unfollow => '언팔로우';

	@override String get mute => '뮤트';
	@override String get unmute => '뮤트 해제';
	@override String get share => '공유';
	@override String get save => '저장';
}

// Path: embed
class _TranslationsEmbedKo implements TranslationsEmbedEn {
	_TranslationsEmbedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => '작성자: ${name}';
	@override String note_by({ required Object name}) => '노트 작성됨: ${name}';
	@override String live_stream_by({ required Object name}) => '라이브 스트리밍: ${name}';
}

// Path: stream_list
class _TranslationsStreamListKo implements TranslationsStreamListEn {
	_TranslationsStreamListKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get following => '팔로잉';
	@override String get live => '라이브';
	@override String get planned => '계획된';
	@override String get ended => '종료됨';
}

// Path: zap
class _TranslationsZapKo implements TranslationsZapEn {
	_TranslationsZapKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => '사용자 지정 금액';
	@override String get confirm => '확인';
	@override String get comment => '댓글';
	@override String button_zap_ready({ required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => '지갑에서 열기';
	@override String get copy => '클립보드에 복사';
	@override late final _TranslationsZapErrorKo error = _TranslationsZapErrorKo._(_root);
}

// Path: profile
class _TranslationsProfileKo implements TranslationsProfileEn {
	_TranslationsProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get past_streams => '과거 스트림';
	@override late final _TranslationsProfileEditKo edit = _TranslationsProfileEditKo._(_root);
}

// Path: login
class _TranslationsLoginKo implements TranslationsLoginEn {
	_TranslationsLoginKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get username => '사용자 이름';
	@override String get amber => 'Amber로 로그인';
	@override String get key => '키로 로그인';
	@override String get create => '계정 만들기';
	@override late final _TranslationsLoginErrorKo error = _TranslationsLoginErrorKo._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusKo implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get live => '라이브';
	@override String get ended => '종료';
	@override String get planned => '계획된';
}

// Path: stream.chat
class _TranslationsStreamChatKo implements TranslationsStreamChatEn {
	_TranslationsStreamChatKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get disabled => '채팅 사용 안 함';
	@override String disabled_timeout({ required Object time}) => '시간 초과가 만료되었습니다: ${time}';

	/// 시간 초과 이벤트를 표시하는 채팅 메시지
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' 시간 초과됨 '),
		user,
		const TextSpan(text: ' '),
		time,
	], style: style, recognizer: recognizer);

	/// 채팅 하단의 스트림 종료 푸터
	@override String get ended => '스트림 종료';

	/// 채팅 메시지 스트림 끊김 표시
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' ZAPP '),
		amount,
		const TextSpan(text: ' SATS'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteKo write = _TranslationsStreamChatWriteKo._(_root);
	@override late final _TranslationsStreamChatBadgeKo badge = _TranslationsStreamChatBadgeKo._(_root);
	@override late final _TranslationsStreamChatRaidKo raid = _TranslationsStreamChatRaidKo._(_root);
}

// Path: zap.error
class _TranslationsZapErrorKo implements TranslationsZapErrorEn {
	_TranslationsZapErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => '잘못된 사용자 지정 금액';
	@override String get no_wallet => '라이트닝 월렛이 설치되지 않았습니다.';
	@override String get no_lud16 => '번개 주소를 찾을 수 없습니다.';
}

// Path: profile.edit
class _TranslationsProfileEditKo implements TranslationsProfileEditEn {
	_TranslationsProfileEditKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get display_name => '표시 이름';
	@override String get about => '정보';
	@override String get nip05 => '노스트르 주소';
	@override String get lud16 => '라이트닝 주소';
	@override late final _TranslationsProfileEditErrorKo error = _TranslationsProfileEditErrorKo._(_root);
}

// Path: login.error
class _TranslationsLoginErrorKo implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => '잘못된 키';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteKo implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations

	/// 채팅 메시지 입력 상자의 라벨
	@override String get label => '메시지 작성';

	/// 사용자가 공개 키로만 로그인한 경우에 표시되는 채팅 입력 메시지
	@override String get no_signer => 'npub 로그인으로 메시지를 작성할 수 없습니다.';

	/// 사용자가 로그아웃할 때 표시되는 채팅 입력 메시지
	@override String get login => '메시지를 보내려면 로그인하세요.';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeKo implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations

	/// 배지를 받은 사용자 목록으로 이동하기
	@override String get awarded_to => '수상 대상';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidKo implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations

	/// 다른 스트림으로 채팅 레이드 메시지 보내기
	@override String to({ required Object name}) => 'RAIDing ${name}';

	/// 다른 스트림의 채팅 레이드 메시지
	@override String from({ required Object name}) => 'RAID FROM ${name}';

	/// 자동 레이드를 위한 카운트다운 타이머
	@override String countdown({ required Object time}) => '${time}에서 레이드';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorKo implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get logged_out => '로그아웃 시 프로필 수정 불가';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return '아바타 업로드';
			case 'most_zapped_streamers': return '가장 많이 재핑된 스트리머';
			case 'no_user_found': return '사용자를 찾을 수 없습니다.';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
				one: '시청자 1명',
				other: '${n} 시청자',
			);
			case 'stream.status.live': return '라이브';
			case 'stream.status.ended': return '종료';
			case 'stream.status.planned': return '계획된';
			case 'stream.started': return ({ required Object timestamp}) => '시작 ${timestamp}';
			case 'stream.chat.disabled': return '채팅 사용 안 함';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => '시간 초과가 만료되었습니다: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' 시간 초과됨 '),
				user,
				const TextSpan(text: ' '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return '스트림 종료';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' ZAPP '),
				amount,
				const TextSpan(text: ' SATS'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return '메시지 작성';
			case 'stream.chat.write.no_signer': return 'npub 로그인으로 메시지를 작성할 수 없습니다.';
			case 'stream.chat.write.login': return '메시지를 보내려면 로그인하세요.';
			case 'stream.chat.badge.awarded_to': return '수상 대상';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDing ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => '${time}에서 레이드';
			case 'goal.title': return ({ required Object amount}) => '목표: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => '남음: ${amount}';
			case 'goal.complete': return '완료';
			case 'button.login': return '로그인';
			case 'button.logout': return '로그아웃';
			case 'button.edit_profile': return '프로필 수정';
			case 'button.follow': return '팔로우';
			case 'button.unfollow': return '언팔로우';
			case 'button.mute': return '뮤트';
			case 'button.unmute': return '뮤트 해제';
			case 'button.share': return '공유';
			case 'button.save': return '저장';
			case 'embed.article_by': return ({ required Object name}) => '작성자: ${name}';
			case 'embed.note_by': return ({ required Object name}) => '노트 작성됨: ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => '라이브 스트리밍: ${name}';
			case 'stream_list.following': return '팔로잉';
			case 'stream_list.live': return '라이브';
			case 'stream_list.planned': return '계획된';
			case 'stream_list.ended': return '종료됨';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return '사용자 지정 금액';
			case 'zap.confirm': return '확인';
			case 'zap.comment': return '댓글';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return '지갑에서 열기';
			case 'zap.copy': return '클립보드에 복사';
			case 'zap.error.invalid_custom_amount': return '잘못된 사용자 지정 금액';
			case 'zap.error.no_wallet': return '라이트닝 월렛이 설치되지 않았습니다.';
			case 'zap.error.no_lud16': return '번개 주소를 찾을 수 없습니다.';
			case 'profile.past_streams': return '과거 스트림';
			case 'profile.edit.display_name': return '표시 이름';
			case 'profile.edit.about': return '정보';
			case 'profile.edit.nip05': return '노스트르 주소';
			case 'profile.edit.lud16': return '라이트닝 주소';
			case 'profile.edit.error.logged_out': return '로그아웃 시 프로필 수정 불가';
			case 'login.username': return '사용자 이름';
			case 'login.amber': return 'Amber로 로그인';
			case 'login.key': return '키로 로그인';
			case 'login.create': return '계정 만들기';
			case 'login.error.invalid_key': return '잘못된 키';
			default: return null;
		}
	}
}

