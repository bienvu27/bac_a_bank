import 'dart:io' show Platform;

// ignore: avoid_classes_with_only_static_members
class Constants {
  static const String ACCESS_TOKEN = "AccessToken"; //"access_token
  static const String COMPLETE_SPLASH = "CompleteSplash"; //"access_token
  static const String SERIAL_NO = "SerialNo";
  static const String EMAIL_DELETE = "EMAIL_DELETE";
  static const String LISTITEMHOMEPAGE = "LISTITEMHOMEPAGE";
  static const String EKYCLISTCREATEACCOUNT = "EKYCLISTCREATEACCOUNT";
  static const String EKYCLISTGETMONEY = "EKYCLISTGETMONEY";
  static const String USER_INFO = "userInfo";
  static const String MENU_HOME = "menuHome";
  static const String BIOMETRIC = "biometric";
  static const String REMEMBERPASS = "rememberPass";
  static const String USERNAME = "Username";
  static const String PASSWORD = "Password";
  static const String ID_USER_LAST = "id_user_last";
  static const String Avatar = "Avatar";
  static const String BACKGROUND = "background";
  static const String TOKEN = "Token";
  static const String VI = "vi";
  static const String EN = "en";
  static const String emailKey = "emailKey";
  static const String INTERNAL_BANK_LIST = "internalBankList";
  static const String FAST_TRANSFER_LIST = "fastTransferList";
  static const String INTER_BANK_LIST = "interBankList";
  static const String CARD_NO_BANK_LIST = "cardNoBankList";
  static const String ACCOUNT_BANK_LIST = "accountBankList";
  static const String CMT_BANK_LIST = "identityTransferList";
  static const String SECURITES_LIST = "securitiesServices";
  static const String THEME = 'themeApp';
  static final String PLATFORM = Platform.isAndroid ? 'android' : 'ios';
  // static String VERSION_APP = "2.3.4";

  static const PACKAGE_NAME = "com.bab.retailUAT";
  static const PACKAGE_ID = "1441408786";

  static String VERSION_APP = "";
  static final String BANK_CODE = "BABVLALAXXX";

  /// Mã ngân hàng

  static String SECURITY_TYPE_API = "";

  static int LENGHT_DESCRIPTION = 200;
  static int LENGHT_DESCRIPTION_EXTERNAL = 70;
  static int LENGHT_DESCRIPTION_210 = 210;
  static const FEE_TYPE_0 = '0';
  static const FEE_TYPE_1 = '1';

  static const HOLDER_WITH_OWNER = '1';
  static const HOLDER_DIFIFREEN_OWNER = '0';

  static const FONT_DEFAULT = 'Arial';

  // Mã module
  static const MODULE_ID_HOME = 10000;
  static const MODULE_ID_GENERAL = 2201;
  static const MODULE_ID_LOGOUT = 10009;
  static const MODULE_ID_ACCOUNT = 1001;
  static const MODULE_ID_TRANFERS = 2102;
  static const MODULE_ID_SETTING = 10008;
  static const MODULE_ID_EXTENSION = 2111;
  static const MODULE_ID_SMARTOTP = 10010;
  static const MODULE_ID_PAYMENT_BILL_AUTO = 210507;
  static const MODULE_ID_MANAGER_PAYMENT_BILL_AUTO = 210517;
  static const MODULE_ID_CHECK_FEE = 210502;
  static const MODULE_ID_RECHARGE_VERIFY = 210502;
  static const MODULE_ID_SAVING = 2106;
  static const CODE_WATER_SERVICE = "WT,PO";
  static const CODE_ELECTRIC_SERVICE = "EL,PO";
  static const CODE_TICKET_SERVICE = "TRAIN,PO";

  static const MODULE_ID_TRANFERS_210202 = '210202';
  static const MODULE_ID_TRANSFER_210214 = '210214';

