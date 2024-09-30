// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(booster_price, booster_period) =>
      "En boostant votre profil, vous ferez partie des utilisateurs mis en avant et vous attirerez plus d\'attention. Cela coûte ${booster_price} crédits pour une durée de ${booster_period} minutes.";

  static String m1(credits) => "${credits} crédits";

  static String m2(distanceUnit) =>
      "Distance de mon emplacement (${distanceUnit})";

  static String m3(error) => "Erreur: ${error}";

  static String m4(price) => "${price} crédits";

  static String m5(notFoundedProducts) => "${notFoundedProducts} non trouvés";

  static String m6(localUserProfileItemName) =>
      "Envoyer un cadeau à ${localUserProfileItemName}";

  static String m7(walletBalance) => "${walletBalance} crédits";

  static String m8(stickerFormattedPrice) =>
      "Voulez-vous acheter cet autocollant? Cela vous coûtera ${stickerFormattedPrice} crédits.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutMe": MessageLookupByLibrary.simpleMessage("À propos de moi"),
        "aboutUs": MessageLookupByLibrary.simpleMessage("À propos de nous"),
        "abuseReport":
            MessageLookupByLibrary.simpleMessage("Signalement d\'abus"),
        "accountCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Compte créé avec succès"),
        "activateYourNewEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Activer votre nouvelle adresse email"),
        "alert": MessageLookupByLibrary.simpleMessage("Alerte"),
        "all": MessageLookupByLibrary.simpleMessage("Tout"),
        "allContentIncludingPhotosAndOtherDataWillBePermanently":
            MessageLookupByLibrary.simpleMessage(
                "Tout le contenu, y compris les photos et autres données, sera définitivement supprimé!"),
        "almostFinishedYouNeedToConfirmYourEmailAddressTo":
            MessageLookupByLibrary.simpleMessage(
                "Presque terminé... Vous devez confirmer votre adresse email. Un lien de confirmation a été envoyé à votre email."),
        "amount": MessageLookupByLibrary.simpleMessage("Montant"),
        "and": MessageLookupByLibrary.simpleMessage(" et "),
        "apply": MessageLookupByLibrary.simpleMessage("Appliquer"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Êtes-vous sûr?"),
        "basic": MessageLookupByLibrary.simpleMessage("De base"),
        "basicInformation":
            MessageLookupByLibrary.simpleMessage("Informations de base"),
        "bePremium": MessageLookupByLibrary.simpleMessage("Devenir Premium"),
        "bePremiumNow":
            MessageLookupByLibrary.simpleMessage("Devenir Premium maintenant"),
        "birthday": MessageLookupByLibrary.simpleMessage("Anniversaire"),
        "block": MessageLookupByLibrary.simpleMessage("Bloquer"),
        "boostAgain": MessageLookupByLibrary.simpleMessage("Booster à nouveau"),
        "boostMyProfile":
            MessageLookupByLibrary.simpleMessage("Booster mon profil"),
        "buyCredits":
            MessageLookupByLibrary.simpleMessage("Acheter des crédits"),
        "buyMoreCredits":
            MessageLookupByLibrary.simpleMessage("Acheter plus de crédits"),
        "byBoostingYourProfileYouWillBeAPartOf": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "changeEmail": MessageLookupByLibrary.simpleMessage("Changer l\'email"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Changer le mot de passe"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Passer à la caisse"),
        "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
            "Confirmer le nouveau mot de passe"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmer le mot de passe"),
        "countryPhoneCode":
            MessageLookupByLibrary.simpleMessage("Code téléphonique du pays"),
        "creditPackages":
            MessageLookupByLibrary.simpleMessage("Paquets de crédits"),
        "creditsCredits": m1,
        "currentEmail": MessageLookupByLibrary.simpleMessage("Email actuel"),
        "customerInformation":
            MessageLookupByLibrary.simpleMessage("Informations sur le client"),
        "customerName": MessageLookupByLibrary.simpleMessage("Nom du client"),
        "deleteAccount":
            MessageLookupByLibrary.simpleMessage("Supprimer le compte"),
        "deleteAllChatHistory": MessageLookupByLibrary.simpleMessage(
            "Supprimer tout l\'historique des chats"),
        "displayMobileNumber": MessageLookupByLibrary.simpleMessage(
            "Afficher le numéro de mobile"),
        "distanceFromMyLocationDistanceUnit": m2,
        "doYouWantToDeleteAllTheChatMessageOf":
            MessageLookupByLibrary.simpleMessage(
                "Voulez-vous supprimer tous les messages de chat de"),
        "education": MessageLookupByLibrary.simpleMessage("Éducation"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailOrUsername":
            MessageLookupByLibrary.simpleMessage("Email ou nom d\'utilisateur"),
        "emailOtp": MessageLookupByLibrary.simpleMessage("Email OTP"),
        "encounter": MessageLookupByLibrary.simpleMessage("Rencontre"),
        "endOfResult":
            MessageLookupByLibrary.simpleMessage("Fin des résultats"),
        "english": MessageLookupByLibrary.simpleMessage("Anglais"),
        "error": MessageLookupByLibrary.simpleMessage("erreur ..."),
        "errorError": m3,
        "extendPremiumMembership": MessageLookupByLibrary.simpleMessage(
            "Prolonger l\'abonnement Premium"),
        "failed": MessageLookupByLibrary.simpleMessage("Échec"),
        "failedToInitialize":
            MessageLookupByLibrary.simpleMessage("Échec de l\'initialisation"),
        "fetchingConsumables": MessageLookupByLibrary.simpleMessage(
            "Récupération des consommables..."),
        "fetchingProducts": MessageLookupByLibrary.simpleMessage(
            "Récupération des produits..."),
        "financialTransaction":
            MessageLookupByLibrary.simpleMessage("Transaction financière"),
        "find": MessageLookupByLibrary.simpleMessage("Trouver"),
        "firstName": MessageLookupByLibrary.simpleMessage("Prénom"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe oublié?"),
        "french": MessageLookupByLibrary.simpleMessage("Français"),
        "gender": MessageLookupByLibrary.simpleMessage("Sexe"),
        "gift": MessageLookupByLibrary.simpleMessage("Cadeau"),
        "goBack": MessageLookupByLibrary.simpleMessage("Retour"),
        "goHome": MessageLookupByLibrary.simpleMessage("ACCUEIL"),
        "goToLoginNow": MessageLookupByLibrary.simpleMessage(
            "Aller à la connexion maintenant"),
        "helloWorld": MessageLookupByLibrary.simpleMessage("Bonjour le monde"),
        "home": MessageLookupByLibrary.simpleMessage("Accueil"),
        "iAcceptAllThe":
            MessageLookupByLibrary.simpleMessage("J\'accepte tous les"),
        "itemPriceCredits": m4,
        "kWD": MessageLookupByLibrary.simpleMessage("Dinar koweïtien"),
        "language": MessageLookupByLibrary.simpleMessage("Langue"),
        "lastName": MessageLookupByLibrary.simpleMessage("Nom"),
        "letsGo": MessageLookupByLibrary.simpleMessage("Allons-y"),
        "loading": MessageLookupByLibrary.simpleMessage("chargement ..."),
        "loadingMessages":
            MessageLookupByLibrary.simpleMessage("chargement des messages ..."),
        "location": MessageLookupByLibrary.simpleMessage("Emplacement"),
        "login": MessageLookupByLibrary.simpleMessage("Connexion"),
        "lookingFor": MessageLookupByLibrary.simpleMessage("Recherche"),
        "maximumAge": MessageLookupByLibrary.simpleMessage("Âge maximum"),
        "maximumHeight": MessageLookupByLibrary.simpleMessage("Taille maximum"),
        "menuBlockedUsers":
            MessageLookupByLibrary.simpleMessage("Utilisateurs bloqués"),
        "menuChangeEmail":
            MessageLookupByLibrary.simpleMessage("Changer l\'email"),
        "menuChangePassword":
            MessageLookupByLibrary.simpleMessage("Changer le mot de passe"),
        "menuCreditWallet":
            MessageLookupByLibrary.simpleMessage("Portefeuille de crédits"),
        "menuFeaturedUsers":
            MessageLookupByLibrary.simpleMessage("Utilisateurs en vedette"),
        "menuLogout": MessageLookupByLibrary.simpleMessage("Déconnexion"),
        "menuMutualLikes":
            MessageLookupByLibrary.simpleMessage("J\'aime mutuels"),
        "menuMyDislikes":
            MessageLookupByLibrary.simpleMessage("Mes Je n\'aime pas"),
        "menuMyLikes": MessageLookupByLibrary.simpleMessage("Mes J\'aime"),
        "menuRandomUsers":
            MessageLookupByLibrary.simpleMessage("Utilisateurs aléatoires"),
        "menuSettings": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "menuVisitors": MessageLookupByLibrary.simpleMessage("Visiteurs"),
        "menuWhoLikesMe": MessageLookupByLibrary.simpleMessage("Qui m\'aime"),
        "messenger": MessageLookupByLibrary.simpleMessage("Messagerie"),
        "minimumAge": MessageLookupByLibrary.simpleMessage("Âge minimum"),
        "minimumHeight": MessageLookupByLibrary.simpleMessage("Taille minimum"),
        "mobile": MessageLookupByLibrary.simpleMessage("Mobile"),
        "mobileNumber":
            MessageLookupByLibrary.simpleMessage("Numéro de mobile"),
        "myCreditWallet":
            MessageLookupByLibrary.simpleMessage("Mon portefeuille de crédits"),
        "myPhotos": MessageLookupByLibrary.simpleMessage("Mes photos"),
        "myProfile": MessageLookupByLibrary.simpleMessage("Mon profil"),
        "myProfileUpdate":
            MessageLookupByLibrary.simpleMessage("Mise à jour de mon profil"),
        "name": MessageLookupByLibrary.simpleMessage("Nom"),
        "newEmail": MessageLookupByLibrary.simpleMessage("Nouvel email"),
        "newPassword":
            MessageLookupByLibrary.simpleMessage("Nouveau mot de passe"),
        "no": MessageLookupByLibrary.simpleMessage("Non"),
        "noResultFound":
            MessageLookupByLibrary.simpleMessage("Aucun résultat trouvé"),
        "notConnected": MessageLookupByLibrary.simpleMessage("Non connecté"),
        "notFoundedProductsNotFound": m5,
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "on": MessageLookupByLibrary.simpleMessage("sur"),
        "orderID": MessageLookupByLibrary.simpleMessage("ID de commande"),
        "orderReference":
            MessageLookupByLibrary.simpleMessage("Référence de commande"),
        "packageNotFound":
            MessageLookupByLibrary.simpleMessage("Paquet non trouvé"),
        "paidOn": MessageLookupByLibrary.simpleMessage("Payé le"),
        "password": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "paymentCancelledByUser": MessageLookupByLibrary.simpleMessage(
            "Paiement annulé par l\'utilisateur."),
        "paymentDetails":
            MessageLookupByLibrary.simpleMessage("Détails de paiement"),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Méthode de paiement"),
        "personal": MessageLookupByLibrary.simpleMessage("Personnel"),
        "pleaseSelectAPlan": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner un plan."),
        "preferredLanguage":
            MessageLookupByLibrary.simpleMessage("Langue préférée"),
        "premium": MessageLookupByLibrary.simpleMessage("Premium"),
        "premiumMembershipExpiry": MessageLookupByLibrary.simpleMessage(
            "Expiration de l\'abonnement Premium"),
        "price": MessageLookupByLibrary.simpleMessage("Prix"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage(
            "politique de confidentialité"),
        "privately": MessageLookupByLibrary.simpleMessage("Privé"),
        "profileCoverPhoto": MessageLookupByLibrary.simpleMessage(
            "Photo de couverture de profil"),
        "profilePhoto": MessageLookupByLibrary.simpleMessage("Photo de profil"),
        "purchaseCredits":
            MessageLookupByLibrary.simpleMessage("Acheter des crédits"),
        "reason": MessageLookupByLibrary.simpleMessage("Raison"),
        "register": MessageLookupByLibrary.simpleMessage("S\'inscrire"),
        "relationshipStatus":
            MessageLookupByLibrary.simpleMessage("Statut de la relation"),
        "report": MessageLookupByLibrary.simpleMessage("Signaler"),
        "reportAbuse": MessageLookupByLibrary.simpleMessage("Signaler un abus"),
        "reportUser":
            MessageLookupByLibrary.simpleMessage("Signaler un utilisateur"),
        "requestDenied":
            MessageLookupByLibrary.simpleMessage("Demande refusée"),
        "resultCode": MessageLookupByLibrary.simpleMessage("Code de résultat"),
        "selectCountryCode": MessageLookupByLibrary.simpleMessage(
            "Sélectionner le code du pays"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Choisir la langue"),
        "selectPlan":
            MessageLookupByLibrary.simpleMessage("Sélectionner un plan"),
        "send": MessageLookupByLibrary.simpleMessage("Envoyer"),
        "sendAGift": MessageLookupByLibrary.simpleMessage("Envoyer un cadeau"),
        "sendEmailOtp":
            MessageLookupByLibrary.simpleMessage("Envoyer OTP par email"),
        "sendGiftToLocalUserProfileItemName": m6,
        "settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "showGiftsNotifications": MessageLookupByLibrary.simpleMessage(
            "Afficher les notifications de cadeaux"),
        "showLikesNotifications": MessageLookupByLibrary.simpleMessage(
            "Afficher les notifications de J\'aime"),
        "showLoginNotificationsForYourLikedUsers":
            MessageLookupByLibrary.simpleMessage(
                "Afficher les notifications de connexion pour les utilisateurs que vous aimez"),
        "showMessagesNotifications": MessageLookupByLibrary.simpleMessage(
            "Afficher les notifications de messages"),
        "showVisitorNotifications": MessageLookupByLibrary.simpleMessage(
            "Afficher les notifications de visiteurs"),
        "signIn": MessageLookupByLibrary.simpleMessage("Se connecter"),
        "signInWithFacebook":
            MessageLookupByLibrary.simpleMessage("Se connecter avec Facebook"),
        "signInWithGoogle":
            MessageLookupByLibrary.simpleMessage("Se connecter avec Google"),
        "submit": MessageLookupByLibrary.simpleMessage("Soumettre"),
        "termsConditions":
            MessageLookupByLibrary.simpleMessage("termes et conditions"),
        "thereAreNoResultsToShow":
            MessageLookupByLibrary.simpleMessage("Aucun résultat à afficher."),
        "thisIsAPremiumFeatureToViewThisYouNeed":
            MessageLookupByLibrary.simpleMessage(
                "Ceci est une fonctionnalité Premium. Pour voir cela, vous devez être Premium."),
        "totalLikes": MessageLookupByLibrary.simpleMessage("Total des J\'aime"),
        "totalViews": MessageLookupByLibrary.simpleMessage("Total des vues"),
        "transaction": MessageLookupByLibrary.simpleMessage("Transaction"),
        "transactionInformation": MessageLookupByLibrary.simpleMessage(
            "Informations sur la transaction"),
        "tryingToConnect":
            MessageLookupByLibrary.simpleMessage("Essayer de se connecter..."),
        "unblock": MessageLookupByLibrary.simpleMessage("Débloquer"),
        "updatePhoto":
            MessageLookupByLibrary.simpleMessage("Mettre à jour la photo"),
        "updateSettings": MessageLookupByLibrary.simpleMessage(
            "Mettre à jour les paramètres"),
        "uploadNewPhotos": MessageLookupByLibrary.simpleMessage(
            "Télécharger de nouvelles photos"),
        "userBlocked":
            MessageLookupByLibrary.simpleMessage("Utilisateur bloqué"),
        "userHasBeenReportedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "L\'utilisateur a été signalé avec succès"),
        "username": MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
        "version": MessageLookupByLibrary.simpleMessage("Version"),
        "walletBalanceCredits": m7,
        "welcome":
            MessageLookupByLibrary.simpleMessage("Bienvenue sur Abaan Apps!"),
        "welcomeSmallMessage":
            MessageLookupByLibrary.simpleMessage("Votre voyage commence ici."),
        "workStatus":
            MessageLookupByLibrary.simpleMessage("Statut professionnel"),
        "yes": MessageLookupByLibrary.simpleMessage("Oui"),
        "yesDelete": MessageLookupByLibrary.simpleMessage("Oui, supprimer"),
        "youArePremiumUser": MessageLookupByLibrary.simpleMessage(
            "Vous êtes un utilisateur Premium"),
        "youCanAcceptOrDenyUserMessageRequest":
            MessageLookupByLibrary.simpleMessage(
                "Vous pouvez accepter ou refuser la demande de message de l\'utilisateur."),
        "youHaveAlreadyDeclinedUserMessageRequest":
            MessageLookupByLibrary.simpleMessage(
                "Vous avez déjà refusé la demande de message de l\'utilisateur"),
        "youWantToDeleteThisImage": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous supprimer cette image?"),
        "youWantToPurchaseThisStickerItWillCostYou": m8,
        "yourBasicInformationFormWillComeHere":
            MessageLookupByLibrary.simpleMessage(
                "Votre formulaire d\'informations de base apparaîtra ici"),
        "yourDailyLimitForEncountersMayExceedOrThereAre":
            MessageLookupByLibrary.simpleMessage(
                "Votre limite quotidienne de rencontres peut être dépassée ou il n\'y a pas d\'utilisateurs disponibles."),
        "yourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Votre adresse email"),
        "yourProfileIsBoostedFor": MessageLookupByLibrary.simpleMessage(
            "Votre profil est boosté pour"),
        "yourWalletBalance":
            MessageLookupByLibrary.simpleMessage("Solde de votre portefeuille")
      };
}
