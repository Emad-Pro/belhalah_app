// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de';

  static String m0(booster_price, booster_period) =>
      "Durch das Boosten deines Profils wirst du ein Teil der ausgewählten Benutzer sein und Priorität in der Suche und bei zufälligen Benutzern haben. Es kostet dich ${booster_price} Credits für sofortige ${booster_period} Minuten";

  static String m1(credits) => "${credits} Credits";

  static String m2(distanceUnit) =>
      "Entfernung von meinem Standort (${distanceUnit})";

  static String m3(error) => "Fehler: ${error}";

  static String m4(price) => "${price} Credits";

  static String m5(notFoundedProducts) =>
      "${notFoundedProducts} nicht gefunden";

  static String m6(localUserProfileItemName) =>
      "Geschenk senden an ${localUserProfileItemName}";

  static String m7(walletBalance) => "${walletBalance} Credits";

  static String m8(stickerFormattedPrice) =>
      "Möchten Sie diesen Aufkleber kaufen? Es wird Sie ${stickerFormattedPrice} kosten";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutMe": MessageLookupByLibrary.simpleMessage("Über mich"),
        "aboutUs": MessageLookupByLibrary.simpleMessage("Über uns"),
        "abuseReport":
            MessageLookupByLibrary.simpleMessage("Missbrauchsbericht"),
        "accountCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Konto erfolgreich erstellt"),
        "activateYourNewEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Aktivieren Sie Ihre neue E-Mail-Adresse"),
        "alert": MessageLookupByLibrary.simpleMessage("Warnung"),
        "all": MessageLookupByLibrary.simpleMessage("Alle"),
        "allContentIncludingPhotosAndOtherDataWillBePermanently":
            MessageLookupByLibrary.simpleMessage(
                "Alle Inhalte einschließlich Fotos und andere Daten werden dauerhaft gelöscht!"),
        "almostFinishedYouNeedToConfirmYourEmailAddressTo":
            MessageLookupByLibrary.simpleMessage(
                "Fast fertig... Sie müssen Ihre E-Mail-Adresse bestätigen. Um den Aktivierungsprozess abzuschließen, klicken Sie bitte auf den Link in der E-Mail, die wir Ihnen gerade gesendet haben."),
        "and": MessageLookupByLibrary.simpleMessage(" und "),
        "apply": MessageLookupByLibrary.simpleMessage("Anwenden"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Sind Sie sicher?"),
        "basic": MessageLookupByLibrary.simpleMessage("Basic"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Grundlegende Informationen"),
        "bePremium": MessageLookupByLibrary.simpleMessage("Premium werden"),
        "bePremiumNow":
            MessageLookupByLibrary.simpleMessage("Jetzt Premium werden"),
        "birthday": MessageLookupByLibrary.simpleMessage("Geburtstag"),
        "block": MessageLookupByLibrary.simpleMessage("Blockieren"),
        "boostAgain": MessageLookupByLibrary.simpleMessage("Erneut boosten"),
        "boostMyProfile":
            MessageLookupByLibrary.simpleMessage("Booste mein Profil"),
        "buyCredits": MessageLookupByLibrary.simpleMessage("Credits kaufen"),
        "buyMoreCredits":
            MessageLookupByLibrary.simpleMessage("Mehr Credits kaufen"),
        "byBoostingYourProfileYouWillBeAPartOf": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "changeEmail": MessageLookupByLibrary.simpleMessage("E-Mail ändern"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Passwort ändern"),
        "confirmNewPassword":
            MessageLookupByLibrary.simpleMessage("Neues Passwort bestätigen"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Passwort bestätigen"),
        "countryPhoneCode":
            MessageLookupByLibrary.simpleMessage("Ländervorwahl"),
        "creditPackages": MessageLookupByLibrary.simpleMessage("Credit-Pakete"),
        "creditsCredits": m1,
        "currentEmail": MessageLookupByLibrary.simpleMessage("Aktuelle E-Mail"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Konto löschen"),
        "deleteAllChatHistory":
            MessageLookupByLibrary.simpleMessage("Alle Chat-Verlauf löschen"),
        "displayMobileNumber":
            MessageLookupByLibrary.simpleMessage("Handynummer anzeigen"),
        "distanceFromMyLocationDistanceUnit": m2,
        "doYouWantToDeleteAllTheChatMessageOf":
            MessageLookupByLibrary.simpleMessage(
                "Möchten Sie alle Chat-Nachrichten dieses Benutzers löschen?"),
        "education": MessageLookupByLibrary.simpleMessage("Bildung"),
        "email": MessageLookupByLibrary.simpleMessage("E-Mail"),
        "emailOrUsername":
            MessageLookupByLibrary.simpleMessage("E-Mail oder Benutzername"),
        "emailOtp": MessageLookupByLibrary.simpleMessage("E-Mail OTP"),
        "encounter": MessageLookupByLibrary.simpleMessage("Begegnung"),
        "endOfResult":
            MessageLookupByLibrary.simpleMessage("Ende des Ergebnisses"),
        "english": MessageLookupByLibrary.simpleMessage("Englisch"),
        "error": MessageLookupByLibrary.simpleMessage("Fehler ..."),
        "errorError": m3,
        "extendPremiumMembership": MessageLookupByLibrary.simpleMessage(
            "Premium-Mitgliedschaft verlängern"),
        "failed": MessageLookupByLibrary.simpleMessage("Fehlgeschlagen"),
        "failedToInitialize": MessageLookupByLibrary.simpleMessage(
            "Initialisierung fehlgeschlagen"),
        "fetchingConsumables": MessageLookupByLibrary.simpleMessage(
            "Verbrauchsgüter werden abgerufen..."),
        "fetchingProducts": MessageLookupByLibrary.simpleMessage(
            "Produkte werden abgerufen..."),
        "financialTransaction":
            MessageLookupByLibrary.simpleMessage("Finanztransaktion"),
        "find": MessageLookupByLibrary.simpleMessage("Finden"),
        "firstName": MessageLookupByLibrary.simpleMessage("Vorname"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Passwort vergessen?"),
        "french": MessageLookupByLibrary.simpleMessage("Französisch"),
        "gender": MessageLookupByLibrary.simpleMessage("Geschlecht"),
        "gift": MessageLookupByLibrary.simpleMessage("Geschenk"),
        "goBack": MessageLookupByLibrary.simpleMessage("Zurück"),
        "goHome": MessageLookupByLibrary.simpleMessage("Zur Startseite"),
        "goToLoginNow":
            MessageLookupByLibrary.simpleMessage("Jetzt zur Anmeldung gehen"),
        "helloWorld": MessageLookupByLibrary.simpleMessage("Hallo Welt!"),
        "home": MessageLookupByLibrary.simpleMessage("Startseite"),
        "iAcceptAllThe":
            MessageLookupByLibrary.simpleMessage("Ich akzeptiere alle "),
        "itemPriceCredits": m4,
        "kd": MessageLookupByLibrary.simpleMessage("K.D"),
        "language": MessageLookupByLibrary.simpleMessage("Sprache"),
        "lastName": MessageLookupByLibrary.simpleMessage("Nachname"),
        "letsGo": MessageLookupByLibrary.simpleMessage("Los geht\'s"),
        "loading": MessageLookupByLibrary.simpleMessage("Laden ..."),
        "loadingMessages": MessageLookupByLibrary.simpleMessage(
            "Nachrichten werden geladen ..."),
        "location": MessageLookupByLibrary.simpleMessage("Standort"),
        "login": MessageLookupByLibrary.simpleMessage("Einloggen"),
        "lookingFor": MessageLookupByLibrary.simpleMessage("Suche nach"),
        "maximumAge": MessageLookupByLibrary.simpleMessage("Höchstalter"),
        "maximumHeight": MessageLookupByLibrary.simpleMessage("Maximale Höhe"),
        "menuBlockedUsers":
            MessageLookupByLibrary.simpleMessage("Blockierte Benutzer"),
        "menuChangeEmail":
            MessageLookupByLibrary.simpleMessage("E-Mail ändern"),
        "menuChangePassword":
            MessageLookupByLibrary.simpleMessage("Passwort ändern"),
        "menuCreditWallet":
            MessageLookupByLibrary.simpleMessage("Guthaben Geldbörse"),
        "menuFeaturedUsers":
            MessageLookupByLibrary.simpleMessage("Ausgewählte Benutzer"),
        "menuLogout": MessageLookupByLibrary.simpleMessage("Ausloggen"),
        "menuMutualLikes":
            MessageLookupByLibrary.simpleMessage("Gegenseitige Likes"),
        "menuMyDislikes":
            MessageLookupByLibrary.simpleMessage("Meine Abneigungen"),
        "menuMyLikes": MessageLookupByLibrary.simpleMessage("Meine Likes"),
        "menuRandomUsers":
            MessageLookupByLibrary.simpleMessage("Zufällige Benutzer"),
        "menuSettings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "menuVisitors": MessageLookupByLibrary.simpleMessage("Besucher"),
        "menuWhoLikesMe": MessageLookupByLibrary.simpleMessage("Wer mag mich"),
        "messenger": MessageLookupByLibrary.simpleMessage("Messenger"),
        "minimumAge": MessageLookupByLibrary.simpleMessage("Mindestalter"),
        "minimumHeight": MessageLookupByLibrary.simpleMessage("Mindesthöhe"),
        "mobileNumber": MessageLookupByLibrary.simpleMessage("Handynummer"),
        "myCreditWallet":
            MessageLookupByLibrary.simpleMessage("Meine Kreditbörse"),
        "myPhotos": MessageLookupByLibrary.simpleMessage("Meine Fotos"),
        "myProfile": MessageLookupByLibrary.simpleMessage("Mein Profil"),
        "myProfileUpdate":
            MessageLookupByLibrary.simpleMessage("Meine Profilaktualisierung"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "newEmail": MessageLookupByLibrary.simpleMessage("Neue E-Mail"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Neues Passwort"),
        "no": MessageLookupByLibrary.simpleMessage("Nein"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Kein Ergebnis gefunden"),
        "notConnected": MessageLookupByLibrary.simpleMessage("Nicht verbunden"),
        "notFoundedProductsNotFound": m5,
        "notifications":
            MessageLookupByLibrary.simpleMessage("Benachrichtigungen"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "on": MessageLookupByLibrary.simpleMessage("am"),
        "packageNotFound":
            MessageLookupByLibrary.simpleMessage("Paket nicht gefunden"),
        "password": MessageLookupByLibrary.simpleMessage("Passwort"),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Zahlungsmethode"),
        "personal": MessageLookupByLibrary.simpleMessage("Persönlich"),
        "pleaseSelectAPlan": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie einen Plan aus"),
        "preferredLanguage":
            MessageLookupByLibrary.simpleMessage("Bevorzugte Sprache"),
        "premium": MessageLookupByLibrary.simpleMessage("Premium"),
        "premiumMembershipExpiry": MessageLookupByLibrary.simpleMessage(
            "Ablauf des Premium-Mitgliedschafts"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Datenschutzbestimmungen"),
        "privately": MessageLookupByLibrary.simpleMessage("Privat"),
        "profileCoverPhoto":
            MessageLookupByLibrary.simpleMessage("Profil-Cover-Foto"),
        "profilePhoto": MessageLookupByLibrary.simpleMessage("Profilfoto"),
        "purchaseCredits":
            MessageLookupByLibrary.simpleMessage("Credits kaufen"),
        "reason": MessageLookupByLibrary.simpleMessage("Grund"),
        "register": MessageLookupByLibrary.simpleMessage("Registrieren"),
        "relationshipStatus":
            MessageLookupByLibrary.simpleMessage("Beziehungsstatus"),
        "report": MessageLookupByLibrary.simpleMessage("Melden"),
        "reportAbuse":
            MessageLookupByLibrary.simpleMessage("Missbrauch melden"),
        "reportUser": MessageLookupByLibrary.simpleMessage("Benutzer melden"),
        "requestDenied":
            MessageLookupByLibrary.simpleMessage("Anfrage abgelehnt"),
        "selectCountryCode":
            MessageLookupByLibrary.simpleMessage("Ländervorwahl auswählen"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Sprache auswählen"),
        "selectPlan": MessageLookupByLibrary.simpleMessage("Plan auswählen"),
        "send": MessageLookupByLibrary.simpleMessage("Senden"),
        "sendAGift": MessageLookupByLibrary.simpleMessage("Geschenk senden"),
        "sendEmailOtp":
            MessageLookupByLibrary.simpleMessage("E-Mail OTP senden"),
        "sendGiftToLocalUserProfileItemName": m6,
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "showGiftsNotifications": MessageLookupByLibrary.simpleMessage(
            "Geschenkbenachrichtigungen anzeigen"),
        "showLikesNotifications": MessageLookupByLibrary.simpleMessage(
            "Likes-Benachrichtigungen anzeigen"),
        "showLoginNotificationsForYourLikedUsers":
            MessageLookupByLibrary.simpleMessage(
                "Anmeldungsbenachrichtigungen für Ihre gemochten Benutzer anzeigen"),
        "showMessagesNotifications": MessageLookupByLibrary.simpleMessage(
            "Nachrichtenbenachrichtigungen anzeigen"),
        "showVisitorNotifications": MessageLookupByLibrary.simpleMessage(
            "Besucherbenachrichtigungen anzeigen"),
        "signIn": MessageLookupByLibrary.simpleMessage("Anmelden"),
        "signInWithFacebook":
            MessageLookupByLibrary.simpleMessage("Mit Facebook anmelden"),
        "signInWithGoogle":
            MessageLookupByLibrary.simpleMessage("Mit Google anmelden"),
        "submit": MessageLookupByLibrary.simpleMessage("Absenden"),
        "termsConditions":
            MessageLookupByLibrary.simpleMessage("Nutzungsbedingungen"),
        "thereAreNoResultsToShow": MessageLookupByLibrary.simpleMessage(
            "Es gibt keine Ergebnisse zu zeigen."),
        "thisIsAPremiumFeatureToViewThisYouNeed":
            MessageLookupByLibrary.simpleMessage(
                "Dies ist ein Premium-Feature. Um dies anzuzeigen, müssen Sie zuerst einen Premium-Plan kaufen."),
        "totalLikes": MessageLookupByLibrary.simpleMessage("Gesamte Likes"),
        "totalViews": MessageLookupByLibrary.simpleMessage("Gesamte Ansichten"),
        "transaction": MessageLookupByLibrary.simpleMessage("Transaktion"),
        "tryingToConnect":
            MessageLookupByLibrary.simpleMessage("Versuche zu verbinden..."),
        "unblock": MessageLookupByLibrary.simpleMessage("Freigeben"),
        "updatePhoto":
            MessageLookupByLibrary.simpleMessage("Foto aktualisieren"),
        "updateSettings":
            MessageLookupByLibrary.simpleMessage("Einstellungen aktualisieren"),
        "uploadNewPhotos":
            MessageLookupByLibrary.simpleMessage("Profilfoto hochladen"),
        "userBlocked":
            MessageLookupByLibrary.simpleMessage("Benutzer blockiert"),
        "userHasBeenReportedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Benutzer wurde erfolgreich gemeldet"),
        "username": MessageLookupByLibrary.simpleMessage("Benutzername"),
        "version": MessageLookupByLibrary.simpleMessage("Version"),
        "walletBalanceCredits": m7,
        "welcome": MessageLookupByLibrary.simpleMessage(
            "Die meisterwartete Dating-App ist endlich da!"),
        "welcomeSmallMessage": MessageLookupByLibrary.simpleMessage(
            "Dating muss nicht schwer sein."),
        "workStatus": MessageLookupByLibrary.simpleMessage("Berufsstatus"),
        "yes": MessageLookupByLibrary.simpleMessage("Ja"),
        "yesDelete": MessageLookupByLibrary.simpleMessage("Ja, löschen"),
        "youArePremiumUser": MessageLookupByLibrary.simpleMessage(
            "Du bist ein Premium-Benutzer"),
        "youCanAcceptOrDenyUserMessageRequest":
            MessageLookupByLibrary.simpleMessage(
                "Sie können die Nachrichtenanfrage des Benutzers akzeptieren oder ablehnen."),
        "youHaveAlreadyDeclinedUserMessageRequest":
            MessageLookupByLibrary.simpleMessage(
                "Sie haben bereits die Nachrichtenanfrage des Benutzers abgelehnt"),
        "youWantToDeleteThisImage": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie dieses Bild löschen?"),
        "youWantToPurchaseThisStickerItWillCostYou": m8,
        "yourBasicInformationFormWillComeHere":
            MessageLookupByLibrary.simpleMessage(
                "Ihr Formular für grundlegende Informationen wird hier angezeigt"),
        "yourDailyLimitForEncountersMayExceedOrThereAre":
            MessageLookupByLibrary.simpleMessage(
                "Ihr tägliches Limit für Begegnungen kann überschritten werden oder es gibt keine Benutzer zum Anzeigen."),
        "yourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Ihre E-Mail-Adresse"),
        "yourProfileIsBoostedFor":
            MessageLookupByLibrary.simpleMessage("Dein Profil ist für"),
        "yourWalletBalance":
            MessageLookupByLibrary.simpleMessage("Ihr Guthaben")
      };
}