  static const MODULE_ID_PAYMENT_BILL_210501 = '210501';
  static const MODULE_ID_RECHARGE_210502 = '210502';
  static const MODULE_ID_ACTIVE_LOCK_CARD_210402 = '210402';
  static const MODULE_ID_RECHARGE_DATA_210500 = '210500';
  static const MODULE_ID_TRANFERS_SERVICE_TYPE = 'TR_I';
  static const MODULE_ID_TRANFERS_SERVICE_TYPE_TR_E = 'TR_E';
  static const MODULE_ID_TRANSFER_SERVICE_TYPE_TD = 'TD';
  static const MODULE_ID_PAYMENT_BILL_SERVICE_TYPE = 'BP';
  static const MODULE_ID_RECHARGE = 'RG';
  static const MODULE_ID_RECHARGE_DATA = 'DT';
  static const MODULE_ID_TRANFERS_FAST_SERVICE_TYPE = 'TF';
  static const MODULE_ID_FWP_SERVICE_TYPE = 'CS';
  static const MODULE_ID_TRANFERS_CMT_SERVICE_TYPE = 'TC';
  static const MODULE_ID_TRANFERS_210210 = '210210';
  static const MODULE_ID_TRANFERS_210212 = '210212';
  static const MODULE_ID_FWP_210608 = '210608';
  //  static const MODULE_ID_TRANFERS_210212 = '210212';
  static const MODULE_ID_SAVING_CREATE_210601 = '210601';
  static const MODULE_SERVICE_SAVING_CREATE = 'OS';
  static const MODULE_SERVICE_TYPE_SAVING_WITHDRAW = 'CS';
  static const MODULE_ID_SETTLEMENT_SAVING_210602 = '210602';
  // Tab title question
  static const QUESTION = "QUESTION";
  static const CONDITION = "CONDITION";

  // Status checkmodal
  static const DEFAULT = "DEFAULT";
  static const CAMERA = "CAMERA";
  static const LIBRARY = "LIBRARY";

  // trang thai van tay

  static const FINGERPRINT_Y = 'Y';
  static const FINGERPRINT_N = 'N';
  static const Y = 'Y';
  static const N = 'N';

  static const ACCOUNT_CA = 'CA';
  static const ACCOUNT_SA = 'SA';

  /// Trang thai qr code
  static const QR_TYPE_INTERNAL_TRANSFER = "TR01";
  static const QR_TYPE_EXTERNAL_TRANSFER = "TR02";
  static const QR_TYPE_NAPAS = "CKNP247";
  static const QR_TYPE_PAYMENT_BILL = "BP01";
  static const QR_TYPE_PAYMENT_PRODUCT = "BP02";
  static const QR_TYPE_PAYMENT_BILL_VNPAY = "BPVNP01";
  static const QR_TYPE_PAYMENT_PRODUCT_VNPAY = "BPVNP02";
  /* start mauld */
  // trạng thái thông báo
  static const NOTIFICATION_Y = 'Y';
  static const NOTIFICATION_N = 'N';

  // trạng thái thông báo nhắc nợ
  static const DEBT_NOTIFICATION_Y = 'Y';
  static const DEBT_NOTIFICATION_N = 'N';

  static const MAX_LENGTH_REMARK = 150;
  static const MAX_LENGTH_REMARK_LOAN_SAVING = 70;
  static const MAX_LENGTH_PHONE = 10;
  static const MAX_LENGTH_MONEY = 15;
  static const MAX_LENGTH_BENIFICAL = 20;
  static const MAX_LENGTH_PASSBOOK = 27;
  static const MAX_LENGTH_FWP = 19;

