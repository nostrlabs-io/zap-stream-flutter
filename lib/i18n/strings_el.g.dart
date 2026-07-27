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
class TranslationsEl extends Translations with BaseTranslations<AppLocale, Translations> {
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

	@override String full_amount_sats({required num n}) => '${NumberFormat.decimalPattern('el').format(n)} sats';

	/// Αριθμός θεατών της ροής
	@override String viewers({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('el'))(n,
		one: '1 θεατής',
		other: '${NumberFormat.decimalPattern('el').format(n)} θεατές',
	);

	@override late final _Translations$stream$el stream = _Translations$stream$el._(_root);
	@override late final _Translations$goal$el goal = _Translations$goal$el._(_root);
	@override late final _Translations$button$el button = _Translations$button$el._(_root);
	@override late final _Translations$embed$el embed = _Translations$embed$el._(_root);

	/// Επικεφαλίδες στις λίστες ροής ανά τύπο ροής ζωντανή/τελειωμένη/προγραμματισμένη κ.λπ.
	@override late final _Translations$stream_list$el stream_list = _Translations$stream_list$el._(_root);

	@override late final _Translations$zap$el zap = _Translations$zap$el._(_root);
	@override late final _Translations$profile$el profile = _Translations$profile$el._(_root);
	@override late final _Translations$settings$el settings = _Translations$settings$el._(_root);
	@override late final _Translations$login$el login = _Translations$login$el._(_root);
	@override late final _Translations$live$el live = _Translations$live$el._(_root);
}

// Path: stream
class _Translations$stream$el extends Translations$stream$en {
	_Translations$stream$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$stream$status$el status = _Translations$stream$status$el._(_root);
	@override String started({required Object timestamp}) => 'Ξεκίνησε ${timestamp}';
	@override String notification({required Object name}) => '${name} βγήκε ζωντανά!';
	@override late final _Translations$stream$chat$el chat = _Translations$stream$chat$el._(_root);
}

// Path: goal
class _Translations$goal$el extends Translations$goal$en {
	_Translations$goal$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String title({required Object amount}) => 'Στόχος: ${amount}';
	@override String remaining({required Object amount}) => 'Υπόλοιπο: ${amount}';
	@override String get complete => 'ΠΛΗΡΗΣ';
}

// Path: button
class _Translations$button$el extends Translations$button$en {
	_Translations$button$el._(TranslationsEl root) : this._root = root, super.internal(root);

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
class _Translations$embed$el extends Translations$embed$en {
	_Translations$embed$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String article_by({required Object name}) => 'Άρθρο από ${name}';
	@override String note_by({required Object name}) => 'Σημείωση του ${name}';
	@override String live_stream_by({required Object name}) => 'Ζωντανή μετάδοση από το ${name}';
}

// Path: stream_list
class _Translations$stream_list$el extends Translations$stream_list$en {
	_Translations$stream_list$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get following => 'Ακολουθώντας το';
	@override String get live => 'Ζωντανό';
	@override String get planned => 'Προγραμματισμένο';
	@override String get ended => 'Τελείωσε';
}

// Path: zap
class _Translations$zap$el extends Translations$zap$en {
	_Translations$zap$el._(TranslationsEl root) : this._root = root, super.internal(root);

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
	@override late final _Translations$zap$error$el error = _Translations$zap$error$el._(_root);
}

// Path: profile
class _Translations$profile$el extends Translations$profile$en {
	_Translations$profile$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get past_streams => 'Προηγούμενα ρεύματα';
}

// Path: settings
class _Translations$settings$el extends Translations$settings$en {
	_Translations$settings$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get button_profile => 'Επεξεργασία προφίλ';
	@override String get button_wallet => 'Ρυθμίσεις πορτοφολιού';
	@override late final _Translations$settings$profile$el profile = _Translations$settings$profile$el._(_root);
	@override late final _Translations$settings$wallet$el wallet = _Translations$settings$wallet$el._(_root);
}

// Path: login
class _Translations$login$el extends Translations$login$en {
	_Translations$login$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get username => 'Όνομα χρήστη';
	@override String get amber => 'Σύνδεση με Amber';
	@override String get key => 'Σύνδεση με κλειδί';
	@override String get create => 'Δημιουργία λογαριασμού';
	@override late final _Translations$login$error$el error = _Translations$login$error$el._(_root);
}

// Path: live
class _Translations$live$el extends Translations$live$en {
	_Translations$live$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get start => 'GO LIVE';
	@override String get configure_stream => 'Διαμόρφωση ροής';
	@override String get endpoint => 'Τελικό σημείο';
	@override String get accept_tos => 'Αποδοχή TOS';
	@override String balance_left({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('el'))(n,
		zero: '∞',
		other: '~${time}',
	);
	@override String get title => 'Τίτλος';
	@override String get summary => 'Περίληψη';
	@override String get image => 'Εικόνα εξωφύλλου';
	@override String get tags => 'Ετικέτες';
	@override String get nsfw => 'Περιεχόμενο NSFW';
	@override String get nsfw_description => 'Ελέγξτε εδώ αν αυτή η ροή περιέχει γυμνό ή πορνογραφικό περιεχόμενο.';
	@override late final _Translations$live$error$el error = _Translations$live$error$el._(_root);
}

// Path: stream.status
class _Translations$stream$status$el extends Translations$stream$status$en {
	_Translations$stream$status$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get live => 'LIVE';
	@override String get ended => 'ENDED';
	@override String get planned => 'ΣΧΕΔΙΑΣΜΟΣ';
}

// Path: stream.chat
class _Translations$stream$chat$el extends Translations$stream$chat$en {
	_Translations$stream$chat$el._(TranslationsEl root) : this._root = root, super.internal(root);

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

