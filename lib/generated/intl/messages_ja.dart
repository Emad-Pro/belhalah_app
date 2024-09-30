// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(booster_price, booster_period) =>
      "プロフィールをブーストすることで、注目ユーザーになり、検索やランダムユーザーで優先されます。即時${booster_period}分の間、${booster_price}クレジットがかかります。";

  static String m1(credits) => "${credits} クレジット";

  static String m2(distanceUnit) => "私の位置からの距離 (${distanceUnit})";

  static String m3(error) => "エラー: ${error}";

  static String m4(price) => "${price} クレジット";

  static String m5(notFoundedProducts) => "${notFoundedProducts} が見つかりません";

  static String m6(localUserProfileItemName) =>
      "${localUserProfileItemName} にギフトを送る";

  static String m7(walletBalance) => "${walletBalance} クレジット";

  static String m8(stickerFormattedPrice) =>
      "このステッカーを購入しますか？ それは ${stickerFormattedPrice} かかります";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutMe": MessageLookupByLibrary.simpleMessage("自己紹介"),
        "aboutUs": MessageLookupByLibrary.simpleMessage("私たちについて"),
        "abuseReport": MessageLookupByLibrary.simpleMessage("虐待報告"),
        "accountCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("アカウントが正常に作成されました"),
        "activateYourNewEmailAddress":
            MessageLookupByLibrary.simpleMessage("新しいメールアドレスを有効化する"),
        "alert": MessageLookupByLibrary.simpleMessage("警告"),
        "all": MessageLookupByLibrary.simpleMessage("すべて"),
        "allContentIncludingPhotosAndOtherDataWillBePermanently":
            MessageLookupByLibrary.simpleMessage(
                "写真やその他のデータを含むすべてのコンテンツは永久に削除されます！"),
        "almostFinishedYouNeedToConfirmYourEmailAddressTo":
            MessageLookupByLibrary.simpleMessage(
                "もうすぐ終了します... メールアドレスを確認する必要があります。アクティベーションプロセスを完了するには、私たちが送ったメール内のリンクをクリックしてください。"),
        "amount": MessageLookupByLibrary.simpleMessage("金額"),
        "and": MessageLookupByLibrary.simpleMessage(" および "),
        "apply": MessageLookupByLibrary.simpleMessage("適用"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("本当によろしいですか？"),
        "basic": MessageLookupByLibrary.simpleMessage("基本"),
        "basicInformation": MessageLookupByLibrary.simpleMessage("基本情報"),
        "bePremium": MessageLookupByLibrary.simpleMessage("プレミアムになる"),
        "bePremiumNow": MessageLookupByLibrary.simpleMessage("今すぐプレミアムになる"),
        "birthday": MessageLookupByLibrary.simpleMessage("誕生日"),
        "block": MessageLookupByLibrary.simpleMessage("ブロック"),
        "boostAgain": MessageLookupByLibrary.simpleMessage("再度ブースト"),
        "boostMyProfile": MessageLookupByLibrary.simpleMessage("プロフィールをブースト"),
        "buyCredits": MessageLookupByLibrary.simpleMessage("クレジットを購入"),
        "buyMoreCredits": MessageLookupByLibrary.simpleMessage("さらにクレジットを購入"),
        "byBoostingYourProfileYouWillBeAPartOf": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "changeEmail": MessageLookupByLibrary.simpleMessage("メールアドレスの変更"),
        "changePassword": MessageLookupByLibrary.simpleMessage("パスワードの変更"),
        "checkOut": MessageLookupByLibrary.simpleMessage("チェックアウト"),
        "confirmNewPassword":
            MessageLookupByLibrary.simpleMessage("新しいパスワードを確認"),
        "confirmPassword": MessageLookupByLibrary.simpleMessage("パスワードを確認する"),
        "countryPhoneCode": MessageLookupByLibrary.simpleMessage("国の電話コード"),
        "creditPackages": MessageLookupByLibrary.simpleMessage("クレジットパッケージ"),
        "creditsCredits": m1,
        "currentEmail": MessageLookupByLibrary.simpleMessage("現在のメールアドレス"),
        "customerInformation": MessageLookupByLibrary.simpleMessage("顧客情報"),
        "customerName": MessageLookupByLibrary.simpleMessage("顧客名"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("アカウントを削除する"),
        "deleteAllChatHistory":
            MessageLookupByLibrary.simpleMessage("すべてのチャット履歴を削除する"),
        "displayMobileNumber":
            MessageLookupByLibrary.simpleMessage("携帯番号を表示する"),
        "distanceFromMyLocationDistanceUnit": m2,
        "doYouWantToDeleteAllTheChatMessageOf":
            MessageLookupByLibrary.simpleMessage(
                "このユーザーのすべてのチャットメッセージを削除しますか？"),
        "education": MessageLookupByLibrary.simpleMessage("学歴"),
        "email": MessageLookupByLibrary.simpleMessage("メール"),
        "emailOrUsername":
            MessageLookupByLibrary.simpleMessage("メールアドレスまたはユーザー名"),
        "emailOtp": MessageLookupByLibrary.simpleMessage("メールOTP"),
        "encounter": MessageLookupByLibrary.simpleMessage("エンカウンター"),
        "endOfResult": MessageLookupByLibrary.simpleMessage("結果の終わり"),
        "english": MessageLookupByLibrary.simpleMessage("英語"),
        "error": MessageLookupByLibrary.simpleMessage("エラー..."),
        "errorError": m3,
        "extendPremiumMembership":
            MessageLookupByLibrary.simpleMessage("プレミアム会員資格を延長"),
        "failed": MessageLookupByLibrary.simpleMessage("失敗しました"),
        "failedToInitialize":
            MessageLookupByLibrary.simpleMessage("初期化に失敗しました"),
        "fetchingConsumables":
            MessageLookupByLibrary.simpleMessage("消耗品を取得中..."),
        "fetchingProducts": MessageLookupByLibrary.simpleMessage("製品を取得中..."),
        "financialTransaction": MessageLookupByLibrary.simpleMessage("金融取引"),
        "find": MessageLookupByLibrary.simpleMessage("探す"),
        "firstName": MessageLookupByLibrary.simpleMessage("名"),
        "forgotPassword": MessageLookupByLibrary.simpleMessage("パスワードを忘れた場合"),
        "french": MessageLookupByLibrary.simpleMessage("フランス語"),
        "gender": MessageLookupByLibrary.simpleMessage("性別"),
        "gift": MessageLookupByLibrary.simpleMessage("ギフト"),
        "goBack": MessageLookupByLibrary.simpleMessage("戻る"),
        "goHome": MessageLookupByLibrary.simpleMessage("ホームに戻る"),
        "goToLoginNow": MessageLookupByLibrary.simpleMessage("今すぐログインに移動"),
        "helloWorld": MessageLookupByLibrary.simpleMessage("こんにちは、世界！"),
        "home": MessageLookupByLibrary.simpleMessage("ホーム"),
        "iAcceptAllThe": MessageLookupByLibrary.simpleMessage("私はすべてを受け入れます"),
        "itemPriceCredits": m4,
        "kWD": MessageLookupByLibrary.simpleMessage("KWD"),
        "language": MessageLookupByLibrary.simpleMessage("言語"),
        "lastName": MessageLookupByLibrary.simpleMessage("姓"),
        "letsGo": MessageLookupByLibrary.simpleMessage("さあ、始めましょう"),
        "loading": MessageLookupByLibrary.simpleMessage("読み込み中..."),
        "loadingMessages":
            MessageLookupByLibrary.simpleMessage("メッセージを読み込んでいます..."),
        "location": MessageLookupByLibrary.simpleMessage("場所"),
        "login": MessageLookupByLibrary.simpleMessage("ログイン"),
        "lookingFor": MessageLookupByLibrary.simpleMessage("探しているもの"),
        "maximumAge": MessageLookupByLibrary.simpleMessage("最高年齢"),
        "maximumHeight": MessageLookupByLibrary.simpleMessage("最高身長"),
        "menuBlockedUsers": MessageLookupByLibrary.simpleMessage("ブロックユーザー"),
        "menuChangeEmail": MessageLookupByLibrary.simpleMessage("メールアドレス変更"),
        "menuChangePassword": MessageLookupByLibrary.simpleMessage("パスワード変更"),
        "menuCreditWallet": MessageLookupByLibrary.simpleMessage("クレジットウォレット"),
        "menuFeaturedUsers": MessageLookupByLibrary.simpleMessage("注目ユーザー"),
        "menuLogout": MessageLookupByLibrary.simpleMessage("ログアウト"),
        "menuMutualLikes": MessageLookupByLibrary.simpleMessage("相互いいね！"),
        "menuMyDislikes": MessageLookupByLibrary.simpleMessage("私の嫌いな人"),
        "menuMyLikes": MessageLookupByLibrary.simpleMessage("私のいいね！"),
        "menuRandomUsers": MessageLookupByLibrary.simpleMessage("ランダムユーザー"),
        "menuSettings": MessageLookupByLibrary.simpleMessage("設定"),
        "menuVisitors": MessageLookupByLibrary.simpleMessage("訪問者"),
        "menuWhoLikesMe": MessageLookupByLibrary.simpleMessage("私をいいねした人"),
        "messenger": MessageLookupByLibrary.simpleMessage("メッセンジャー"),
        "minimumAge": MessageLookupByLibrary.simpleMessage("最低年齢"),
        "minimumHeight": MessageLookupByLibrary.simpleMessage("最低身長"),
        "mobile": MessageLookupByLibrary.simpleMessage("携帯電話"),
        "mobileNumber": MessageLookupByLibrary.simpleMessage("携帯電話番号"),
        "myCreditWallet": MessageLookupByLibrary.simpleMessage("私のクレジットウォレット"),
        "myPhotos": MessageLookupByLibrary.simpleMessage("私の写真"),
        "myProfile": MessageLookupByLibrary.simpleMessage("マイプロフィール"),
        "myProfileUpdate": MessageLookupByLibrary.simpleMessage("マイプロフィール更新"),
        "name": MessageLookupByLibrary.simpleMessage("名前"),
        "newEmail": MessageLookupByLibrary.simpleMessage("新しいメールアドレス"),
        "newPassword": MessageLookupByLibrary.simpleMessage("新しいパスワード"),
        "no": MessageLookupByLibrary.simpleMessage("いいえ"),
        "noResultFound": MessageLookupByLibrary.simpleMessage("結果が見つかりません"),
        "notConnected": MessageLookupByLibrary.simpleMessage("接続されていません"),
        "notFoundedProductsNotFound": m5,
        "notifications": MessageLookupByLibrary.simpleMessage("通知"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "on": MessageLookupByLibrary.simpleMessage("で"),
        "orderID": MessageLookupByLibrary.simpleMessage("注文ID"),
        "orderReference": MessageLookupByLibrary.simpleMessage("注文参照"),
        "packageNotFound":
            MessageLookupByLibrary.simpleMessage("パッケージが見つかりません"),
        "paidOn": MessageLookupByLibrary.simpleMessage("支払い日"),
        "password": MessageLookupByLibrary.simpleMessage("パスワード"),
        "paymentCancelledByUser":
            MessageLookupByLibrary.simpleMessage("ユーザーによって支払いがキャンセルされました。"),
        "paymentDetails": MessageLookupByLibrary.simpleMessage("支払いの詳細"),
        "paymentMethod": MessageLookupByLibrary.simpleMessage("支払い方法"),
        "personal": MessageLookupByLibrary.simpleMessage("個人的"),
        "pleaseSelectAPlan":
            MessageLookupByLibrary.simpleMessage("プランを選択してください"),
        "preferredLanguage": MessageLookupByLibrary.simpleMessage("希望言語"),
        "premium": MessageLookupByLibrary.simpleMessage("プレミアム"),
        "premiumMembershipExpiry":
            MessageLookupByLibrary.simpleMessage("プレミアム会員資格の有効期限"),
        "price": MessageLookupByLibrary.simpleMessage("価格"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("プライバシーポリシー"),
        "privately": MessageLookupByLibrary.simpleMessage("個人的に"),
        "profileCoverPhoto":
            MessageLookupByLibrary.simpleMessage("プロフィールカバー写真"),
        "profilePhoto": MessageLookupByLibrary.simpleMessage("プロフィール写真"),
        "purchaseCredits": MessageLookupByLibrary.simpleMessage("クレジットを購入"),
        "reason": MessageLookupByLibrary.simpleMessage("理由"),
        "register": MessageLookupByLibrary.simpleMessage("登録"),
        "relationshipStatus": MessageLookupByLibrary.simpleMessage("関係の状態"),
        "report": MessageLookupByLibrary.simpleMessage("報告する"),
        "reportAbuse": MessageLookupByLibrary.simpleMessage("虐待通報"),
        "reportUser": MessageLookupByLibrary.simpleMessage("ユーザーを報告する"),
        "requestDenied": MessageLookupByLibrary.simpleMessage("リクエストが拒否されました"),
        "resultCode": MessageLookupByLibrary.simpleMessage("結果コード"),
        "selectCountryCode": MessageLookupByLibrary.simpleMessage("国コードを選択"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("言語を選択"),
        "selectPlan": MessageLookupByLibrary.simpleMessage("プランを選択"),
        "send": MessageLookupByLibrary.simpleMessage("送信"),
        "sendAGift": MessageLookupByLibrary.simpleMessage("ギフトを送る"),
        "sendEmailOtp": MessageLookupByLibrary.simpleMessage("メールOTPを送信"),
        "sendGiftToLocalUserProfileItemName": m6,
        "settings": MessageLookupByLibrary.simpleMessage("設定"),
        "showGiftsNotifications":
            MessageLookupByLibrary.simpleMessage("ギフト通知を表示する"),
        "showLikesNotifications":
            MessageLookupByLibrary.simpleMessage("いいね通知を表示する"),
        "showLoginNotificationsForYourLikedUsers":
            MessageLookupByLibrary.simpleMessage("好きなユーザーのログイン通知を表示する"),
        "showMessagesNotifications":
            MessageLookupByLibrary.simpleMessage("メッセージ通知を表示する"),
        "showVisitorNotifications":
            MessageLookupByLibrary.simpleMessage("訪問者通知を表示する"),
        "signIn": MessageLookupByLibrary.simpleMessage("サインイン"),
        "signInWithFacebook":
            MessageLookupByLibrary.simpleMessage("Facebookでサインイン"),
        "signInWithGoogle":
            MessageLookupByLibrary.simpleMessage("Googleでサインイン"),
        "submit": MessageLookupByLibrary.simpleMessage("送信する"),
        "termsConditions": MessageLookupByLibrary.simpleMessage("利用規約"),
        "thereAreNoResultsToShow":
            MessageLookupByLibrary.simpleMessage("結果がありません。"),
        "thisIsAPremiumFeatureToViewThisYouNeed":
            MessageLookupByLibrary.simpleMessage(
                "これはプレミアム機能です。これを表示するには、まずプレミアムプランを購入する必要があります。"),
        "totalLikes": MessageLookupByLibrary.simpleMessage("総いいね数"),
        "totalViews": MessageLookupByLibrary.simpleMessage("総閲覧数"),
        "transaction": MessageLookupByLibrary.simpleMessage("取引"),
        "transactionInformation": MessageLookupByLibrary.simpleMessage("取引情報"),
        "tryingToConnect": MessageLookupByLibrary.simpleMessage("接続を試行中..."),
        "unblock": MessageLookupByLibrary.simpleMessage("ブロック解除"),
        "updatePhoto": MessageLookupByLibrary.simpleMessage("写真を更新"),
        "updateSettings": MessageLookupByLibrary.simpleMessage("設定を更新する"),
        "uploadNewPhotos": MessageLookupByLibrary.simpleMessage("プロフィール写真"),
        "userBlocked": MessageLookupByLibrary.simpleMessage("ユーザーがブロックされました"),
        "userHasBeenReportedSuccessfully":
            MessageLookupByLibrary.simpleMessage("ユーザーは正常に報告されました"),
        "username": MessageLookupByLibrary.simpleMessage("ユーザー名"),
        "version": MessageLookupByLibrary.simpleMessage("バージョン"),
        "walletBalanceCredits": m7,
        "welcome": MessageLookupByLibrary.simpleMessage("待ちに待ったデートアプリが登場しました！"),
        "welcomeSmallMessage":
            MessageLookupByLibrary.simpleMessage("デートは難しいことではありません。"),
        "workStatus": MessageLookupByLibrary.simpleMessage("勤務状況"),
        "yes": MessageLookupByLibrary.simpleMessage("はい"),
        "yesDelete": MessageLookupByLibrary.simpleMessage("はい、削除する"),
        "youArePremiumUser":
            MessageLookupByLibrary.simpleMessage("プレミアムユーザーです"),
        "youCanAcceptOrDenyUserMessageRequest":
            MessageLookupByLibrary.simpleMessage(
                "ユーザーメッセージのリクエストを承諾または拒否できます。"),
        "youHaveAlreadyDeclinedUserMessageRequest":
            MessageLookupByLibrary.simpleMessage("すでにユーザーメッセージのリクエストを拒否しています"),
        "youWantToDeleteThisImage":
            MessageLookupByLibrary.simpleMessage("この画像を削除しますか？"),
        "youWantToPurchaseThisStickerItWillCostYou": m8,
        "yourBasicInformationFormWillComeHere":
            MessageLookupByLibrary.simpleMessage("ここに基本情報フォームが表示されます"),
        "yourDailyLimitForEncountersMayExceedOrThereAre":
            MessageLookupByLibrary.simpleMessage(
                "出会いの日々の制限が超過する可能性があります。または表示するユーザーがいません。"),
        "yourEmailAddress": MessageLookupByLibrary.simpleMessage("あなたのメールアドレス"),
        "yourProfileIsBoostedFor":
            MessageLookupByLibrary.simpleMessage("あなたのプロフィールはブーストされています"),
        "yourWalletBalance": MessageLookupByLibrary.simpleMessage("あなたのウォレット残高")
      };
}
