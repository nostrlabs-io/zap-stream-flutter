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
class TranslationsTr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations

	/// Kullanıcının yüklemeye başlamak için avatar yer tutucusuna basmasını isteyen metin
	@override String get upload_avatar => 'Avatar Yükle';

	/// Zaps tarafından listelenen üst flamalar üzerinde ilerliyor
	@override String get most_zapped_streamers => 'En Çok Zaplanan Flamalar';

	/// Arama yaparken kullanıcı bulunamadı
	@override String get no_user_found => 'Kullanıcı bulunamadı';

	/// Anonim bir kullanıcı
	@override String get anon => 'Anon';

	/// Akışı izleyenlerin sayısı
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '1 izleyici',
		other: '${NumberFormat.decimalPattern('tr').format(n)} izleyiciler',
	);

	@override late final _TranslationsStreamTr stream = _TranslationsStreamTr._(_root);
	@override late final _TranslationsGoalTr goal = _TranslationsGoalTr._(_root);
	@override late final _TranslationsButtonTr button = _TranslationsButtonTr._(_root);
	@override late final _TranslationsEmbedTr embed = _TranslationsEmbedTr._(_root);

	/// Akış türüne göre akış listelerindeki başlıklar canlı/bitmiş/planlanan vb.
	@override late final _TranslationsStreamListTr stream_list = _TranslationsStreamListTr._(_root);

	@override late final _TranslationsZapTr zap = _TranslationsZapTr._(_root);
	@override late final _TranslationsProfileTr profile = _TranslationsProfileTr._(_root);
	@override late final _TranslationsSettingsTr settings = _TranslationsSettingsTr._(_root);
	@override late final _TranslationsLoginTr login = _TranslationsLoginTr._(_root);
}

// Path: stream
class _TranslationsStreamTr extends TranslationsStreamEn {
	_TranslationsStreamTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusTr status = _TranslationsStreamStatusTr._(_root);
	@override String started({required Object timestamp}) => 'Başlatıldı ${timestamp}';
	@override late final _TranslationsStreamChatTr chat = _TranslationsStreamChatTr._(_root);
}

// Path: goal
class _TranslationsGoalTr extends TranslationsGoalEn {
	_TranslationsGoalTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Hedef: ${amount}';
	@override String remaining({required Object amount}) => 'Kalan: ${amount}';
	@override String get complete => 'TAMAMLANDI';
}

// Path: button
class _TranslationsButtonTr extends TranslationsButtonEn {
	_TranslationsButtonTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations

	/// Oturum açma düğmesi için düğme metni
	@override String get login => 'Giriş';

	@override String get logout => 'Oturum Kapatma';
	@override String get edit_profile => 'Profil Düzenle';

	/// Takip et düğmesi için düğme metni
	@override String get follow => 'Takip et';

	/// Takibi bırak düğmesi için düğme metni
	@override String get unfollow => 'Takibi bırak';

	@override String get mute => 'Sessiz';
	@override String get unmute => 'Sesi aç';
	@override String get share => 'Paylaş';
	@override String get save => 'Kaydet';
	@override String get connect => 'Bağlan';
	@override String get settings => 'Ayarlar';
}

// Path: embed
class _TranslationsEmbedTr extends TranslationsEmbedEn {
	_TranslationsEmbedTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Makale ${name}';
	@override String note_by({required Object name}) => 'Not: ${name}';
	@override String live_stream_by({required Object name}) => 'Canlı yayın: ${name}';
}

// Path: stream_list
class _TranslationsStreamListTr extends TranslationsStreamListEn {
	_TranslationsStreamListTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get following => 'Aşağıdaki';
	@override String get live => 'Canlı';
	@override String get planned => 'Planlanmış';
	@override String get ended => 'Bitti';
}

// Path: zap
class _TranslationsZapTr extends TranslationsZapEn {
	_TranslationsZapTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Özel Tutar';
	@override String get confirm => 'Onaylayın';
	@override String get comment => 'Yorum';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Cüzdanda Aç';
	@override String get button_connect_wallet => 'Cüzdan Bağlayın';
	@override String get copy => 'Panoya kopyalandı';
	@override late final _TranslationsZapErrorTr error = _TranslationsZapErrorTr._(_root);
}

// Path: profile
class _TranslationsProfileTr extends TranslationsProfileEn {
	_TranslationsProfileTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Geçmiş Akışlar';
}

