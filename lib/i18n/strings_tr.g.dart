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
class TranslationsTr extends Translations with BaseTranslations<AppLocale, Translations> {
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

	@override late final _Translations$stream$tr stream = _Translations$stream$tr._(_root);
	@override late final _Translations$goal$tr goal = _Translations$goal$tr._(_root);
	@override late final _Translations$button$tr button = _Translations$button$tr._(_root);
	@override late final _Translations$embed$tr embed = _Translations$embed$tr._(_root);

	/// Akış türüne göre akış listelerindeki başlıklar canlı/bitmiş/planlanan vb.
	@override late final _Translations$stream_list$tr stream_list = _Translations$stream_list$tr._(_root);

	@override late final _Translations$zap$tr zap = _Translations$zap$tr._(_root);
	@override late final _Translations$profile$tr profile = _Translations$profile$tr._(_root);
	@override late final _Translations$settings$tr settings = _Translations$settings$tr._(_root);
	@override late final _Translations$login$tr login = _Translations$login$tr._(_root);
}

// Path: stream
class _Translations$stream$tr extends Translations$stream$en {
	_Translations$stream$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$tr status = _Translations$stream$status$tr._(_root);
	@override String started({required Object timestamp}) => 'Başlatıldı ${timestamp}';
	@override String notification({required Object name}) => '${name} yayına girdi!';
	@override late final _Translations$stream$chat$tr chat = _Translations$stream$chat$tr._(_root);
}

// Path: goal
class _Translations$goal$tr extends Translations$goal$en {
	_Translations$goal$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Hedef: ${amount}';
	@override String remaining({required Object amount}) => 'Kalan: ${amount}';
	@override String get complete => 'TAMAMLANDI';
}

// Path: button
class _Translations$button$tr extends Translations$button$en {
	_Translations$button$tr._(TranslationsTr root) : this._root = root, super.internal(root);

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
class _Translations$embed$tr extends Translations$embed$en {
	_Translations$embed$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Makale ${name}';
	@override String note_by({required Object name}) => 'Not: ${name}';
	@override String live_stream_by({required Object name}) => 'Canlı yayın: ${name}';
}

// Path: stream_list
class _Translations$stream_list$tr extends Translations$stream_list$en {
	_Translations$stream_list$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get following => 'Aşağıdaki';
	@override String get live => 'Canlı';
	@override String get planned => 'Planlanmış';
	@override String get ended => 'Bitti';
}

// Path: zap
class _Translations$zap$tr extends Translations$zap$en {
	_Translations$zap$tr._(TranslationsTr root) : this._root = root, super.internal(root);

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
	@override late final _Translations$zap$error$tr error = _Translations$zap$error$tr._(_root);
}

// Path: profile
class _Translations$profile$tr extends Translations$profile$en {
	_Translations$profile$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Geçmiş Akışlar';
}

// Path: settings
class _Translations$settings$tr extends Translations$settings$en {
	_Translations$settings$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Profil Düzenle';
	@override String get button_wallet => 'Cüzdan Ayarları';
	@override late final _Translations$settings$profile$tr profile = _Translations$settings$profile$tr._(_root);
	@override late final _Translations$settings$wallet$tr wallet = _Translations$settings$wallet$tr._(_root);
}

// Path: login
class _Translations$login$tr extends Translations$login$en {
	_Translations$login$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get username => 'Kullanıcı Adı';
	@override String get amber => 'Amber ile Giriş Yapın';
	@override String get key => 'Anahtar ile Giriş Yapın';
	@override String get create => 'Hesap Oluştur';
	@override late final _Translations$login$error$tr error = _Translations$login$error$tr._(_root);
}

// Path: stream.status
class _Translations$stream$status$tr extends Translations$stream$status$en {
	_Translations$stream$status$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get live => 'CANLI';
	@override String get ended => 'SONLANDI';
	@override String get planned => 'PLANLANMIŞ';
}

// Path: stream.chat
class _Translations$stream$chat$tr extends Translations$stream$chat$en {
	_Translations$stream$chat$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'SOHBET DEVRE DIŞI';
	@override String disabled_timeout({required Object time}) => 'Zaman aşımı sona eriyor: ${time}';

	/// Zaman aşımı olaylarını gösteren sohbet mesajı
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' zaman aşımına uğradı '),
		user,
		const TextSpan(text: ' '),
		time,
		const TextSpan(text: 'için'),
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

	@override late final _Translations$stream$chat$write$tr write = _Translations$stream$chat$write$tr._(_root);
	@override late final _Translations$stream$chat$badge$tr badge = _Translations$stream$chat$badge$tr._(_root);
	@override late final _Translations$stream$chat$raid$tr raid = _Translations$stream$chat$raid$tr._(_root);
}

// Path: zap.error
class _Translations$zap$error$tr extends Translations$zap$error$en {
	_Translations$zap$error$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Geçersiz özel tutar';
	@override String get no_wallet => 'Lightning cüzdan yüklü değil';
	@override String get no_lud16 => 'Yıldırım adresi bulunamadı';
}

