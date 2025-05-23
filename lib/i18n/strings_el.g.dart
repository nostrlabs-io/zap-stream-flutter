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
class TranslationsEl implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.el,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <el>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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
		other: '${n} θεατές',
	);

	@override late final _TranslationsStreamEl stream = _TranslationsStreamEl._(_root);
	@override late final _TranslationsGoalEl goal = _TranslationsGoalEl._(_root);
	@override late final _TranslationsButtonEl button = _TranslationsButtonEl._(_root);
	@override late final _TranslationsEmbedEl embed = _TranslationsEmbedEl._(_root);

	/// Επικεφαλίδες στις λίστες ροής ανά τύπο ροής ζωντανή/τελειωμένη/προγραμματισμένη κ.λπ.
	@override late final _TranslationsStreamListEl stream_list = _TranslationsStreamListEl._(_root);

	@override late final _TranslationsZapEl zap = _TranslationsZapEl._(_root);
	@override late final _TranslationsProfileEl profile = _TranslationsProfileEl._(_root);
	@override late final _TranslationsLoginEl login = _TranslationsLoginEl._(_root);
}

// Path: stream
class _TranslationsStreamEl implements TranslationsStreamEn {
	_TranslationsStreamEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsStreamStatusEl status = _TranslationsStreamStatusEl._(_root);
	@override String started({ required Object timestamp}) => 'Ξεκίνησε ${timestamp}';
	@override late final _TranslationsStreamChatEl chat = _TranslationsStreamChatEl._(_root);
}

// Path: goal
class _TranslationsGoalEl implements TranslationsGoalEn {
	_TranslationsGoalEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String title({ required Object amount}) => 'Στόχος: ${amount}';
	@override String remaining({ required Object amount}) => 'Υπόλοιπο: ${amount}';
	@override String get complete => 'ΠΛΗΡΗΣ';
}

// Path: button
class _TranslationsButtonEl implements TranslationsButtonEn {
	_TranslationsButtonEl._(this._root);

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
}

// Path: embed
class _TranslationsEmbedEl implements TranslationsEmbedEn {
	_TranslationsEmbedEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String article_by({ required Object name}) => 'Άρθρο από ${name}';
	@override String note_by({ required Object name}) => 'Σημείωση του ${name}';
	@override String live_stream_by({ required Object name}) => 'Ζωντανή μετάδοση από το ${name}';
}

// Path: stream_list
class _TranslationsStreamListEl implements TranslationsStreamListEn {
	_TranslationsStreamListEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get following => 'Ακολουθώντας το';
	@override String get live => 'Ζωντανό';
	@override String get planned => 'Προγραμματισμένο';
	@override String get ended => 'Τελείωσε';
}

// Path: zap
class _TranslationsZapEl implements TranslationsZapEn {
	_TranslationsZapEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String title({ required Object name}) => 'Zap ${name}';
	@override String get custom_amount => 'Προσαρμοσμένο ποσό';
	@override String get confirm => 'Επιβεβαίωση';
	@override String get comment => 'Σχόλιο';
	@override String button_zap_ready({ required Object amount}) => 'Zap ${amount} sats';
	@override String get button_zap => 'Zap';
	@override String get button_open_wallet => 'Άνοιγμα στο πορτοφόλι';
	@override String get copy => 'Αντιγραφή στο πρόχειρο';
	@override late final _TranslationsZapErrorEl error = _TranslationsZapErrorEl._(_root);
}

// Path: profile
class _TranslationsProfileEl implements TranslationsProfileEn {
	_TranslationsProfileEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Προηγούμενα ρεύματα';
	@override late final _TranslationsProfileEditEl edit = _TranslationsProfileEditEl._(_root);
}

// Path: login
class _TranslationsLoginEl implements TranslationsLoginEn {
	_TranslationsLoginEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get username => 'Όνομα χρήστη';
	@override String get amber => 'Σύνδεση με Amber';
	@override String get key => 'Σύνδεση με κλειδί';
	@override String get create => 'Δημιουργία λογαριασμού';
	@override late final _TranslationsLoginErrorEl error = _TranslationsLoginErrorEl._(_root);
}

// Path: stream.status
class _TranslationsStreamStatusEl implements TranslationsStreamStatusEn {
	_TranslationsStreamStatusEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'ENDED';
	@override String get planned => 'ΣΧΕΔΙΑΣΜΟΣ';
}