// Path: settings
class _TranslationsSettingsTr extends TranslationsSettingsEn {
	_TranslationsSettingsTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Profil Düzenle';
	@override String get button_wallet => 'Cüzdan Ayarları';
	@override late final _TranslationsSettingsProfileTr profile = _TranslationsSettingsProfileTr._(_root);
	@override late final _TranslationsSettingsWalletTr wallet = _TranslationsSettingsWalletTr._(_root);
}

// Path: login
class _TranslationsLoginTr extends TranslationsLoginEn {
	_TranslationsLoginTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get username => 'Kullanıcı Adı';
	@override String get amber => 'Amber ile Giriş Yapın';
	@override String get key => 'Anahtar ile Giriş Yapın';
	@override String get create => 'Hesap Oluştur';
	@override late final _TranslationsLoginErrorTr error = _TranslationsLoginErrorTr._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusTr extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get live => 'CANLI';
	@override String get ended => 'SONLANDI';
	@override String get planned => 'PLANLANMIŞ';
}

// Path: stream.chat
class _TranslationsStreamChatTr extends TranslationsStreamChatEn {
	_TranslationsStreamChatTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'SOHBET DEVRE DIŞI';
	@override String disabled_timeout({required Object time}) => 'Zaman aşımı sona eriyor: ${time}';

	/// Zaman aşımı olaylarını gösteren sohbet mesajı
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' zaman aşımına uğradı '),
		user,
		const TextSpan(text: ' için '),
		time,
	]);

	/// Sohbetin alt kısmında akış sona erdi altbilgisi
	@override String get ended => 'YAYIN SONLANDI';

	/// Akış zaplarını gösteren sohbet mesajı
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _TranslationsStreamChatWriteTr write = _TranslationsStreamChatWriteTr._(_root);
	@override late final _TranslationsStreamChatBadgeTr badge = _TranslationsStreamChatBadgeTr._(_root);
	@override late final _TranslationsStreamChatRaidTr raid = _TranslationsStreamChatRaidTr._(_root);
}

// Path: zap.error
class _TranslationsZapErrorTr extends TranslationsZapErrorEn {
	_TranslationsZapErrorTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Geçersiz özel tutar';
	@override String get no_wallet => 'Lightning cüzdan yüklü değil';
	@override String get no_lud16 => 'Yıldırım adresi bulunamadı';
}

// Path: settings.profile
class _TranslationsSettingsProfileTr extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfileTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Ekran Adı';
	@override String get about => 'Hakkında';
	@override String get nip05 => 'Nostr Adres';
	@override String get lud16 => 'Yıldırım Adres';
	@override late final _TranslationsSettingsProfileErrorTr error = _TranslationsSettingsProfileErrorTr._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletTr extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Cüzdan (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Cüzdan Bağlantısını Kes';
	@override String get connect_1tap => '1-Tap Bağlantı';
	@override String get paste => 'URL Yapıştır';
	@override late final _TranslationsSettingsWalletErrorTr error = _TranslationsSettingsWalletErrorTr._(_root);
}

// Path: login.error
class _TranslationsLoginErrorTr extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Geçersiz anahtar';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteTr extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations

	/// Sohbet mesajı giriş kutusundaki etiket
	@override String get label => 'Mesaj yaz';

	/// Kullanıcı yalnızca pubkey ile oturum açtığında gösterilen sohbet giriş mesajı
	@override String get no_signer => 'Npub girişi ile mesaj yazılamıyor';

	/// Kullanıcı oturumu kapatıldığında gösterilen sohbet giriş mesajı
	@override String get login => 'Mesaj göndermek için lütfen giriş yapın';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeTr extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations

	/// Rozet verilen kullanıcıların listesi üzerinde başlık
	@override String get awarded_to => 'Ödüllendirildi:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidTr extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations

	/// Başka bir akışa sohbet baskını mesajı
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Başka bir akıştan sohbet baskını mesajı
	@override String from({required Object name}) => '${name}ADRESINDEN RAID';

	/// Otomatik sürüş için geri sayım sayacı
	@override String countdown({required Object time}) => '${time}adresinde baskın';
}

