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
class TranslationsEl extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.el,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <el>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEl _root = this; // ignore: unused_field

	@override 
	TranslationsEl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEl(meta: meta ?? this.$meta);

	// Translations

	/// Κείμενο που προτρέπει τον χρήστη να πατήσει το εικονίδιο avatar για να ξεκινήσει το ανέβασμα
	@override String get upload_avatar => 'Ανέβασμα Avatar';

	/// Επικεφαλής πάνω από τα αναφερόμενα κορυφαία streamers από zaps
	@override String get most_zapped_streamers => 'Τα περισσότερα Zapped Streamers';

	/// Δεν βρέθηκε χρήστης κατά την αναζήτηση
	@override String get no_user_found => 'Δεν βρέθηκε χρήστης';

	/// Ένας ανώνυμος χρήστης
	@override String get anon => 'Anon';

	/// Αριθμός θεατών της ροής
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('el'))(n,
		one: '1 θεατής',
		other: '${NumberFormat.decimalPattern('el').format(n)} θεατές',
	);

	@override late final _TranslationsStreamEl stream = _TranslationsStreamEl._(_root);
	@override late final _TranslationsGoalEl goal = _TranslationsGoalEl._(_root);
	@override late final _TranslationsButtonEl button = _TranslationsButtonEl._(_root);
	@override late final _TranslationsEmbedEl embed = _TranslationsEmbedEl._(_root);

	/// Επικεφαλίδες στις λίστες ροής ανά τύπο ροής ζωντανή/τελειωμένη/προγραμματισμένη κ.λπ.
	@override late final _TranslationsStreamListEl stream_list = _TranslationsStreamListEl._(_root);

	@override late final _TranslationsZapEl zap = _TranslationsZapEl._(_root);
	@override late final _TranslationsProfileEl profile = _TranslationsProfileEl._(_root);
	@override late final _TranslationsSettingsEl settings = _TranslationsSettingsEl._(_root);
	@override late final _TranslationsLoginEl login = _TranslationsLoginEl._(_root);
}

// Path: stream
class _TranslationsStreamEl extends TranslationsStreamEn {
	_TranslationsStreamEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusEl status = _TranslationsStreamStatusEl._(_root);
	@override String started({required Object timestamp}) => 'Ξεκίνησε ${timestamp}';
	@override String notification({required Object name}) => '${name} βγήκε ζωντανά!';
	@override late final _TranslationsStreamChatEl chat = _TranslationsStreamChatEl._(_root);
}

// Path: goal
class _TranslationsGoalEl extends TranslationsGoalEn {
	_TranslationsGoalEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Στόχος: ${amount}';
	@override String remaining({required Object amount}) => 'Υπόλοιπο: ${amount}';
	@override String get complete => 'ΠΛΗΡΗΣ';
}

// Path: button
class _TranslationsButtonEl extends TranslationsButtonEn {
	_TranslationsButtonEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations

	/// Κείμενο κουμπιού για το κουμπί σύνδεσης
	@override String get login => 'Σύνδεση';

	@override String get logout => 'Αποσύνδεση';
	@override String get edit_profile => 'Επεξεργασία προφίλ';

	/// Κείμενο κουμπιού για το κουμπί follow
	@override String get follow => 'Ακολουθήστε το';

	/// Κείμενο κουμπιού για το κουμπί unfollow
	@override String get unfollow => 'Ακολουθήστε το';

	@override String get mute => 'Σίγαση';
	@override String get unmute => 'Αποσυνδέστε τη φωνή σας από το';
	@override String get share => 'Μοιραστείτε το';
	@override String get save => 'Αποθήκευση';
	@override String get connect => 'Συνδέστε το';
	@override String get settings => 'Ρυθμίσεις';
}

// Path: embed
class _TranslationsEmbedEl extends TranslationsEmbedEn {
	_TranslationsEmbedEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Άρθρο από ${name}';
	@override String note_by({required Object name}) => 'Σημείωση του ${name}';
	@override String live_stream_by({required Object name}) => 'Ζωντανή μετάδοση από το ${name}';
}

// Path: stream_list
class _TranslationsStreamListEl extends TranslationsStreamListEn {
	_TranslationsStreamListEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get following => 'Ακολουθώντας το';
	@override String get live => 'Ζωντανό';
	@override String get planned => 'Προγραμματισμένο';
	@override String get ended => 'Τελείωσε';
}