// Path: settings.profile
class _Translations$settings$profile$tr extends Translations$settings$profile$en {
	_Translations$settings$profile$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Ekran Adı';
	@override String get about => 'Hakkında';
	@override String get nip05 => 'Nostr Adres';
	@override String get lud16 => 'Yıldırım Adres';
	@override late final _Translations$settings$profile$error$tr error = _Translations$settings$profile$error$tr._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$tr extends Translations$settings$wallet$en {
	_Translations$settings$wallet$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Cüzdan (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Cüzdan Bağlantısını Kes';
	@override String get connect_1tap => '1-Tap Bağlantı';
	@override String get paste => 'URL Yapıştır';
	@override late final _Translations$settings$wallet$error$tr error = _Translations$settings$wallet$error$tr._(_root);
}

// Path: login.error
class _Translations$login$error$tr extends Translations$login$error$en {
	_Translations$login$error$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Geçersiz anahtar';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$tr extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$tr._(TranslationsTr root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$tr extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations

	/// Rozet verilen kullanıcıların listesi üzerinde başlık
	@override String get awarded_to => 'Ödüllendirildi:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$tr extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations

	/// Başka bir akışa sohbet baskını mesajı
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Başka bir akıştan sohbet baskını mesajı
	@override String from({required Object name}) => '${name} ADRESINDEN RAID';

	/// Otomatik sürüş için geri sayım sayacı
	@override String countdown({required Object time}) => '${time}adresinde baskın';
}

// Path: settings.profile.error
class _Translations$settings$profile$error$tr extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Çıkış yapıldığında profil düzenlenemiyor';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$tr extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Oturumu kapattığımda cüzdana bağlanamıyorum';
	@override String get nwc_auth_event_not_found => 'Cüzdan yetkilendirme olayı bulunamadı';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Avatar Yükle',
			'most_zapped_streamers' => 'En Çok Zaplanan Flamalar',
			'no_user_found' => 'Kullanıcı bulunamadı',
			'anon' => 'Anon',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '1 izleyici', other: '${NumberFormat.decimalPattern('tr').format(n)} izleyiciler', ), 
			'stream.status.live' => 'CANLI',
			'stream.status.ended' => 'SONLANDI',
			'stream.status.planned' => 'PLANLANMIŞ',
			'stream.started' => ({required Object timestamp}) => 'Başlatıldı ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} yayına girdi!',
			'stream.chat.disabled' => 'SOHBET DEVRE DIŞI',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Zaman aşımı sona eriyor: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' zaman aşımına uğradı '), user, const TextSpan(text: ' '), time, const TextSpan(text: 'için'), ]), 
			'stream.chat.ended' => 'YAYIN SONLANDI',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Mesaj yaz',
			'stream.chat.write.no_signer' => 'Npub girişi ile mesaj yazılamıyor',
			'stream.chat.write.login' => 'Mesaj göndermek için lütfen giriş yapın',
			'stream.chat.badge.awarded_to' => 'Ödüllendirildi:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => '${name} ADRESINDEN RAID',
			'stream.chat.raid.countdown' => ({required Object time}) => '${time}adresinde baskın',
			'goal.title' => ({required Object amount}) => 'Hedef: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Kalan: ${amount}',
			'goal.complete' => 'TAMAMLANDI',
			'button.login' => 'Giriş',
			'button.logout' => 'Oturum Kapatma',
			'button.edit_profile' => 'Profil Düzenle',
			'button.follow' => 'Takip et',
			'button.unfollow' => 'Takibi bırak',
			'button.mute' => 'Sessiz',
			'button.unmute' => 'Sesi aç',
			'button.share' => 'Paylaş',
			'button.save' => 'Kaydet',
			'button.connect' => 'Bağlan',
			'button.settings' => 'Ayarlar',
			'embed.article_by' => ({required Object name}) => 'Makale ${name}',
			'embed.note_by' => ({required Object name}) => 'Not: ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Canlı yayın: ${name}',
			'stream_list.following' => 'Aşağıdaki',
			'stream_list.live' => 'Canlı',
			'stream_list.planned' => 'Planlanmış',
			'stream_list.ended' => 'Bitti',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Özel Tutar',
			'zap.confirm' => 'Onaylayın',
			'zap.comment' => 'Yorum',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Cüzdanda Aç',
			'zap.button_connect_wallet' => 'Cüzdan Bağlayın',
			'zap.copy' => 'Panoya kopyalandı',
			'zap.error.invalid_custom_amount' => 'Geçersiz özel tutar',
			'zap.error.no_wallet' => 'Lightning cüzdan yüklü değil',
			'zap.error.no_lud16' => 'Yıldırım adresi bulunamadı',
			'profile.past_streams' => 'Geçmiş Akışlar',
			'settings.button_profile' => 'Profil Düzenle',
			'settings.button_wallet' => 'Cüzdan Ayarları',
			'settings.profile.display_name' => 'Ekran Adı',
			'settings.profile.about' => 'Hakkında',
			'settings.profile.nip05' => 'Nostr Adres',
			'settings.profile.lud16' => 'Yıldırım Adres',
			'settings.profile.error.logged_out' => 'Çıkış yapıldığında profil düzenlenemiyor',
			'settings.wallet.connect_wallet' => 'Connect Cüzdan (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Cüzdan Bağlantısını Kes',
			'settings.wallet.connect_1tap' => '1-Tap Bağlantı',
			'settings.wallet.paste' => 'URL Yapıştır',
			'settings.wallet.error.logged_out' => 'Oturumu kapattığımda cüzdana bağlanamıyorum',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Cüzdan yetkilendirme olayı bulunamadı',
			'login.username' => 'Kullanıcı Adı',
			'login.amber' => 'Amber ile Giriş Yapın',
			'login.key' => 'Anahtar ile Giriş Yapın',
			'login.create' => 'Hesap Oluştur',
			'login.error.invalid_key' => 'Geçersiz anahtar',
			_ => null,
		};
	}
}