  // trạng thái tạm ngừng dịch vụ
  static const TYPE_SUSPEND_SERVICE_PERIOD = 'period';
  static const TYPE_SUSPEND_SERVICE_PERMANENT = 'permanent';
  // bảo hiểm
  static const TYPE_HEALTH_INSURANCE = 'HEALTH';
  static const TYPE_CANCER_INSURANCE = 'CANCER';
  static const TYPE_BRE_CANCER_INSURANCE = 'BRE_CANCER';
  static const TYPE_ACC_EXTEND_INSURANCE = 'ACC_EXTEND';
  static const TYPE_HEALTH_INSURANCE_SERVICE = 'HI';
  static const TYPE_CANCER_INSURANCE_SERVICE = 'CI';
  static const TYPE_BREAST_CANCER_INSURANCE_SERVICE = 'BI';
  static const TYPE_EXTENDED_ACCIDENT_INSURANCE_SERVICE = 'EI';
  static const TYPE_INSURANCE_PROMOTION_ACTIVE =
      "1"; // trạng thái khuyến mại hoạt động
  static const TYPE_INSURANCE_PROMOTION_INACTIVE =
      "0"; // trạng thái khuyến mại ngừng
  static const MODULE_HEALTH_INSURANCE_211001 = '211001'; // mã module
  static const MODULE_CANCER_INSURANCE_211002 = '211002';
  static const MODULE_BREAST_CANCER_INSURANCE_211003 = '211003';
  static const MODULE_EXTENDED_ACCIDENT_INSURANCE_211004 = '211004';
  static const MODULE_INSURANCE_DIARY_211009 = '211009';
  static const MODULE_INSURANCE_2110 = 2110;
  static const MODULE_REGISTER_DIGITAL_WALLET_210801 = '210801';
  static const SERVICE_TYPE_REGISTER_DIGITAL_WALLET = 'WR';
  static const MODULE_RECHARGE_DIGITAL_WALLET_210804 = '210804';
  static const SERVICE_TYPE_RECHARGE_DIGITAL_WALLET = 'WL';
  static const MODULE_CANCEL_DIGITAL_WALLET_210803 = '210803';
  static const MODULE_DIGITAL_WALLET_2108 = 2108;
  static const MODULE_SAVING_LOAN_210614 = '210614';
  static const GENDER_MALE = 'NAM';
  static const GENDER_FEMALE = 'NU';
  // bảo hiểm: mối quan hệ
  static const TYPE_SELF_RELATION = 'QH00000';
  static const TYPE_PARENT_RELATION = 'QH00001';
  static const TYPE_COUPLE_RELATION = 'QH00002';
  static const TYPE_BROTHER_RELATION = 'QH00003';
  static const TYPE_CHILD_RELATION = 'QH00007';
  // pdf quyền lợi bảo hiểm
  static const HEALTH_PDF =
      'https://portal.evbi.vn/TaiLieu/vbi_quyen_loi_bao_hiem_suc_khoe_vbicare.pdf';
  static const CANCER_PDF =
      'https://portal.evbi.vn/TaiLieu/vbi_quyen_loi_bao_hiem_ung_thu.pdf';
  static const BREAST_CANCER_PDF =
      'https://portal.evbi.vn/TaiLieu/vbi_quyen_loi_bao_hiem_ung_thu_vu.pdf';
  static const EXTENDED_ACCIDENT_PDF =
      'https://portal.evbi.vn/TaiLieu/vbi_quyen_loi_bao_hiem_atcn.pdf';
  // ví điện tử
  static const TYPE_DIGITAL_WALLET_SERVICE = 'WL';
  static const WALLET_CODE_AIR_PAY = 'AP';
  static const TYPE_WALLET_RECHARGE_CATEGORY = 'lstBillPaymentWalletRecharge';
  static const TYPE_WALLET_CATEGORY = 'lstCategoryWallet';
  static const TYPE_WALLET_MOBILE_CATEGORY = 'lstMobileUserWallet';
  // tiền gửi trực tuyến
  static const TYPE_TRANSACTION_OPEN_PASSBOOK =
      'OP'; // mở tài khoản tiền gửi trực tuyến
  static const TYPE_TRANSACTION_SETTLEMENT_PASSBOOK =
      'ST'; // tất toán tài khoản tiền gửi trực tuyến
  static const ORIGINAL_PARTIAL_WITHDRAWAL =
      'PW'; // rút gốc
  static const DEPOSITS_CONTRIBUTED =
      'AC'; // gửi góp
  static const CODE_HEALTH_INSURANCE = 'CN.6'; // mã nghiệp vụ bảo hiểm sức khỏe
  static const NSD_ACCOUNT = 'admin.bab@gmail.com'; // NSD cố định
  // tiền gửi online
  static const PERIOD_D = "D"; // kỳ hạn ngày
  static const PERIOD_M = "M"; // kỳ hạn tháng
  static const PERIOD_Y = "Y"; // kỳ hạn năm
  static const TERM_TYPE_D = "open-passbook.D"; // name kỳ hạn ngày theo server
  static const TERM_TYPE_M = "open-passbook.M"; // name kỳ hạn ngày theo server
  static const TERM_TYPE_Y = "open-passbook.Y"; // name kỳ hạn ngày theo server
  static const TABLE_INTEREST_RATE = "CBHTTL"; // bảng hình thức trả lãi
  static const INTEREST_RATE_END_PERIOD_ID = 3; // id hình thức trả lãi cuối kỳ
  static const TABLE_INTEREST = "CBHTDH"; // hình thức đáo hạn
  static const API_TYPE = "Q"; // kiểu api query
  static const API_TYPE_C = "C"; // kiểu api create
  static const API_TYPE_CREATE = "CREATE"; // kiểu api CREATE
  static const TRANSACTION_CHANEL_IB = "IB"; // kênh giao dịch internet banking
  static const TRANSACTION_CHANEL_MB = "MB"; // kênh giao dịch mobile banking
  static const LOAN_STATUS_ALL = ""; // tất cả khoản vay
  static const LOAN_STATUS_NEWR = "NEWR"; // khoản vay mới mở
  static const LOAN_STATUS_APRV = "APRV"; // khoản vay được duyệt
  static const LOAN_STATUS_DLTD = "DLTD"; // khoản vay đã hủy
  static const BANK_NO = 313; // id ngân hàng bắc á
  static const BANK_NO_STRING = '313'; // id ngân hàng bắc á
  static const SPECIAL_BANK_NO_STRING = '313,null'; // id ngân hàng bắc á
  static const OPEN_SAVING_PRODUCT_CODE =
      'BCVND'; // productCode trong sản phẩm tiền tiết kiệm
  static const CURRENCY_VND = 'VND';
  static const CURRENCY_USD = 'USD';
  static const MIN_DATE_TERM = 31; // kỳ hạn ngày vay tối thiểu
  static const MAX_DATE_TERM = 395;// kỳ hạn ngày vay tối đa
  static const NON_TERM_INTEREST_RATE = 'LSKKH';// lãi suất không kỳ hạn
  static const MATURIRY_FORM_ID_1 = '1'; // ID hình thức đáo hạn loại 1
  static const MATURIRY_FORM_ID_2 = '2'; // ID hình thức đáo hạn loại 2
  static const MATURIRY_FORM_ID_3 = '3'; // ID hình thức đáo hạn loại 3
  static const INTEREST_FORM_3 = '3'; // ID hình thức trả lãi cuối kỳ
  static const MIN_DATE_OLD = 60; // 60 ngày tuổi trong bảo hiểm
  static const MIN_YEAR_OLD = 18; // 18 tuổi trong bảo hiểm
  static const MAX_OLD = 65; // 65 tuổi trong bảo hiểm
  static const MAX_OLD_EXTENDED_ACCIDENT = 70; // 70 tuổi trong bảo hiểm tai nạn
  static const MIN_OLD_EXTENDED_ACCIDENT = 1; // 70 tuổi trong bảo hiểm tai nạn
  static const MAX_LENGTH_HEALTH_INFO_INPUT =
      500; // giới hạn chuỗi nhập trong phần bảo hiểm sức khỏe
  static const MAX_LENGTH_INPUT_200 = 200; // giới hạn chuỗi nhập
  static const MAX_LENGTH_INPUT_100 =
      100; // giới hạn chuỗi nhập trong phần bảo hiểm sức khỏe
  static const MAX_LENGTH_INPUT_12 = 12; // giới hạn chuỗi nhập
  static const MAX_LENGTH_INPUT_10 = 10; // giới hạn chuỗi nhập
  static const TIME_TO_LOGOUT =
      300000; // Thời gian tự thoát ra màn đăng nhập khi k dùng app millisecond
  static const MALE_KEY = 'M'; // key giới tính nam
  static const FAMALE_KEY = 'F'; // key giới tính nữ
  static const STATUS_INSURANCE_TRANSACTION_SUCC =
      'SUCC'; // trạng thái giao dịch bảo hiểm thành công
  static const STATUS_INSURANCE_TRANSACTION_FAIL =
      'FAIL'; // trạng thái giao dịch bảo hiểm không thành công
  static const STATUS_INSURANCE_TRANSACTION_SMNR =
      'SMNR'; // trạng thái giao dịch bảo hiểm chờ xử lý
  static const INSURANCE_TYPE_DIARY_HI =
      'Insurance_Health_Care'; // kiểu bảo hiểm sức khỏe trong nhật ký bảo hiểm
  static const INSURANCE_TYPE_DIARY_CI =
      'Insurance_Cancer'; // kiểu bảo hiểm ung thư trong nhật ký bảo hiểm
  static const INSURANCE_TYPE_DIARY_BI =
      'Insurance_Cancer_Breast'; // kiểu bảo hiểm ung thư vú trong nhật ký bảo hiểm
  static const INSURANCE_TYPE_DIARY_EI =
      'Insurance_Accident_Extend'; // kiểu bảo hiểm tai nạn mở rộng trong nhật ký bảo hiểm
  static const CERT_TYPE_CMND = "ID"; // giấy chứng minh nhân dân
  static const CERT_TYPE_CCCD = "CC"; // giấy căn cước công dân
  static const CERT_TYPE_PP = "PP"; // giấy hộ chiếu
  static const COUNT_DAYS_IN_15_YEARS = -5475; // số ngày trong 15 năm
  /* end mauld */