	@override late final _Translations$stream$chat$write$el write = _Translations$stream$chat$write$el._(_root);
	@override late final _Translations$stream$chat$badge$el badge = _Translations$stream$chat$badge$el._(_root);
	@override late final _Translations$stream$chat$raid$el raid = _Translations$stream$chat$raid$el._(_root);
}

// Path: zap.error
class _Translations$zap$error$el extends Translations$zap$error$en {
	_Translations$zap$error$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get invalid_custom_amount => 'Μη έγκυρο προσαρμοσμένο ποσό';
	@override String get no_wallet => 'Δεν έχει εγκατασταθεί πορτοφόλι αστραπής';
	@override String get no_lud16 => 'Δεν βρέθηκε διεύθυνση κεραυνού';
}

// Path: settings.profile
class _Translations$settings$profile$el extends Translations$settings$profile$en {
	_Translations$settings$profile$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get display_name => 'Όνομα οθόνης';
	@override String get about => 'Σχετικά με το';
	@override String get nip05 => 'Διεύθυνση Nostr';
	@override String get lud16 => 'Διεύθυνση Lightning';
	@override late final _Translations$settings$profile$error$el error = _Translations$settings$profile$error$el._(_root);
}

// Path: settings.wallet
class _Translations$settings$wallet$el extends Translations$settings$wallet$en {
	_Translations$settings$wallet$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get connect_wallet => 'Connect Wallet (NWC nostr+walletconnect://)';
	@override String get disconnect_wallet => 'Αποσύνδεση πορτοφολιού';
	@override String get connect_1tap => 'Σύνδεση 1 βρύσης';
	@override String get paste => 'Επικόλληση URL';
	@override String get balance => 'Υπόλοιπο';
	@override String get name => 'Πορτοφόλι';
	@override late final _Translations$settings$wallet$error$el error = _Translations$settings$wallet$error$el._(_root);
}

// Path: login.error
class _Translations$login$error$el extends Translations$login$error$en {
	_Translations$login$error$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get invalid_key => 'Μη έγκυρο κλειδί';
}

// Path: live.error
class _Translations$live$error$el extends Translations$live$error$en {
	_Translations$live$error$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get failed => 'Το ρεύμα απέτυχε';
	@override String get connection_error => 'Σφάλμα σύνδεσης';
	@override String get start_failed => 'Η εκκίνηση της ροής απέτυχε, παρακαλούμε ελέγξτε το υπόλοιπό σας';
}

// Path: stream.chat.write
class _Translations$stream$chat$write$el extends Translations$stream$chat$write$en {
	_Translations$stream$chat$write$el._(TranslationsEl root) : this._root = root, super.internal(root);

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
class _Translations$stream$chat$badge$el extends Translations$stream$chat$badge$en {
	_Translations$stream$chat$badge$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations

	/// Επικεφαλίδα πάνω από τη λίστα των χρηστών στους οποίους έχει απονεμηθεί ένα σήμα
	@override String get awarded_to => 'Απονέμεται σε:';
}

// Path: stream.chat.raid
class _Translations$stream$chat$raid$el extends Translations$stream$chat$raid$en {
	_Translations$stream$chat$raid$el._(TranslationsEl root) : this._root = root, super.internal(root);

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
class _Translations$settings$profile$error$el extends Translations$settings$profile$error$en {
	_Translations$settings$profile$error$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Δεν μπορείτε να επεξεργαστείτε το προφίλ όταν έχετε αποσυνδεθεί';
}

// Path: settings.wallet.error
class _Translations$settings$wallet$error$el extends Translations$settings$wallet$error$en {
	_Translations$settings$wallet$error$el._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get logged_out => 'Δεν μπορώ να συνδεθώ με πορτοφόλι όταν έχω αποσυνδεθεί';
	@override String get nwc_auth_event_not_found => 'Δεν βρέθηκε συμβάν εξουσιοδότησης πορτοφολιού';
}

/// The flat map containing all translations for locale <el>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'upload_avatar' => 'Ανέβασμα Avatar',
			'most_zapped_streamers' => 'Τα περισσότερα Zapped Streamers',
			'no_user_found' => 'Δεν βρέθηκε χρήστης',
			'anon' => 'Anon',
			'full_amount_sats' => ({required num n}) => '${NumberFormat.decimalPattern('el').format(n)} sats',
			'viewers' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('el'))(n, one: '1 θεατής', other: '${NumberFormat.decimalPattern('el').format(n)} θεατές', ), 
			'stream.status.live' => 'LIVE',
			'stream.status.ended' => 'ENDED',
			'stream.status.planned' => 'ΣΧΕΔΙΑΣΜΟΣ',
			'stream.started' => ({required Object timestamp}) => 'Ξεκίνησε ${timestamp}',
			'stream.notification' => ({required Object name}) => '${name} βγήκε ζωντανά!',
			'stream.chat.disabled' => 'ΑΠΕΝΕΡΓΟΠΟΙΗΜΈΝΗ ΣΥΝΟΜΙΛΊΑ',
			'stream.chat.disabled_timeout' => ({required Object time}) => 'Το χρονικό όριο λήγει: ${time}',
			'stream.chat.timeout' => ({required InlineSpan mod, required InlineSpan user, required InlineSpan time}) => TextSpan(children: [ mod, const TextSpan(text: ' χρονομετρημένη λήξη '), user, const TextSpan(text: ' για '), time, ]), 
			'stream.chat.ended' => 'STREAM ΤΕΛΕΙΩΣΕ',
			'stream.chat.zap' => ({required InlineSpan user, required InlineSpan amount}) => TextSpan(children: [ user, const TextSpan(text: ' zapped '), amount, const TextSpan(text: ' sats'), ]), 
			'stream.chat.write.label' => 'Γράψτε μήνυμα',
			'stream.chat.write.no_signer' => 'Δεν μπορείτε να γράψετε μηνύματα με σύνδεση στο npub',
			'stream.chat.write.login' => 'Παρακαλώ συνδεθείτε για να στείλετε μηνύματα',
			'stream.chat.badge.awarded_to' => 'Απονέμεται σε:',
			'stream.chat.raid.to' => ({required Object name}) => 'RAIDING ${name}',
			'stream.chat.raid.from' => ({required Object name}) => 'RAID FROM ${name}',
			'stream.chat.raid.countdown' => ({required Object time}) => 'Επιδρομές στο ${time}',
			'goal.title' => ({required Object amount}) => 'Στόχος: ${amount}',
			'goal.remaining' => ({required Object amount}) => 'Υπόλοιπο: ${amount}',
			'goal.complete' => 'ΠΛΗΡΗΣ',
			'button.login' => 'Σύνδεση',
			'button.logout' => 'Αποσύνδεση',
			'button.edit_profile' => 'Επεξεργασία προφίλ',
			'button.follow' => 'Ακολουθήστε το',
			'button.unfollow' => 'Ακολουθήστε το',
			'button.mute' => 'Σίγαση',
			'button.unmute' => 'Αποσυνδέστε τη φωνή σας από το',
			'button.share' => 'Μοιραστείτε το',
			'button.save' => 'Αποθήκευση',
			'button.connect' => 'Συνδέστε το',
			'button.settings' => 'Ρυθμίσεις',
			'embed.article_by' => ({required Object name}) => 'Άρθρο από ${name}',
			'embed.note_by' => ({required Object name}) => 'Σημείωση του ${name}',
			'embed.live_stream_by' => ({required Object name}) => 'Ζωντανή μετάδοση από το ${name}',
			'stream_list.following' => 'Ακολουθώντας το',
			'stream_list.live' => 'Ζωντανό',
			'stream_list.planned' => 'Προγραμματισμένο',
			'stream_list.ended' => 'Τελείωσε',
			'zap.title' => ({required Object name}) => 'Zap ${name}',
			'zap.custom_amount' => 'Προσαρμοσμένο ποσό',
			'zap.confirm' => 'Επιβεβαίωση',
			'zap.comment' => 'Σχόλιο',
			'zap.button_zap_ready' => ({required Object amount}) => 'Zap ${amount} sats',
			'zap.button_zap' => 'Zap',
			'zap.button_open_wallet' => 'Άνοιγμα στο πορτοφόλι',
			'zap.button_connect_wallet' => 'Connect Wallet',
			'zap.copy' => 'Αντιγραφή στο πρόχειρο',
			'zap.error.invalid_custom_amount' => 'Μη έγκυρο προσαρμοσμένο ποσό',
			'zap.error.no_wallet' => 'Δεν έχει εγκατασταθεί πορτοφόλι αστραπής',
			'zap.error.no_lud16' => 'Δεν βρέθηκε διεύθυνση κεραυνού',
			'profile.past_streams' => 'Προηγούμενα ρεύματα',
			'settings.button_profile' => 'Επεξεργασία προφίλ',
			'settings.button_wallet' => 'Ρυθμίσεις πορτοφολιού',
			'settings.profile.display_name' => 'Όνομα οθόνης',
			'settings.profile.about' => 'Σχετικά με το',
			'settings.profile.nip05' => 'Διεύθυνση Nostr',
			'settings.profile.lud16' => 'Διεύθυνση Lightning',
			'settings.profile.error.logged_out' => 'Δεν μπορείτε να επεξεργαστείτε το προφίλ όταν έχετε αποσυνδεθεί',
			'settings.wallet.connect_wallet' => 'Connect Wallet (NWC nostr+walletconnect://)',
			'settings.wallet.disconnect_wallet' => 'Αποσύνδεση πορτοφολιού',
			'settings.wallet.connect_1tap' => 'Σύνδεση 1 βρύσης',
			'settings.wallet.paste' => 'Επικόλληση URL',
			'settings.wallet.balance' => 'Υπόλοιπο',
			'settings.wallet.name' => 'Πορτοφόλι',
			'settings.wallet.error.logged_out' => 'Δεν μπορώ να συνδεθώ με πορτοφόλι όταν έχω αποσυνδεθεί',
			'settings.wallet.error.nwc_auth_event_not_found' => 'Δεν βρέθηκε συμβάν εξουσιοδότησης πορτοφολιού',
			'login.username' => 'Όνομα χρήστη',
			'login.amber' => 'Σύνδεση με Amber',
			'login.key' => 'Σύνδεση με κλειδί',
			'login.create' => 'Δημιουργία λογαριασμού',
			'login.error.invalid_key' => 'Μη έγκυρο κλειδί',
			'live.start' => 'GO LIVE',
			'live.configure_stream' => 'Διαμόρφωση ροής',
			'live.endpoint' => 'Τελικό σημείο',
			'live.accept_tos' => 'Αποδοχή TOS',
			'live.balance_left' => ({required num n, required Object time}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('el'))(n, zero: '∞', other: '~${time}', ), 
			'live.title' => 'Τίτλος',
			'live.summary' => 'Περίληψη',
			'live.image' => 'Εικόνα εξωφύλλου',
			'live.tags' => 'Ετικέτες',
			'live.nsfw' => 'Περιεχόμενο NSFW',
			'live.nsfw_description' => 'Ελέγξτε εδώ αν αυτή η ροή περιέχει γυμνό ή πορνογραφικό περιεχόμενο.',
			'live.error.failed' => 'Το ρεύμα απέτυχε',
			'live.error.connection_error' => 'Σφάλμα σύνδεσης',
			'live.error.start_failed' => 'Η εκκίνηση της ροής απέτυχε, παρακαλούμε ελέγξτε το υπόλοιπό σας',
			_ => null,
		};
	}
}