// Path: stream.chat
class _TranslationsStreamChatEl implements TranslationsStreamChatEn {
	_TranslationsStreamChatEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get disabled => 'ΑΠΕΝΕΡΓΟΠΟΙΗΜΈΝΗ ΣΥΝΟΜΙΛΊΑ';
	@override String disabled_timeout({ required Object time}) => 'Το χρονικό όριο λήγει: ${time}';

	/// Μήνυμα συνομιλίας που εμφανίζει συμβάντα timeout
	@override TextSpan timeout({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		mod,
		const TextSpan(text: ' χρονομετρημένη λήξη '),
		user,
		const TextSpan(text: ' για '),
		time,
	], style: style, recognizer: recognizer);

	/// Η ροή τελείωσε το υποσέλιδο στο κάτω μέρος της συνομιλίας
	@override String get ended => 'STREAM ΤΕΛΕΙΩΣΕ';

	/// Μήνυμα συνομιλίας που δείχνει ροή ροής zaps
	@override TextSpan zap({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
		user,
		const TextSpan(text: ' zapped '),
		amount,
		const TextSpan(text: ' sats'),
	], style: style, recognizer: recognizer);

	@override late final _TranslationsStreamChatWriteEl write = _TranslationsStreamChatWriteEl._(_root);
	@override late final _TranslationsStreamChatBadgeEl badge = _TranslationsStreamChatBadgeEl._(_root);
	@override late final _TranslationsStreamChatRaidEl raid = _TranslationsStreamChatRaidEl._(_root);
}

// Path: zap.error
class _TranslationsZapErrorEl implements TranslationsZapErrorEn {
	_TranslationsZapErrorEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Μη έγκυρο προσαρμοσμένο ποσό';
	@override String get no_wallet => 'Δεν έχει εγκατασταθεί πορτοφόλι αστραπής';
	@override String get no_lud16 => 'Δεν βρέθηκε διεύθυνση κεραυνού';
}

// Path: profile.edit
class _TranslationsProfileEditEl implements TranslationsProfileEditEn {
	_TranslationsProfileEditEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Όνομα οθόνης';
	@override String get about => 'Σχετικά με το';
	@override String get nip05 => 'Διεύθυνση Nostr';
	@override String get lud16 => 'Διεύθυνση Lightning';
	@override late final _TranslationsProfileEditErrorEl error = _TranslationsProfileEditErrorEl._(_root);
}

// Path: login.error
class _TranslationsLoginErrorEl implements TranslationsLoginErrorEn {
	_TranslationsLoginErrorEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Μη έγκυρο κλειδί';
}

// Path: stream.chat.write
class _TranslationsStreamChatWriteEl implements TranslationsStreamChatWriteEn {
	_TranslationsStreamChatWriteEl._(this._root);

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
class _TranslationsStreamChatBadgeEl implements TranslationsStreamChatBadgeEn {
	_TranslationsStreamChatBadgeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations

	/// Επικεφαλίδα πάνω από τη λίστα των χρηστών στους οποίους έχει απονεμηθεί ένα σήμα
	@override String get awarded_to => 'Απονέμεται σε:';
}

// Path: stream.chat.raid
class _TranslationsStreamChatRaidEl implements TranslationsStreamChatRaidEn {
	_TranslationsStreamChatRaidEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations

	/// Μήνυμα επιδρομής συνομιλίας σε άλλη ροή
	@override String to({ required Object name}) => 'RAIDING ${name}';

	/// Μήνυμα επιδρομής συνομιλίας από άλλη ροή
	@override String from({ required Object name}) => 'RAID FROM ${name}';

