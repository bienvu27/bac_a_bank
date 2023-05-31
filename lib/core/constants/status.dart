class StatusApi {
// Error

  static const String SERVE_RESPONSE_TEXT_ERROR500 = 'ERROR500';

//* TODO module login
  static const STATUS_LOGIN_AUTHENTICATION_AUTH00 = 'AUTH00';

  static const STATUS_LOGIN_AUTHENTICATION_AUTH01 = 'AUTH01';
  static const STATUS_LOGIN_AUTHORIZED_EXPIRE_WARNING = 'AUTH12';
  static const STATUS_LOGIN_AUTHORIZED_EXPIRED = 'AUTH09';
  static const STATUS_LOGIN_AUTHORIZED_FIRST = 'AUTH08';
  static const STATUS_LOGIN_AUTHORIZED_LOCKED = 'AUTH05';
  static const STATUS_LOGIN_AUTHORIZED_SWITCH_DEVICE = 'AUTH13';
  static const STATUS_LOGIN_LOCK_ACCOUNT = 'AUTH16';
  static const STATUS_LOGIN_AUTHORIZED_FAIL_OTP = 'OTP01';
  static const STATUS_LOGIN_AUTHORIZED_OLD_VERSION = 'AUTH15';
  static const STATUS_LOGIN_PFL000 = 'PFL000';
  static const STATUS_LOGIN_AUTH14 = 'AUTH14';
  static const STATUS_LOGIN_VERSION_UPFATE = "AUTH15";

// Nguyên
// Trạng thái số dư tài khoản
  static const STATUS_GET_ACCOUNT_BALANCE = "ACCB00";

// Trạng thái tên người thụ hưởng
  static const BENEF_ACCOUNT_NAME_INQUIRY = 'ACCN00';

  static const VERIFY_INTERNAL_TRANSFER_SUCCESSFULL = 'RTR00';

// Trạng thái truy vấn hạn mức giao dịch
  static const TRANSFER_LIMITED = 'TRLM00';

  // Trạng thái truy vấn danh sách dịch và nhà cung cấp (của chức năng nạp tiền) vụ thành công.
  static const INQUIRY_RECHARGE_SERVICE = 'SPL00';

  /**
   * Danh loc
   */

  // Acount

  static const STATUS_INVALID_REQUEST_PARAMETER_SECT07 = "SECT07";
  static const STATUS_SUCCESS = "ACCT00";
  static const CHANGE_PASSWORD_SUCCESSFULL = 'CPWD00';
  static const STATUS_INQUIRY_FX_RATE = 'FXRTR00';

  // Chuyển khoản
  static const STATUS_GET_ACCOUNT_NAPAS = 'NPS001';
  static const STATUS_GET_ACCOUNT_NAPAS_SUCCESS = 'smlquery00';
    static const VERIFY_EXTERNAL_TRANSFER_SUCCESSFULL = "ETR00";
    static const CMT_TRANSFER_SUCCESSFULL = "ITR00";
  /**
   * start mauld
   */
  static const STATUS_INQUIRY_USER_INFO = 'USRI00';
  static const STATUS_SUSPEND_SERVICE = 'SUSR00';
  static const STATUS_UPDATE_NOTIFICATION_SUCCESS = 'NTS000';
  static const STATUS_UPDATE_DEBT_NOTIFICATION_SUCCESS = 'NDR00';
  static const STATUS_UNIT_INSURANCE = 'INS003';
  static const STATUS_INSURANCE_PROMOTION = 'INS002';
  static const STATUS_INSURANCE_PACKAGE = 'INS001';
  static const RESPONSE_CODE_CREATE_HEALTH_INSURANCE = 'HI000';
  static const RESPONSE_CODE_CREATE_CANCER_INSURANCE = 'CI000';
  static const RESPONSE_CODE_CREATE_BREAST_CANCER_INSURANCE = 'BCI000';
  static const RESPONSE_CODE_CREATE_EXTEND_ACCIDENT_INSURANCE = 'BCI000';
  static const STATUS_IQUIRY_WALLET_LIST = 'SYS000';
  static const STATUS_IQUIRY_WALLET_CANCER_LIST = 'WALLET000';
  static const STATUS_SAVING_CREATE_VERIFY = 'RTR00';// dùng cho cả hủy ví điện tử và tạo tiền gửi trực tuyến
  static const STATUS_PARTIAL_WITHDRAWAL = 'RTR00';// tất toán từng phần tiền gửi trực tuyến bước 3
  static const GET_SAVING_VERIFY = 'SVI002';
  static const GET_SAVING_DIARY = "SVI005";
  static const LOAN_SAVING_INFO = "LSI001";
  static const SETTLEMENT_PASSBOOOK = "SVI004";
  static const STATUS_INSURANCE_DIARY = "GID000";
  static const GET_SAVING_SETTLEMENT = "SVI009";
  /**
   * end mauld
   */
  /**
   * Cường
   */
  static const STATUS_INQUIRY_RATE = "INRTR00";
  static const STATUS_SAVING_RATE = "SVI001";

  /**
   * Linh
   */
//Error
  static const LOGIN_SECTION_EXPIRED_SECT01 =
      "SECT01"; //HẾT HẠN PHIÊN ĐĂNG NHẬP
  static const ACCOUNT_NOT_EXISTS = "ACCB01"; // TÀI KHOẢN KHÔNG TỒN TẠI

//Success

  static const STATUS_INQUIRY_ACCOUNT_HISTORY_SUCCESS =
      "TRHI00"; //GỌI API LỊCH SỬ THÀNH CÔNG
  static const STATUS_GET_LIST_BENEFICARY_SUCCESS =
      "BENE00"; //GỌI API DANH SACH TAI KHOAN THU HUONG THANH CONG
  static const DELETE_BENEFICARY_SUCCESS =
      "UBAC00"; //XÓA TÀI KHOẢN THỤ HƯỞNG THÀNH CÔNG
  static const ACCOUNT_BENEFICARY_INVALID = "UBAC06"; //TÀI KHOẢN KHÔNG HỢP LỆ
  static const GET_LIST_BANK_SUCCESS =
      "BINL00"; //LẤY RA DANH SÁCH NGÂN HÀNG THÀNH CÔNG
  static const GET_LIST_COUNTRY_SUCCESS = "EIL00"; //LẤY RA QUỐC GIA THÀNH CÔNG
  static const GET_CARD_INFO_LIST_SUCCESSFULL = "CCL00"; //LẤY RA THÔNG TIN THẺ THÀNH CÔNG
  static const GET_ATM_SUCCESSFULL = "ATM00"; //LẤY RA DANH SACH ATM
  static const GET_BRANCH_SUCCESSFULL = "BRA00"; //LẤY RA DANH SACH CHI NHANH
  static const GET_SERVICE_PAYMENT_BILL_AUTO_SUCCESS =
      "SPL00"; //LẤY DANH SÁCH DỊCH VỤ Ở MÀN THANH TOÁN TỰ ĐỘNG
  static const PROVIDER_SERVICE_SUCCESSFULL =
      "SPL00"; //LẤY DANH SÁCH DỊCH VỤ QR
  static const GET_FAST_PAYMENT_LIST_SUCCESS =
      "FBP00"; //LẤY DANH SÁCH THANH TOÁN NHANH THÀNH CÔNG
  static const CREATE_CREDIT_CARD_BILL_PAYMENT_SUCCESSFULL = "CCS00"; //KHOA THE THÀNH CÔNG
  static const DELETE_FAST_PAYMENT_LIST_SUCCESSFULL =
      "UFBPC00"; //XOÁ THANH TOÁN NHANH THÀNH CÔNG
  static const GET_RECURRING_PAYMENT_LIST_SUCCESSFULL =
      "ABPL00"; // TRUY VẤN QUẢN LÝ THANH TOÁN HOÁ ĐƠN THÀNH CÔNG
  static const GET_HISTORY_TRANSFER_LIST_SUCCESSFULL =
      "TRHI00"; // TRUY VẤN LICH SU GIAO DICH THANH CONG
  static const GET_BILL_PAYMENT_HISTORY_SUCCESSFULL =
      "BPHI00"; // TRUY VẤN QUẢN LÝ THANH TOÁN HOÁ ĐƠN THÀNH CÔNG
  static const GET_LIST_PROVINCE_SUCCESS =
      "ORGL00"; //LẤY RA DANH SÁCH TỈNH THÀNH PHỐ
  static const GET_LIST_TYPE_CARD_SUCCESS =
      "RESP00"; //LẤY RA DANH SÁCH LOẠI THẺ THÀNH CÔGN
  static const GET_LIST_BRANCH_SUCCESS =
      "ORGL00"; //LẤY RA DANH SÁCH CHI NHÁNH LIÊN HỆ
  static const CREATE_CARD_SERVICE_SUCCESS =
      "RESP00"; //TẠO DỊCH VỤ ĐĂNG KÝ THẺ THÀNH CÔNG
  static const CREATE_LOAN_SUCCESS = "RESP00"; //TẠO DỊCH VỤ VAY VỐN THÀNH CÔNG
  static const CREATE_PAYMENT_ACCOUNT_SUCCESS =
      "RESP00"; //TẠO TÀI KHOẢN THANH TOÁN THÀNH CÔNG
  static const CREATE_INTERNET_BANKING_SUCCESS =
      "RESP00"; //TẠO TÀI KHOẢN INTERNET BANKING THÀNH CÔNG
  static const CREATE_MPOS_SUCCESS = "RESP00"; //TẠO MPOS THÀNH CÔNG
  static const GET_INFO_STEP2_REGISTER_LOAN_SUCCESS =
      "EIL00"; // LẤY THÔNG TIN ĐĂNG KÝ VAY VỐN THÀNH CÔNG
  static const GET_INFO_STEP1_REGISTER_PAYMENT_ACCOUNT_SUCCESS =
      "EIL00"; // LẤY THÔNG TIN ĐĂNG KÝ TÀI KHOẢN THANH TOÁN THÀNH CÔNG
  static const CHANGE_PASSWORD_SUCCESS = "CPWD00"; // ĐỔI MẬT KHẨU THÀNH CÔNG
  static const CREATE_CARD_SERVICE =
      "EIL00"; //TẠO DỊCH VỤ ĐĂNG KÝ THẺ THÀNH CÔNG
  static const GET_LIST_PRODUCT = "RID001"; //TẠO DỊCH VỤ VAY VỐN THÀNH CÔNG
  static const GET_BALANCE_SUCCESS = "ACCB00"; //LẤY SỐ DƯ KHẢ DỤNG THÀNH CÔNG
  static const GET_LIST_SERVICE_RECHARGE_SUCCESS =
      "SPL00"; //LẤY DANH SÁCH DỊCH VỤ NẠP TIỀN THÀNH CÔNG
  static const GET_LIST_HOME_NETWORK_SUCCESS =
      "BD001"; //LẤY DANH SÁCH NHA MANG THANH CONG
  static const GET_LIST_DATA_SUCCESS =
      "BD001"; //LẤY DANH SÁCH DUNG LUONG
  static const GET_LIST_PACKAGE_DATA_SUCCESS =
      "BD001"; //LẤY DANH SÁCH GOI CUOC THANH CONG
  static const CHECK_FEE_SUCCESS = "BPI00"; //KIỂM TRA PHÍ THÀNH CÔNG
  static const RECURRING_BILL_PAYMENT_VERIFY_SUCCESS =
      "ABP00"; //THANH TOÁN HOÁ ĐƠN TỰ ĐỘNG THÀNH CÔNG
  static const GET_SOURCE_ACCOUNT_LIST_SUCCESSFULL =
      "ACCT00"; //LẤY DANH SÁCH TÀI KHOẢN THÀNH CÔNG
  static const GET_LIST_COMPANY_SUCCESS =
      "SC001"; //LẤY DANH SÁCH TÀI KHOẢN THÀNH CÔNG
  static const GET_INFOR_BRANCH_SUCCESS =
      "001"; //LẤY THÔNG TIN CHI NHÁNH THÀNH CÔNG
  static const ACCOUNT_TRANSACTION_SUCCESSFULL = "ACTR00"; //LẤY DANH SÁCH LICH SU GIAO DICH
  static const GET_BENEFICIARY_ACCOUNT_LIST_SUCCESSFULL =
      "BENE00"; //LẤY DANH SÁCH TÀI KHOẢN HUONG THU THANH CONG
  static const BILL_PAYMENT_VERIFY_SUCCESSFULL =
      "BP00";//LẤY DANH SÁCH TÀI KHOẢN HUONG THU THANH CONG
  static const RECHARGE_DATA_VERIFY_SUCCESSFULL =
      "BD001"; //VERIFY NAP DATA THÀNH CÔNG
  static const GET_DETAIL_INFORMATION_BILL_SUCCESSFULL =
      "ABPL00"; //LẤY THÔNG TIN CHI TIÊT HOÁ ĐƠN THÀNH CÔNG
  static const CANCEL_PAYMENT_BILL_AUTO_SUCCESSFULL =
      "ABPD00"; //HUỶ THANH TOÁN HOÁ ĐƠN TỰ ĐỘNG THÀNH CÔNG
  static const RECHARE_SUCCESSFULL = "BP00"; //VERIFY NẠP TIÈN THÀNH CÔNG
  static const CARD_ACTIVE_VERIFY = "CCS00"; //VERIFY MO KHOA THE THÀNH CÔNG
  static const GET_LIST_SERVICE_PAYMENT_HISTORY_SUCCESS =
      "BP00"; //LẤY DANH SÁCH DỊCH VỤ NHẬT KÝ THANH TOÁN THÀNH CÔNG
  static const BILL_USER_INFORMATION_SUCCESSFULL =
      "USRI00"; //LẤY THÔNG TIN NGƯỜI DÙNG THÀNH CÔNG
  static const CHECK_QR_SUCC = "00"; //KIEM TRA QR THANH CONG
  static const BILL_PAYMENT_CREATE_SUCCESSFULL =
      "BP00"; //CREATE HOÁ ĐƠN THÀNH CÔNG
  static const CREATE_BILL_PAYMENT_VERIFY_SUCCESS =
      "ABP00"; // TẠO THANH TOÁN HOÁ ĐƠN TỰ ĐỘNG THÀNH CÔNG
  static const RECHARGE_CREATE_SUCCESSFULL = "BP00"; // TẠO NẠP TIỀN THÀNH CÔNG
  static const RECHARGE_DATA_CREATE_SUCCESSFULL = "BP00"; // TẠO NẠP TIỀN DATA THÀNH CÔNG
  static const GET_DETAIL_ACCOUNT_INFORMATION_SUCCESS =
      "ACIF00"; // LẤY THÔNG TIN CHI TIẾT TÀI KHOẢN THÀNH CÔNG
  static const GET_LIST_LIMIT_SUCCESS =
      "RESP00"; // LẤY DS HAN MUC THANH CONG
  static const EDIT_LIMIT_SUCCESS =
      "RESP00"; // THAY DOI HAN MUC THANH CONG
  static const VERIFY_INSERT_BENEFIT_SUCCESSFULL =
      "UBAC00"; // THEM TAI KHOAN HUONG THU THANH CONG

  static const TRANSFER_247_VERIFY_SUCCESS =
      "NPS000"; // verify chuyển khoản 247
  static const TRANSFER_247_CREATE_SUCCESS =
      "RTR00"; // create chuyển khoản 247
  static const OPEN_STOCK_CREATE =
      "SEC_1"; // create mở chuyển tài khoản  CK
  static const STOCK_RECHARGE_HISTORY =
      "TRHI00"; // create mở chuyển tài khoản  CK
  static const STOCK_BENEFICIAL_INFO =
      "SEC_1"; // lấy thông tin tài khoản thụ hưởng CK
  static const STOCK_VERIFY_RECHARGE =
      "RTR00"; // xác nhận nộp tiền chứng khoán
  static const STOCK_CREATE_RECHARGE =
      "SEC_1"; // xác nhận nộp tiền chứng khoán


//Get available point success
  static const GET_AVAILABLE_POINT_SUCCESS = "PK00";
  static const GIVE_POINT_SUCCESS = "SP00";
  static const GIVE_POINT_GUEST_DID_NOT_EXISTED = "SPE001";
  static const GIVE_POINT_GUEST_DID_NOT_ACTIVED = "SPE003";
  static const GET_POINT_HISTORY_SUCCESS = "PH000";
  static const GET_EVENT_TYPE_SUCCESS = "PK005";
  static const GET_PRIZE_SUCCESS = "PK002";
  static const CHANGE_GIFT_SUCCESS = "PK004";
  static const GET_ALL_EVENT_SUCCESS = "DQ001";
  static const GET_LIST_CHANGE_GIFT_SUCCESS = "DQ002";

/* Chuyen tien tu thien */
  static const GET_PURPOSE_TRANS_SUCCESS = "AD00";

/* Quang ba */
  static const GET_ADVERTISE_SUCCESS = "RESP00";

/* Mailbox */
  static const GET_COMMON_MAILBOX_SUCCESS = "EIL00";

/**
  * status loi smart otp
  */


     static const String SUCCESS = "0";
     static const String ACT_INCORRECT_ACTIVATION_CODE = "91";
     static const String ACT_EXPIRED_ACTIVATION_CODE = "90";
     static const String ACT_EXCEEDED_RETRY_COUNT_OF_5 = "89";
     static const String ACT_ALREADY_USED = "97";
     static const String INVALID_SIGN = "-101";
     static const String SYSTEM_ERROR = "100";
     static const String CONNECTION_ERR_COULD_NOT_CONNECT = "7";
     static const String CONNECTION_TIMEDOUT = "28";
     static const String ACT_FAIL = "93";
     static const String DEVICE_ROOTED = "94";
     static const String ACT_SYNC_OTP_EXCEEDED = "205";
     static const ERROR_CONNECT_SSL = "35";
     static const LOGIN_SAI_PIN = "21";

     static const CHARITY_TRANSFER_VERIFIED = "RTR00";
}