  /**
   *  start smart otp
   */

  static const APP_ID = "1";
  // static const URL_SERVE_SDK = "https://smartotp.baca-bank.vn/keypass.wsmobile/";
  static const URL_SERVE_SDK = "https://10.1.4.13:7979/keypass.wsmobile/";
  static const SUCCESS = "0";
  static const ACT_EXCEEDED_RETRY_COUNT_OF_5 = "89";
  static const DOAVTIVE = "doActive";
  static const DELETE_SMART_OTP = "deleteAllExistingTokens";
  static const DO_SYNC_TIME = "doSyncTime";
  static const LOGIN_PIN = "loginPin";
  static const GET_TRANSACTINO = "getCRotpWithTransactionInfo";
  static const SETPIN = "setPin";
  static const CHANGE_PIN = "changePin";
  // update SM,SO thanh công
  static const SUCCESS_AC00 = "AC00";

  static String LOGIN_SMART_CHANNELCODE = '';
   static String LINK_Smart_OtpHDSD = "https://ebanking.baca-bank.vn/IBSRetail/static/doc/HDSD PTXT Smart OTP KHCN - BAC A BANK.pdf";
  static String LINK_Note_Payment_Bill = "https://ebanking.baca-bank.vn/IBSRetail/static/images/img/PAYOO.pdf";
  static String LINK_term_stock = "https://ebanking.baca-bank.vn/IBSRetailPilot/static/doc/Dieu_kien_Dieu_khoan_mo_TKCK.pdf";
  static String LINK_TERM_EKYC = "https://ebanking.baca-bank.vn/IBSRetail/static/doc/Dieu_kien_Dieu_khoan_eKYC_BAB.pdf";
   /**
 *  end smart otp
 */



// lock 
 static int COUNTLOCKPIN = 5;

 static int TIMELOCK_1 = 15;
 static int TIMELOCK_2 = 30;
 static int TIMELOCK_FOREVER = 100;
 static String BLOCKED_MODULE = 'N';

 static int EKYC_EMAIL_TYPE = 1;// type check email dùng cho 2 kiểu đăng ký
 static int EKYC_PHONE_TYPE = 2;// type check sdt mở tài khoản thanh toán
 static int EKYC_ID_CARD_TYPE = 3;// type check cmt/cccd dùng cho 2 kiểu đăng ký
 static int EKYC_PHONE_SERVICE_TYPE = 4;// type check sdt đăng ký dịch vụ
 // static int EKYC_LOCK_OTP_TIMES = 5;// số lần nhập sai otp
 static int EKYC_OPEN_PAYMENT_ACCOUNT_TYPE = 1;// type mở tài khoản thanh toán
 static int EKYC_CHECK_CIF_NO = 1;// type check cif_no
 static int EKYC_CHECK_PAYMENT_ACCOUNT = 2;// type check payment_account
 static int TYPE_MAILBOX_VOLATILITY = 1;// type check payment_account
}
