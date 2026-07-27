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
class TranslationsKo extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('ko').format(n)} sats';

	/// 스트림 시청자 수
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '시청자 1명',
		other: '{n:decimalPattern} 시청자',
	);

	@override late final _Translations$stream$ko stream = _Translations$stream$ko._(_root);
	@override late final _Translations$goal$ko goal = _Translations$goal$ko._(_root);
	@override late final _Translations$button$ko button = _Translations$button$ko._(_root);
	@override late final _Translations$embed$ko embed = _Translations$embed$ko._(_root);

	/// 실시간/종료/예정 등 스트림 유형별로 스트림 목록의 제목을 표시합니다.
	@override late final _Translations$stream_list$ko stream_list = _Translations$stream_list$ko._(_root);

	@override late final _Translations$zap$ko zap = _Translations$zap$ko._(_root);
	@override late final _Translations$profile$ko profile = _Translations$profile$ko._(_root);
	@override late final _Translations$settings$ko settings = _Translations$settings$ko._(_root);
	@override late final _Translations$login$ko login = _Translations$login$ko._(_root);
	@override late final _Translations$live$ko live = _Translations$live$ko._(_root);
}

// Path: stream
class _Translations$stream$ko extends Translations$stream$en {
	_Translations$stream$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$ko status = _Translations$stream$status$ko._(_root);
	@override String started({required Object timestamp}) => '시작 ${timestamp}';
	@override String notification({required Object name}) => '${name} 라이브가 시작되었습니다!';
	@override late final _Translations$stream$chat$ko chat = _Translations$stream$chat$ko._(_root);
}

// Path: goal
class _Translations$goal$ko extends Translations$goal$en {
	_Translations$goal$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => '목표: ${amount}';
	@override String remaining({required Object amount}) => '남음: ${amount}';
	@override String get complete => '완료';
}

// Path: button
class _Translations$button$ko extends Translations$button$en {
	_Translations$button$ko._(TranslationsKo root) : this._root = root, super.internal(root);

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
	@override String get connect => '연결';
	@override String get settings => '설정';
}

// Path: embed
class _Translations$embed$ko extends Translations$embed$en {
	_Translations$embed$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => '작성자: ${name}';
	@override String note_by({required Object name}) => '노트 작성됨: ${name}';
	@override String live_stream_by({required Object name}) => '라이브 스트리밍: ${name}';
}

// Path: stream_list
class _Translations$stream_list$ko extends Translations$stream_list$en {
	_Translations$stream_list$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get following => '팔로잉';
	@override String get live => '라이브';
	@override String get planned => '계획된';
	@override String get ended => '종료됨';
}

// Path: zap
class _Translations$zap$ko extends Translations$zap$en {
	_Translations$zap$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => '사용자 지정 금액';
	@override String get confirm => '확인';
	@override String get comment => '댓글';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => '지갑에서 열기';
	@override String get button_connect_wallet => '지갑 연결';
	@override String get copy => '클립보드에 복사';
	@override late final _Translations$zap$error$ko error = _Translations$zap$error$ko._(_root);
}

// Path: profile
class _Translations$profile$ko extends Translations$profile$en {
	_Translations$profile$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get past_streams => '과거 스트림';
}

// Path: settings
class _Translations$settings$ko extends Translations$settings$en {
	_Translations$settings$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get button_profile => '프로필 수정';
	@override String get button_wallet => '지갑 설정';
	@override late final _Translations$settings$profile$ko profile = _Translations$settings$profile$ko._(_root);
	@override late final _Translations$settings$wallet$ko wallet = _Translations$settings$wallet$ko._(_root);
}

// Path: login
class _Translations$login$ko extends Translations$login$en {
	_Translations$login$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get username => '사용자 이름';
	@override String get amber => 'Amber로 로그인';
	@override String get key => '키로 로그인';
	@override String get create => '계정 만들기';
	@override late final _Translations$login$error$ko error = _Translations$login$error$ko._(_root);
}

// Path: live
class _Translations$live$ko extends Translations$live$en {
	_Translations$live$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get start => '라이브 시작하기';
	@override String get configure_stream => '스트림 구성';
	@override String get endpoint => '엔드포인트';
	@override String get accept_tos => 'TOS 수락';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => '제목';
	@override String get summary => '요약';
	@override String get image => '표지 이미지';
	@override String get tags => '태그';
	@override String get nsfw => 'NSFW 콘텐츠';
	@override String get nsfw_description => '이 스트림에 노출 또는 음란 콘텐츠가 포함되어 있는지 여기에서 확인하세요.';
	@override late final _Translations$live$error$ko error = _Translations$live$error$ko._(_root);
}