// Path: zap
class _TranslationsZapEl extends TranslationsZapEn {
	_TranslationsZapEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String title({required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Προσαρμοσμένο ποσό';
	@override String get confirm => 'Επιβεβαίωση';
	@override String get comment => 'Σχόλιο';
	@override String button_zap_ready({required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Άνοιγμα στο πορτοφόλι';
	@override String get button_connect_wallet => 'Connect Wallet';
	@override String get copy => 'Αντιγραφή στο πρόχειρο';
	@override late final _TranslationsZapErrorEl error = _TranslationsZapErrorEl._(_root);
}

// Path: profile
class _TranslationsProfileEl extends TranslationsProfileEn {
	_TranslationsProfileEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Προηγούμενα ρεύματα';
}

// Path: settings
class _TranslationsSettingsEl extends TranslationsSettingsEn {
	_TranslationsSettingsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Επεξεργασία προφίλ';
	@override String get button_wallet => 'Ρυθμίσεις πορτοφολιού';
	@override late final _TranslationsSettingsProfileEl profile = _TranslationsSettingsProfileEl._(_root);
	@override late final _TranslationsSettingsWalletEl wallet = _TranslationsSettingsWalletEl._(_root);
}

// Path: login
class _TranslationsLoginEl extends TranslationsLoginEn {
	_TranslationsLoginEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get username => 'Όνομα χρήστη';
	@override String get amber => 'Σύνδεση με Amber';
	@override String get key => 'Σύνδεση με κλειδί';
	@override String get create => 'Δημιουργία λογαριασμού';
	@override late final _TranslationsLoginErrorEl error = _TranslationsLoginErrorEl._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusEl extends TranslationsStreamStatusEn {
	_TranslationsStreamStatusEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'ENDED';
	@override String get planned => 'ΣΧΕΔΙΑΣΜΟΣ';
}

// Path: stream.chat
class _TranslationsStreamChatEl extends TranslationsStreamChatEn {
	_TranslationsStreamChatEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'ΑΠΕΝΕΡΓΟΠΟΙΗΜΈΝΗ ΣΥΝΟΜΙΛΊΑ';
	@override String disabled_timeout({required Object time}) => 'Το χρονικό όριο λήγει: ${time}';

	/// Μήνυμα συνομιλίας που εμφανίζει συμβάντα timeout
	@override TextSpan timeout({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' χρονομετρημένη λήξη '),
		user,
		const TextSpan(text: ' για '),
		time,
	]);

	/// Η ροή τελείωσε το υποσέλιδο στο κάτω μέρος της συνομιλίας
	@override String get ended => 'STREAM ΤΕΛΕΙΩΣΕ';

	/// Μήνυμα συνομιλίας που δείχνει ροή ροής zaps
	@override TextSpan zap({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	]);

	@override late final _TranslationsStreamChatWriteEl write = _TranslationsStreamChatWriteEl._(_root);
	@override late final _TranslationsStreamChatBadgeEl badge = _TranslationsStreamChatBadgeEl._(_root);
	@override late final _TranslationsStreamChatRaidEl raid = _TranslationsStreamChatRaidEl._(_root);
}

// Path: zap.error
class _TranslationsZapErrorEl extends TranslationsZapErrorEn {
	_TranslationsZapErrorEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Μη έγκυρο προσαρμοσμένο ποσό';
	@override String get no_wallet => 'Δεν έχει εγκατασταθεί πορτοφόλι αστραπής';
	@override String get no_lud16 => 'Δεν βρέθηκε διεύθυνση κεραυνού';
}

// Path: settings.profile
class _TranslationsSettingsProfileEl extends TranslationsSettingsProfileEn {
	_TranslationsSettingsProfileEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Όνομα οθόνης';
	@override String get about => 'Σχετικά με το';
	@override String get nip05 => 'Διεύθυνση Nostr';
	@override String get lud16 => 'Διεύθυνση Lightning';
	@override late final _TranslationsSettingsProfileErrorEl error = _TranslationsSettingsProfileErrorEl._(_root);
}

// Path: settings.wallet
class _TranslationsSettingsWalletEl extends TranslationsSettingsWalletEn {
	_TranslationsSettingsWalletEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Αποσύνδεση πορτοφολιού';
	@override String get connect_1tap => 'Σύνδεση 1 βρύσης';
	@override String get paste => 'Επικόλληση URL';
	@override late final _TranslationsSettingsWalletErrorEl error = _TranslationsSettingsWalletErrorEl._(_root);
}

// Path: login.error
class _TranslationsLoginErrorEl extends TranslationsLoginErrorEn {
	_TranslationsLoginErrorEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Μη έγκυρο κλειδί';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteEl extends TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations

	/// Ετικέτα στο πλαίσιο εισαγωγής μηνύματος συνομιλίας
	@override String get label => 'Γράψτε μήνυμα';

	/// Μήνυμα εισόδου συνομιλίας που εμφανίζεται όταν ο χρήστης είναι συνδεδεμένος μόνο με το κλειδί pubkey
	@override String get no_signer => 'Δεν μπορείτε να γράψετε μηνύματα με σύνδεση στο npub';

	/// Μήνυμα εισόδου συνομιλίας που εμφανίζεται όταν ο χρήστης έχει αποσυνδεθεί
	@override String get login => 'Παρακαλώ συνδεθείτε για να στείλετε μηνύματα';
}

// Path: stream.chat.badge
class _TranslationsStreamChatBadgeEl extends TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations

	/// Επικεφαλίδα πάνω από τη λίστα των χρηστών στους οποίους έχει απονεμηθεί ένα σήμα
	@override String get awarded_to => 'Απονέμεται σε:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidEl extends TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations

	/// Μήνυμα επιδρομής συνομιλίας σε άλλη ροή
	@override String to({required Object name}) => 'RAIDING ${name}';

	/// Μήνυμα επιδρομής συνομιλίας από άλλη ροή
	@override String from({required Object name}) => 'RAID FROM ${name}';

	/// Χρονοδιακόπτης αντίστροφης μέτρησης για αυτόματη ιππασία
	@override String countdown({required Object time}) => 'Επιδρομές στο ${time}';
}

// Path: settings.profile.error
class _TranslationsSettingsProfileErrorEl extends TranslationsSettingsProfileErrorEn {
	_TranslationsSettingsProfileErrorEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Δεν μπορείτε να επεξεργαστείτε το προφίλ όταν έχετε αποσυνδεθεί';
}

// Path: settings.wallet.error
class _TranslationsSettingsWalletErrorEl extends TranslationsSettingsWalletErrorEn {
	_TranslationsSettingsWalletErrorEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Δεν μπορώ να συνδεθώ με πορτοφόλι όταν έχω αποσυνδεθεί';
	@override String get nwc_auth_event_not_found => 'Δεν βρέθηκε συμβάν εξουσιοδότησης πορτοφολιού';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'upload_avatar': return 'Ανέβασμα Avatar';
			case 'most_zapped_streamers': return 'Τα περισσότερα Zapped Streamers';
			case 'no_user_found': return 'Δεν βρέθηκε χρήστης';
			case 'anon': return 'Anon';
			case 'viewers': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('el'))(n,
				one: '1 θεατής',
				other: '${NumberFormat.decimalPattern('el').format(n)} θεατές',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'ENDED';
			case 'stream.status.planned': return 'ΣΧΕΔΙΑΣΜΟΣ';
			case 'stream.started': return ({required Object timestamp}) => 'Ξεκίνησε ${timestamp}';
			case 'stream.notification': return ({required Object name}) => '${name} βγήκε ζωντανά!';
			case 'stream.chat.disabled': return 'ΑΠΕΝΕΡΓΟΠΟΙΗΜΈΝΗ ΣΥΝΟΜΙΛΊΑ';
			case 'stream.chat.disabled_timeout': return ({required Object time}) => 'Το χρονικό όριο λήγει: ${time}';
			case 'stream.chat.timeout': return ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' χρονομετρημένη λήξη '),
				user,
				const TextSpan(text: ' για '),
				time,
			]);
			case 'stream.chat.ended': return 'STREAM ΤΕΛΕΙΩΣΕ';
			case 'stream.chat.zap': return ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			]);
			case 'stream.chat.write.label': return 'Γράψτε μήνυμα';
			case 'stream.chat.write.no_signer': return 'Δεν μπορείτε να γράψετε μηνύματα με σύνδεση στο npub';
			case 'stream.chat.write.login': return 'Παρακαλώ συνδεθείτε για να στείλετε μηνύματα';
			case 'stream.chat.badge.awarded_to': return 'Απονέμεται σε:';
			case 'stream.chat.raid.to': return ({required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({required Object time}) => 'Επιδρομές στο ${time}';
			case 'goal.title': return ({required Object amount}) => 'Στόχος: ${amount}';
			case 'goal.remaining': return ({required Object amount}) => 'Υπόλοιπο: ${amount}';
			case 'goal.complete': return 'ΠΛΗΡΗΣ';
			case 'button.login': return 'Σύνδεση';
			case 'button.logout': return 'Αποσύνδεση';
			case 'button.edit_profile': return 'Επεξεργασία προφίλ';
			case 'button.follow': return 'Ακολουθήστε το';
			case 'button.unfollow': return 'Ακολουθήστε το';
			case 'button.mute': return 'Σίγαση';
			case 'button.unmute': return 'Αποσυνδέστε τη φωνή σας από το';
			case 'button.share': return 'Μοιραστείτε το';
			case 'button.save': return 'Αποθήκευση';
			case 'button.connect': return 'Συνδέστε το';
			case 'button.settings': return 'Ρυθμίσεις';
			case 'embed.article_by': return ({required Object name}) => 'Άρθρο από ${name}';
			case 'embed.note_by': return ({required Object name}) => 'Σημείωση του ${name}';
			case 'embed.live_stream_by': return ({required Object name}) => 'Ζωντανή μετάδοση από το ${name}';
			case 'stream_list.following': return 'Ακολουθώντας το';
			case 'stream_list.live': return 'Ζωντανό';
			case 'stream_list.planned': return 'Προγραμματισμένο';
			case 'stream_list.ended': return 'Τελείωσε';
			case 'zap.title': return ({required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Προσαρμοσμένο ποσό';
			case 'zap.confirm': return 'Επιβεβαίωση';
			case 'zap.comment': return 'Σχόλιο';
			case 'zap.button_zap_ready': return ({required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Άνοιγμα στο πορτοφόλι';
			case 'zap.button_connect_wallet': return 'Connect Wallet';
			case 'zap.copy': return 'Αντιγραφή στο πρόχειρο';
			case 'zap.error.invalid_custom_amount': return 'Μη έγκυρο προσαρμοσμένο ποσό';
			case 'zap.error.no_wallet': return 'Δεν έχει εγκατασταθεί πορτοφόλι αστραπής';
			case 'zap.error.no_lud16': return 'Δεν βρέθηκε διεύθυνση κεραυνού';
			case 'profile.past_streams': return 'Προηγούμενα ρεύματα';
			case 'settings.button_profile': return 'Επεξεργασία προφίλ';
			case 'settings.button_wallet': return 'Ρυθμίσεις πορτοφολιού';
			case 'settings.profile.display_name': return 'Όνομα οθόνης';
			case 'settings.profile.about': return 'Σχετικά με το';
			case 'settings.profile.nip05': return 'Διεύθυνση Nostr';
			case 'settings.profile.lud16': return 'Διεύθυνση Lightning';
			case 'settings.profile.error.logged_out': return 'Δεν μπορείτε να επεξεργαστείτε το προφίλ όταν έχετε αποσυνδεθεί';
			case 'settings.wallet.connect_wallet': return 'Connect Wallet (NWC nostr+walletconnect://)';
			case 'settings.wallet.disconnect_wallet': return 'Αποσύνδεση πορτοφολιού';
			case 'settings.wallet.connect_1tap': return 'Σύνδεση 1 βρύσης';
			case 'settings.wallet.paste': return 'Επικόλληση URL';
			case 'settings.wallet.error.logged_out': return 'Δεν μπορώ να συνδεθώ με πορτοφόλι όταν έχω αποσυνδεθεί';
			case 'settings.wallet.error.nwc_auth_event_not_found': return 'Δεν βρέθηκε συμβάν εξουσιοδότησης πορτοφολιού';
			case 'login.username': return 'Όνομα χρήστη';
			case 'login.amber': return 'Σύνδεση με Amber';
			case 'login.key': return 'Σύνδεση με κλειδί';
			case 'login.create': return 'Δημιουργία λογαριασμού';
			case 'login.error.invalid_key': return 'Μη έγκυρο κλειδί';
			default: return null;
		}
	}
}