	/// Χρονοδιακόπτης αντίστροφης μέτρησης για αυτόματη ιππασία
	@override String countdown({ required Object time}) => 'Επιδρομές στο ${time}';
}

// Path: profile.edit.error
class _TranslationsProfileEditErrorEl implements TranslationsProfileEditErrorEn {
	_TranslationsProfileEditErrorEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Δεν μπορείτε να επεξεργαστείτε το προφίλ όταν έχετε αποσυνδεθεί';
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
				other: '${n} θεατές',
			);
			case 'stream.status.live': return 'LIVE';
			case 'stream.status.ended': return 'ENDED';
			case 'stream.status.planned': return 'ΣΧΕΔΙΑΣΜΟΣ';
			case 'stream.started': return ({ required Object timestamp}) => 'Ξεκίνησε ${timestamp}';
			case 'stream.chat.disabled': return 'ΑΠΕΝΕΡΓΟΠΟΙΗΜΈΝΗ ΣΥΝΟΜΙΛΊΑ';
			case 'stream.chat.disabled_timeout': return ({ required Object time}) => 'Το χρονικό όριο λήγει: ${time}';
			case 'stream.chat.timeout': return ({ required InlineSpan mod,  required InlineSpan user,  required InlineSpan time,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				mod,
				const TextSpan(text: ' χρονομετρημένη λήξη '),
				user,
				const TextSpan(text: ' για '),
				time,
			], style: style, recognizer: recognizer);
			case 'stream.chat.ended': return 'STREAM ΤΕΛΕΙΩΣΕ';
			case 'stream.chat.zap': return ({ required InlineSpan user,  required InlineSpan amount,  TextStyle? style,  GestureRecognizer? recognizer}) => TextSpan(children: [
				user,
				const TextSpan(text: ' zapped '),
				amount,
				const TextSpan(text: ' sats'),
			], style: style, recognizer: recognizer);
			case 'stream.chat.write.label': return 'Γράψτε μήνυμα';
			case 'stream.chat.write.no_signer': return 'Δεν μπορείτε να γράψετε μηνύματα με σύνδεση στο npub';
			case 'stream.chat.write.login': return 'Παρακαλώ συνδεθείτε για να στείλετε μηνύματα';
			case 'stream.chat.badge.awarded_to': return 'Απονέμεται σε:';
			case 'stream.chat.raid.to': return ({ required Object name}) => 'RAIDING ${name}';
			case 'stream.chat.raid.from': return ({ required Object name}) => 'RAID FROM ${name}';
			case 'stream.chat.raid.countdown': return ({ required Object time}) => 'Επιδρομές στο ${time}';
			case 'goal.title': return ({ required Object amount}) => 'Στόχος: ${amount}';
			case 'goal.remaining': return ({ required Object amount}) => 'Υπόλοιπο: ${amount}';
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
			case 'embed.article_by': return ({ required Object name}) => 'Άρθρο από ${name}';
			case 'embed.note_by': return ({ required Object name}) => 'Σημείωση του ${name}';
			case 'embed.live_stream_by': return ({ required Object name}) => 'Ζωντανή μετάδοση από το ${name}';
			case 'stream_list.following': return 'Ακολουθώντας το';
			case 'stream_list.live': return 'Ζωντανό';
			case 'stream_list.planned': return 'Προγραμματισμένο';
			case 'stream_list.ended': return 'Τελείωσε';
			case 'zap.title': return ({ required Object name}) => 'Zap ${name}';
			case 'zap.custom_amount': return 'Προσαρμοσμένο ποσό';
			case 'zap.confirm': return 'Επιβεβαίωση';
			case 'zap.comment': return 'Σχόλιο';
			case 'zap.button_zap_ready': return ({ required Object amount}) => 'Zap ${amount} sats';
			case 'zap.button_zap': return 'Zap';
			case 'zap.button_open_wallet': return 'Άνοιγμα στο πορτοφόλι';
			case 'zap.copy': return 'Αντιγραφή στο πρόχειρο';
			case 'zap.error.invalid_custom_amount': return 'Μη έγκυρο προσαρμοσμένο ποσό';
			case 'zap.error.no_wallet': return 'Δεν έχει εγκατασταθεί πορτοφόλι αστραπής';
			case 'zap.error.no_lud16': return 'Δεν βρέθηκε διεύθυνση κεραυνού';
			case 'profile.past_streams': return 'Προηγούμενα ρεύματα';
			case 'profile.edit.display_name': return 'Όνομα οθόνης';
			case 'profile.edit.about': return 'Σχετικά με το';
			case 'profile.edit.nip05': return 'Διεύθυνση Nostr';
			case 'profile.edit.lud16': return 'Διεύθυνση Lightning';
			case 'profile.edit.error.logged_out': return 'Δεν μπορείτε να επεξεργαστείτε το προφίλ όταν έχετε αποσυνδεθεί';
			case 'login.username': return 'Όνομα χρήστη';
			case 'login.amber': return 'Σύνδεση με Amber';
			case 'login.key': return 'Σύνδεση με κλειδί';
			case 'login.create': return 'Δημιουργία λογαριασμού';
			case 'login.error.invalid_key': return 'Μη έγκυρο κλειδί';
			default: return null;
		}
	}
}