// Path: stream.status
class _Translations$stream$status$ko extends Translations$stream$status$en {
	_Translations$stream$status$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get live => '라이브';
	@override String get ended => '종료';
	@override String get planned => '계획된';
}

// Path: stream.chat
class _Translations$stream$chat$ko extends Translations$stream$chat$en {
	_Translations$stream$chat$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get disabled => '채팅 사용 안 함';
	@override String disabled_timeout({required Object time}) => '시간 초과가 만료되었습니다: ${time}';

	/// 시간 초과 이벤트를 표시하는 채팅 메시지
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' 시간 초과됨 '),
		user,
		const TextSpan(text: ' '),
		time,
	]);

	/// 채팅 하단의 스트림 종료 푸터
	@override String get ended => '스트림 종료';

	/// 채팅 메시지 스트림 끊김 표시
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' ZAPP '),
		amount,
		const TextSpan(text: ' SATS'),
	]);

	@override late final _Translations$stream$chat$write$ko write = _Translations$stream$chat$write$ko._(_root);
	@override late final _Translations$stream$chat$badge$ko badge = _Translations$stream$chat$badge$ko._(_root);
	@override late final _Translations$stream$chat$raid$ko raid = _Translations$stream$chat$raid$ko._(_root);
}

// Path: zap.error
class _Translations$zap$error$ko extends Translations$zap$error$en {
	_Translations$zap$error$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => '잘못된 사용자 지정 금액';
	@override String get no_wallet => '라이트닝 월렛이 설치되지 않았습니다.';
	@override String get no_lud16 => '번개 주소를 찾을 수 없습니다.';
}

