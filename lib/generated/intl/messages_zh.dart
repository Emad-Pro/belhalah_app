// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(booster_price, booster_period) =>
      "通过提升您的资料，您将成为特色用户，并在搜索和随机用户中优先显示。即刻提升需支付 ${booster_price} 积分，有效时长 ${booster_period} 分钟。";

  static String m1(credits) => "${credits} 积分";

  static String m2(distanceUnit) => "距离我的位置 (${distanceUnit})";

  static String m3(error) => "错误: ${error}";

  static String m4(price) => "${price} 积分";

  static String m5(notFoundedProducts) => "未找到${notFoundedProducts}";

  static String m6(localUserProfileItemName) =>
      "向 ${localUserProfileItemName} 发送礼物";

  static String m7(walletBalance) => "${walletBalance} 积分";

  static String m8(stickerFormattedPrice) =>
      "您要购买此贴纸吗？将花费您 ${stickerFormattedPrice}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutMe": MessageLookupByLibrary.simpleMessage("关于我"),
        "aboutUs": MessageLookupByLibrary.simpleMessage("关于我们"),
        "abuseReport": MessageLookupByLibrary.simpleMessage("滥用报告"),
        "accountCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("账户创建成功"),
        "activateYourNewEmailAddress":
            MessageLookupByLibrary.simpleMessage("激活您的新电子邮件地址"),
        "alert": MessageLookupByLibrary.simpleMessage("警报"),
        "all": MessageLookupByLibrary.simpleMessage("全部"),
        "allContentIncludingPhotosAndOtherDataWillBePermanently":
            MessageLookupByLibrary.simpleMessage("所有内容（包括照片和其他数据）将被永久删除！"),
        "almostFinishedYouNeedToConfirmYourEmailAddressTo":
            MessageLookupByLibrary.simpleMessage(
                "几乎完成... 您需要确认您的电子邮件地址。请点击我们刚发送给您的电子邮件中的链接，以完成激活过程。"),
        "amount": MessageLookupByLibrary.simpleMessage("金额"),
        "and": MessageLookupByLibrary.simpleMessage("和"),
        "apply": MessageLookupByLibrary.simpleMessage("应用"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("您确定吗？"),
        "basic": MessageLookupByLibrary.simpleMessage("基本"),
        "basicInformation": MessageLookupByLibrary.simpleMessage("基本信息"),
        "bePremium": MessageLookupByLibrary.simpleMessage("成为高级用户"),
        "bePremiumNow": MessageLookupByLibrary.simpleMessage("立即成为高级用户"),
        "birthday": MessageLookupByLibrary.simpleMessage("生日"),
        "block": MessageLookupByLibrary.simpleMessage("屏蔽"),
        "boostAgain": MessageLookupByLibrary.simpleMessage("再次提升"),
        "boostMyProfile": MessageLookupByLibrary.simpleMessage("提升我的资料"),
        "buyCredits": MessageLookupByLibrary.simpleMessage("购买积分"),
        "buyMoreCredits": MessageLookupByLibrary.simpleMessage("购买更多积分"),
        "byBoostingYourProfileYouWillBeAPartOf": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "changeEmail": MessageLookupByLibrary.simpleMessage("更改电子邮件"),
        "changePassword": MessageLookupByLibrary.simpleMessage("更改密码"),
        "checkOut": MessageLookupByLibrary.simpleMessage("结账"),
        "confirmNewPassword": MessageLookupByLibrary.simpleMessage("确认新密码"),
        "confirmPassword": MessageLookupByLibrary.simpleMessage("确认密码"),
        "countryPhoneCode": MessageLookupByLibrary.simpleMessage("国家电话代码"),
        "creditPackages": MessageLookupByLibrary.simpleMessage("积分套餐"),
        "creditsCredits": m1,
        "currentEmail": MessageLookupByLibrary.simpleMessage("当前电子邮件"),
        "customerInformation": MessageLookupByLibrary.simpleMessage("客户信息"),
        "customerName": MessageLookupByLibrary.simpleMessage("客户姓名"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("删除账户"),
        "deleteAllChatHistory":
            MessageLookupByLibrary.simpleMessage("删除所有聊天记录"),
        "displayMobileNumber": MessageLookupByLibrary.simpleMessage("显示手机号码"),
        "distanceFromMyLocationDistanceUnit": m2,
        "doYouWantToDeleteAllTheChatMessageOf":
            MessageLookupByLibrary.simpleMessage("您是否要删除此用户的所有聊天消息？"),
        "education": MessageLookupByLibrary.simpleMessage("教育"),
        "email": MessageLookupByLibrary.simpleMessage("电子邮件"),
        "emailOrUsername": MessageLookupByLibrary.simpleMessage("电子邮件或用户名"),
        "emailOtp": MessageLookupByLibrary.simpleMessage("电子邮件 OTP"),
        "encounter": MessageLookupByLibrary.simpleMessage("遇见"),
        "endOfResult": MessageLookupByLibrary.simpleMessage("结果结束"),
        "english": MessageLookupByLibrary.simpleMessage("英语"),
        "error": MessageLookupByLibrary.simpleMessage("错误..."),
        "errorError": m3,
        "extendPremiumMembership":
            MessageLookupByLibrary.simpleMessage("延长高级会员"),
        "failed": MessageLookupByLibrary.simpleMessage("失败"),
        "failedToInitialize": MessageLookupByLibrary.simpleMessage("初始化失败"),
        "fetchingConsumables":
            MessageLookupByLibrary.simpleMessage("获取消耗品中..."),
        "fetchingProducts": MessageLookupByLibrary.simpleMessage("获取产品中..."),
        "financialTransaction": MessageLookupByLibrary.simpleMessage("财务交易"),
        "find": MessageLookupByLibrary.simpleMessage("查找"),
        "firstName": MessageLookupByLibrary.simpleMessage("名字"),
        "forgotPassword": MessageLookupByLibrary.simpleMessage("忘记密码？"),
        "french": MessageLookupByLibrary.simpleMessage("法语"),
        "gender": MessageLookupByLibrary.simpleMessage("性别"),
        "gift": MessageLookupByLibrary.simpleMessage("礼物"),
        "goBack": MessageLookupByLibrary.simpleMessage("返回"),
        "goHome": MessageLookupByLibrary.simpleMessage("返回首页"),
        "goToLoginNow": MessageLookupByLibrary.simpleMessage("立即登录"),
        "helloWorld": MessageLookupByLibrary.simpleMessage("你好，世界！"),
        "home": MessageLookupByLibrary.simpleMessage("主页"),
        "iAcceptAllThe": MessageLookupByLibrary.simpleMessage("我接受所有"),
        "itemPriceCredits": m4,
        "kWD": MessageLookupByLibrary.simpleMessage("KWD"),
        "language": MessageLookupByLibrary.simpleMessage("语言"),
        "lastName": MessageLookupByLibrary.simpleMessage("姓氏"),
        "letsGo": MessageLookupByLibrary.simpleMessage("走吧"),
        "loading": MessageLookupByLibrary.simpleMessage("加载中..."),
        "loadingMessages": MessageLookupByLibrary.simpleMessage("正在加载消息..."),
        "location": MessageLookupByLibrary.simpleMessage("位置"),
        "login": MessageLookupByLibrary.simpleMessage("登录"),
        "lookingFor": MessageLookupByLibrary.simpleMessage("寻找"),
        "maximumAge": MessageLookupByLibrary.simpleMessage("最大年龄"),
        "maximumHeight": MessageLookupByLibrary.simpleMessage("最大身高"),
        "menuBlockedUsers": MessageLookupByLibrary.simpleMessage("已屏蔽用户"),
        "menuChangeEmail": MessageLookupByLibrary.simpleMessage("更改电子邮件"),
        "menuChangePassword": MessageLookupByLibrary.simpleMessage("更改密码"),
        "menuCreditWallet": MessageLookupByLibrary.simpleMessage("信用钱包"),
        "menuFeaturedUsers": MessageLookupByLibrary.simpleMessage("特色用户"),
        "menuLogout": MessageLookupByLibrary.simpleMessage("登出"),
        "menuMutualLikes": MessageLookupByLibrary.simpleMessage("互相喜欢"),
        "menuMyDislikes": MessageLookupByLibrary.simpleMessage("我的不喜欢"),
        "menuMyLikes": MessageLookupByLibrary.simpleMessage("我的喜欢"),
        "menuRandomUsers": MessageLookupByLibrary.simpleMessage("随机用户"),
        "menuSettings": MessageLookupByLibrary.simpleMessage("设置"),
        "menuVisitors": MessageLookupByLibrary.simpleMessage("访客"),
        "menuWhoLikesMe": MessageLookupByLibrary.simpleMessage("谁喜欢我"),
        "messenger": MessageLookupByLibrary.simpleMessage("信使"),
        "minimumAge": MessageLookupByLibrary.simpleMessage("最小年龄"),
        "minimumHeight": MessageLookupByLibrary.simpleMessage("最小身高"),
        "mobile": MessageLookupByLibrary.simpleMessage("手机"),
        "mobileNumber": MessageLookupByLibrary.simpleMessage("手机号码"),
        "myCreditWallet": MessageLookupByLibrary.simpleMessage("我的积分钱包"),
        "myPhotos": MessageLookupByLibrary.simpleMessage("我的照片"),
        "myProfile": MessageLookupByLibrary.simpleMessage("我的资料"),
        "myProfileUpdate": MessageLookupByLibrary.simpleMessage("我的资料更新"),
        "name": MessageLookupByLibrary.simpleMessage("姓名"),
        "newEmail": MessageLookupByLibrary.simpleMessage("新电子邮件"),
        "newPassword": MessageLookupByLibrary.simpleMessage("新密码"),
        "no": MessageLookupByLibrary.simpleMessage("否"),
        "noResultFound": MessageLookupByLibrary.simpleMessage("未找到结果"),
        "notConnected": MessageLookupByLibrary.simpleMessage("未连接"),
        "notFoundedProductsNotFound": m5,
        "notifications": MessageLookupByLibrary.simpleMessage("通知"),
        "ok": MessageLookupByLibrary.simpleMessage("确认"),
        "on": MessageLookupByLibrary.simpleMessage("在"),
        "orderID": MessageLookupByLibrary.simpleMessage("订单 ID"),
        "orderReference": MessageLookupByLibrary.simpleMessage("订单参考"),
        "packageNotFound": MessageLookupByLibrary.simpleMessage("未找到套餐"),
        "paidOn": MessageLookupByLibrary.simpleMessage("支付日期"),
        "password": MessageLookupByLibrary.simpleMessage("密码"),
        "paymentCancelledByUser":
            MessageLookupByLibrary.simpleMessage("用户已取消付款。"),
        "paymentDetails": MessageLookupByLibrary.simpleMessage("支付详情"),
        "paymentMethod": MessageLookupByLibrary.simpleMessage("支付方式"),
        "personal": MessageLookupByLibrary.simpleMessage("个人"),
        "pleaseSelectAPlan": MessageLookupByLibrary.simpleMessage("请选择一个计划"),
        "preferredLanguage": MessageLookupByLibrary.simpleMessage("首选语言"),
        "premium": MessageLookupByLibrary.simpleMessage("高级"),
        "premiumMembershipExpiry":
            MessageLookupByLibrary.simpleMessage("高级会员到期"),
        "price": MessageLookupByLibrary.simpleMessage("价格"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("隐私政策"),
        "privately": MessageLookupByLibrary.simpleMessage("私下"),
        "profileCoverPhoto": MessageLookupByLibrary.simpleMessage("个人封面照片"),
        "profilePhoto": MessageLookupByLibrary.simpleMessage("个人照片"),
        "purchaseCredits": MessageLookupByLibrary.simpleMessage("购买积分"),
        "reason": MessageLookupByLibrary.simpleMessage("原因"),
        "register": MessageLookupByLibrary.simpleMessage("注册"),
        "relationshipStatus": MessageLookupByLibrary.simpleMessage("关系状态"),
        "report": MessageLookupByLibrary.simpleMessage("举报"),
        "reportAbuse": MessageLookupByLibrary.simpleMessage("举报滥用"),
        "reportUser": MessageLookupByLibrary.simpleMessage("举报用户"),
        "requestDenied": MessageLookupByLibrary.simpleMessage("请求被拒绝"),
        "resultCode": MessageLookupByLibrary.simpleMessage("结果代码"),
        "selectCountryCode": MessageLookupByLibrary.simpleMessage("选择国家代码"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("选择语言"),
        "selectPlan": MessageLookupByLibrary.simpleMessage("选择计划"),
        "send": MessageLookupByLibrary.simpleMessage("发送"),
        "sendAGift": MessageLookupByLibrary.simpleMessage("发送礼物"),
        "sendEmailOtp": MessageLookupByLibrary.simpleMessage("发送电子邮件 OTP"),
        "sendGiftToLocalUserProfileItemName": m6,
        "settings": MessageLookupByLibrary.simpleMessage("设置"),
        "showGiftsNotifications":
            MessageLookupByLibrary.simpleMessage("显示礼物通知"),
        "showLikesNotifications":
            MessageLookupByLibrary.simpleMessage("显示喜欢的通知"),
        "showLoginNotificationsForYourLikedUsers":
            MessageLookupByLibrary.simpleMessage("显示喜欢的用户的登录通知"),
        "showMessagesNotifications":
            MessageLookupByLibrary.simpleMessage("显示消息通知"),
        "showVisitorNotifications":
            MessageLookupByLibrary.simpleMessage("显示访客通知"),
        "signIn": MessageLookupByLibrary.simpleMessage("登录"),
        "signInWithFacebook":
            MessageLookupByLibrary.simpleMessage("使用 Facebook 登录"),
        "signInWithGoogle":
            MessageLookupByLibrary.simpleMessage("使用 Google 登录"),
        "submit": MessageLookupByLibrary.simpleMessage("提交"),
        "termsConditions": MessageLookupByLibrary.simpleMessage("条款和条件"),
        "thereAreNoResultsToShow":
            MessageLookupByLibrary.simpleMessage("没有可显示的结果。"),
        "thisIsAPremiumFeatureToViewThisYouNeed":
            MessageLookupByLibrary.simpleMessage("这是高级功能，您需要先购买高级套餐才能查看。"),
        "totalLikes": MessageLookupByLibrary.simpleMessage("总喜欢"),
        "totalViews": MessageLookupByLibrary.simpleMessage("总浏览"),
        "transaction": MessageLookupByLibrary.simpleMessage("交易"),
        "transactionInformation": MessageLookupByLibrary.simpleMessage("交易信息"),
        "tryingToConnect": MessageLookupByLibrary.simpleMessage("尝试连接中..."),
        "unblock": MessageLookupByLibrary.simpleMessage("解除屏蔽"),
        "updatePhoto": MessageLookupByLibrary.simpleMessage("更新照片"),
        "updateSettings": MessageLookupByLibrary.simpleMessage("更新设置"),
        "uploadNewPhotos": MessageLookupByLibrary.simpleMessage("上传新照片"),
        "userBlocked": MessageLookupByLibrary.simpleMessage("用户已屏蔽"),
        "userHasBeenReportedSuccessfully":
            MessageLookupByLibrary.simpleMessage("用户已成功举报"),
        "username": MessageLookupByLibrary.simpleMessage("用户名"),
        "version": MessageLookupByLibrary.simpleMessage("版本"),
        "walletBalanceCredits": m7,
        "welcome": MessageLookupByLibrary.simpleMessage("最期待的约会应用来啦！"),
        "welcomeSmallMessage": MessageLookupByLibrary.simpleMessage("约会不必太难。"),
        "workStatus": MessageLookupByLibrary.simpleMessage("工作状态"),
        "yes": MessageLookupByLibrary.simpleMessage("是"),
        "yesDelete": MessageLookupByLibrary.simpleMessage("是，删除"),
        "youArePremiumUser": MessageLookupByLibrary.simpleMessage("您是高级用户"),
        "youCanAcceptOrDenyUserMessageRequest":
            MessageLookupByLibrary.simpleMessage("您可以接受或拒绝用户的消息请求。"),
        "youHaveAlreadyDeclinedUserMessageRequest":
            MessageLookupByLibrary.simpleMessage("您已经拒绝了用户的消息请求"),
        "youWantToDeleteThisImage":
            MessageLookupByLibrary.simpleMessage("您确定要删除这张照片吗？"),
        "youWantToPurchaseThisStickerItWillCostYou": m8,
        "yourBasicInformationFormWillComeHere":
            MessageLookupByLibrary.simpleMessage("您的基本信息表单将显示在这里"),
        "yourDailyLimitForEncountersMayExceedOrThereAre":
            MessageLookupByLibrary.simpleMessage("您的每日约会上限可能已超出或没有用户展示。"),
        "yourEmailAddress": MessageLookupByLibrary.simpleMessage("您的电子邮件地址"),
        "yourProfileIsBoostedFor":
            MessageLookupByLibrary.simpleMessage("您的资料已提升"),
        "yourWalletBalance": MessageLookupByLibrary.simpleMessage("您的钱包余额")
      };
}