// Path: settings.profile.error
class _TranslationsSettingsProfileErrorTr extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Çıkış yapıldığında profil düzenlenemiyor';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorTr extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Oturumu kapattığımda cüzdana bağlanamıyorum';
	@override String get nwc_auth_event_not_found => 'Cüzdan yetkilendirme olayı bulunamadı';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Avatar Yükle';
			case 'most_zapped_streamers': return 'En Çok Zaplanan Flamalar';
			case 'no_user_found': return 'Kullanıcı bulunamadı';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
				one: '1 izleyici',
				other: '${NumberFormat.decimalPattern('tr').format(n)} izleyiciler',
			);
			case 'stream.status.live': return 'CANLI';
			case 'stream.status.ended': return 'SONLANDI';
			case 'stream.status.planned': return 'PLANLANMIŞ';
			case 'stream.started': return ({required Object timestamp}) => 'Başlatıldı ${timestamp}';
			case 'stream.chat.disabled': return 'SOHBET DEVRE DIŞI';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Zaman aşımı sona eriyor: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' zaman aşımına uğradı '),
				user,
				const TextSpan(text: ' için '),
				time,
			]);
			case 'stream.chat.ended': return 'YAYIN SONLANDI';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Mesaj yaz';
			case 'stream.chat.write.no_signer': return 'Npub girişi ile mesaj yazılamıyor';
			case 'stream.chat.write.login': return 'Mesaj göndermek için lütfen giriş yapın';
			case 'stream.chat.badge.awarded_to': return 'Ödüllendirildi:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => '${name}ADRESINDEN RAID';
			case 'stream.chat.raid.countdown': return ({required Object time}) => '${time}adresinde baskın';
			case 'goal.title': return ({required Object amount}) => 'Hedef: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Kalan: ${amount}';
			case 'goal.complete': return 'TAMAMLANDI';
			case 'button.login': return 'Giriş';
			case 'button.logout': return 'Oturum Kapatma';
			case 'button.edit_profile': return 'Profil Düzenle';
			case 'button.follow': return 'Takip et';
			case 'button.unfollow': return 'Takibi bırak';
			case 'button.mute': return 'Sessiz';
			case 'button.unmute': return 'Sesi aç';
			case 'button.share': return 'Paylaş';
			case 'button.save': return 'Kaydet';
			case 'button.connect': return 'Bağlan';
			case 'button.settings': return 'Ayarlar';
			case 'embed.article_by': return ({required Object name}) => 'Makale ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Not: ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Canlı yayın: ${name}';
			case 'stream_list.following': return 'Aşağıdaki';
			case 'stream_list.live': return 'Canlı';
			case 'stream_list.planned': return 'Planlanmış';
			case 'stream_list.ended': return 'Bitti';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Özel Tutar';
			case 'zap.confirm': return 'Onaylayın';
			case 'zap.comment': return 'Yorum';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Cüzdanda Aç';
			case 'zap.button_connect_wallet': return 'Cüzdan Bağlayın';
			case 'zap.copy': return 'Panoya kopyalandı';
			case 'zap.error.invalid_custom_amount': return 'Geçersiz özel tutar';
			case 'zap.error.no_wallet': return 'Lightning cüzdan yüklü değil';
			case 'zap.error.no_lud16': return 'Yıldırım adresi bulunamadı';
			case 'profile.past_streams': return 'Geçmiş Akışlar';
			case 'settings.button_profile': return 'Profil Düzenle';
			case 'settings.button_wallet': return 'Cüzdan Ayarları';
			case 'settings.profile.display_name': return 'Ekran Adı';
			case 'settings.profile.about': return 'Hakkında';
			case 'settings.profile.nip05': return 'Nostr Adres';
			case 'settings.profile.lud16': return 'Yıldırım Adres';
			case 'settings.profile.error.logged_out': return 'Çıkış yapıldığında profil düzenlenemiyor';
			case 'settings.wallet.connect_wallet': return 'Connect Cüzdan (NWC nostr+walletconnect://)';
			case 'settings.wallet.disconnect_wallet': return 'Cüzdan Bağlantısını Kes';
			case 'settings.wallet.connect_1tap': return '1-Tap Bağlantı';
			case 'settings.wallet.paste': return 'URL Yapıştır';
			case 'settings.wallet.error.logged_out': return 'Oturumu kapattığımda cüzdana bağlanamıyorum';
			case 'settings.wallet.error.nwc_auth_event_not_found': return 'Cüzdan yetkilendirme olayı bulunamadı';
			case 'login.username': return 'Kullanıcı Adı';
			case 'login.amber': return 'Amber ile Giriş Yapın';
			case 'login.key': return 'Anahtar ile Giriş Yapın';
			case 'login.create': return 'Hesap Oluştur';
			case 'login.error.invalid_key': return 'Geçersiz anahtar';
			default: return null;
		}
	}
}