// Path: settings.profile
class _Translations$settings$profile$ko extends Translations$settings$profile$en {
	_Translations$settings$profile$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get display_name => '표시 이름';
	@override String get about => '정보';
	@override String get nip05 => '노스트르 주소';
	@override String get lud16 => '라이트닝 주소';
	@override late final _Translations$settings$profile$error$ko error = _Translations$settings$profile$error$ko._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$ko extends Translations$settings$wallet$en {
	_Translations$settings$wallet$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => '지갑 연결(NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => '지갑 연결 해제';
	@override String get connect_1tap => '1-탭 연결';
	@override String get paste => 'URL 붙여넣기';
	@override String get balance => '잔액';
	@override String get name => '지갑';
	@override late final _Translations$settings$wallet$error$ko error = _Translations$settings$wallet$error$ko._(_root);
}

// Path: login.error
class _Translations$login$error$ko extends Translations$login$error$en {
	_Translations$login$error$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => '잘못된 키';
}

// Path: live.error
class _Translations$live$error$ko extends Translations$live$error$en {
	_Translations$live$error$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get failed => '스트림 실패';
	@override String get connection_error => '연결 오류';
	@override String get start_failed => '스트림 시작에 실패했습니다. 잔액을 확인해 주세요.';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$ko extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$ko._(TranslationsKo root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$ko extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations

	/// 배지를 받은 사용자 목록으로 이동하기
	@override String get awarded_to => '수상 대상';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$ko extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations

	/// 다른 스트림으로 채팅 레이드 메시지 보내기
	@override String to({required Object name}) => 'RAIDing ${name}';

	/// 다른 스트림의 채팅 레이드 메시지
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// 자동 레이드를 위한 카운트다운 타이머
	@override String countdown({required Object time}) => '${time}에서 레이드';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$ko extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get logged_out => '로그아웃 시 프로필 수정 불가';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$ko extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get logged_out => '로그아웃 시 지갑 연결 불가';
	@override String get nwc_auth_event_not_found => '지갑 인증 이벤트를 찾을 수 없습니다.';
}

/// The flat map containing all translations for locale <ko>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => '아바타 업로드',
			'most_zapped_streamers' => '가장 많이 재핑된 스트리머',
			'no_user_found' => '사용자를 찾을 수 없습니다.',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('ko').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '시청자 1명', other: '{n:decimalPattern} 시청자', ), 
			'stream.status.live' => '라이브',
			'stream.status.ended' => '종료',
			'stream.status.planned' => '계획된',
			'stream.started' => ({required Object timestamp}) => '시작 ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} 라이브가 시작되었습니다!',
			'stream.chat.disabled' => '채팅 사용 안 함',
			'stream.chat.disabled_timeout' => ({required Object time}) => '시간 초과가 만료되었습니다: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' 시간 초과됨 '), user, const TextSpan(text: ' '), time, ]), 
			'stream.chat.ended' => '스트림 종료',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' ZAPP '), amount, const TextSpan(text: ' SATS'), ]), 
			'stream.chat.write.label' => '메시지 작성',
			'stream.chat.write.no_signer' => 'npub 로그인으로 메시지를 작성할 수 없습니다.',
			'stream.chat.write.login' => '메시지를 보내려면 로그인하세요.',
			'stream.chat.badge.awarded_to' => '수상 대상',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDing ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => '${time}에서 레이드',
			'goal.title' => ({required Object amount}) => '목표: ${amount}',
			'goal.remaining' => ({required Object amount}) => '남음: ${amount}',
			'goal.complete' => '완료',
			'button.login' => '로그인',
			'button.logout' => '로그아웃',
			'button.edit_profile' => '프로필 수정',
			'button.follow' => '팔로우',
			'button.unfollow' => '언팔로우',
			'button.mute' => '뮤트',
			'button.unmute' => '뮤트 해제',
			'button.share' => '공유',
			'button.save' => '저장',
			'button.connect' => '연결',
			'button.settings' => '설정',
			'embed.article_by' => ({required Object name}) => '작성자: ${name}',
			'embed.note_by' => ({required Object name}) => '노트 작성됨: ${name}',
			'embed.live_stream_by' => ({required Object name}) => '라이브 스트리밍: ${name}',
			'stream_list.following' => '팔로잉',
			'stream_list.live' => '라이브',
			'stream_list.planned' => '계획된',
			'stream_list.ended' => '종료됨',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => '사용자 지정 금액',
			'zap.confirm' => '확인',
			'zap.comment' => '댓글',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => '지갑에서 열기',
			'zap.button_connect_wallet' => '지갑 연결',
			'zap.copy' => '클립보드에 복사',
			'zap.error.invalid_custom_amount' => '잘못된 사용자 지정 금액',
			'zap.error.no_wallet' => '라이트닝 월렛이 설치되지 않았습니다.',
			'zap.error.no_lud16' => '번개 주소를 찾을 수 없습니다.',
			'profile.past_streams' => '과거 스트림',
			'settings.button_profile' => '프로필 수정',
			'settings.button_wallet' => '지갑 설정',
			'settings.profile.display_name' => '표시 이름',
			'settings.profile.about' => '정보',
			'settings.profile.nip05' => '노스트르 주소',
			'settings.profile.lud16' => '라이트닝 주소',
			'settings.profile.error.logged_out' => '로그아웃 시 프로필 수정 불가',
			'settings.wallet.connect_wallet' => '지갑 연결(NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => '지갑 연결 해제',
			'settings.wallet.connect_1tap' => '1-탭 연결',
			'settings.wallet.paste' => 'URL 붙여넣기',
			'settings.wallet.balance' => '잔액',
			'settings.wallet.name' => '지갑',
			'settings.wallet.error.logged_out' => '로그아웃 시 지갑 연결 불가',
			'settings.wallet.error.nwc_auth_event_not_found' => '지갑 인증 이벤트를 찾을 수 없습니다.',
			'login.username' => '사용자 이름',
			'login.amber' => 'Amber로 로그인',
			'login.key' => '키로 로그인',
			'login.create' => '계정 만들기',
			'login.error.invalid_key' => '잘못된 키',
			'live.start' => '라이브 시작하기',
			'live.configure_stream' => '스트림 구성',
			'live.endpoint' => '엔드포인트',
			'live.accept_tos' => 'TOS 수락',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => '제목',
			'live.summary' => '요약',
			'live.image' => '표지 이미지',
			'live.tags' => '태그',
			'live.nsfw' => 'NSFW 콘텐츠',
			'live.nsfw_description' => '이 스트림에 노출 또는 음란 콘텐츠가 포함되어 있는지 여기에서 확인하세요.',
			'live.error.failed' => '스트림 실패',
			'live.error.connection_error' => '연결 오류',
			'live.error.start_failed' => '스트림 시작에 실패했습니다. 잔액을 확인해 주세요.',
			_ => null,
		};
	}
}
