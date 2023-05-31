class UrlStatic {
  /**
   * TODO Danh loc
   */

  static const String API_AUTHENTICATION = '/api/authentication';
  static const String INQUIRY_FX_RATE = '/api/inquiryFXRate';
  static const URI_INTERES_RATE = '/api/inquiryInterestRate';
  static const URI_TRANSACTION_LIMIT = "/api/inquiryTransLimit";
  static const URI_TRANSFER_VERIFY = "/api/internalTransferVerify";
  static const URI_TRANSFER_CREATE = "/api/internalTransferCreate";
  // lấy danh sách ngân hàng chuyển chuyển 247
  static const URI_NAPAS_BANK_LIST = "/api/inquiryNapasBankList";
  // chuyển khoản 247
  static const NAPAS_TRANSFER_VERIFY = "/api/napasTransferVerify";
  static const NAPAS_TRANSFER_CREATE = "/api/napasTransfer";

  static const URI_TRANSFER_VERIFY_CMT = "/api/identityCardTransferVerify";

  // smart otp
  static const GET_UPDATE_SMART_OTP_STATUS = "/api/updateSmartOTPStatus";
  static const GET_ACTIVE_CODE = "/api/getActivationCode";
  static const CHECK_SERIAL_NO_DIFICUNT = "/api/checkSeriNoAPI";
  static const CHECK_LOOK_SMART_OTP = "/api/updateSmartOtpTimeLock";
  static const WRITE_LOG_MOBILE_APP = "/api/writeLogMobileApp";
  static const BLOCK_USER_SMART_OTP = "/api/blockUserSmart";
  static const READ_DATA_ORC = "/api/readDataOCR";
  static const FACE_COMPARE = "/api/liveFaceCompare";
  static const CHECK_CERTCODE_EBANK = "/api/verifyEkyc";
  static const CHECK_CERTCODE_CORE_BANK = "/api/checkCertCodeEkyc";


  //  get account napas
  static const GET_NAPAS = "/api/getNapas";
  // chuyeen khoan ngoai he thong  lay danh sach ngan hang
  static const URI_BANK_LIST = "/api/inquiryBankInfoList";

  static const URI_UPDATE_DEVICE_ID_VERIFY = "/api/updateDeviceIdTokenVerify";
  static const URI_UPDATE_DEVICE_ID_CREATE = "/api/updateDeviceIdToken";

   static const URI_GET_BRANCH_LISTS = "/api/inquiryBranchInfoList";

static const URI_EXTERNAL_TRANSFER_VERIFY = "/api/externalTransferVerify";
  static const URI_EXTERNAL_TRANSFER_CREATE = "/api/externalTransferCreate";

static const   URI_CMT_TRANSFER_CREATE   = "/api/identityCardTransferCreate";
  /**
   *
   * TODO the thai
   */

  static const String URI_BANK_SOURCE_LIST_ALL =
      '/api/inquirySourceAccountList';
  static const String URI_LIST_ACCOUNT_TRANSACTION = '/api/inquiryAccountTrans';
  static const String URI_10_ACCOUNT_HISTORY =
      '/api/inquiryAccountTransTop10'; // lịch sử tài khoản

  static const String URI_INQUIRY_TRANSFER_HISTORY =
      '/api/inquiryTransferHistory'; // lịch sử giao dịch

  /**
   *
   * TODO Nguyên
   */
// Lấy số dư tài khoản
  static const String URI_INQUIRY_ACCOUNT_BALANCE =
      '/api/inquiryAccountBalance';

// Lấy tên người thụ hưởng
  static const String URI_BENEFITCARY_ACCOUNT_NAME =
      '/api/inquiryBenefAccountName';

// Truy vấn hạn mức giao dịch
  static const String URI_TRANSFER_LIMITED = '/api/inquiryTransLimit';

// Truy vấn danh sách tài khoản
  static const String URI_ACCOUNT_LIST = '/api/inquirySourceAccountList';

  /**
   *
   * TODO linhndq
   */
//LẤY RA THÔNG TIN NHÀ MẠNG VÀ MỆNH GIÁ THẺ CÓ THỂ MUA
  static const String URI_INQUIRY_REACHARGE_PROVIDER_SERVICE =
      '/api/inquiryRechargeProviderService';

//LẤY RA THÔNG TIN SỐ ĐIỆN THOẠI CỦA CHỦ TÀI KHOẢN
  static const String INFORMATION_PHONE_NUMBER = '/api/inquiryUserInfo';

//XÁC THỰC SỐ TIỀN TRƯỚC KHI MUA THẺ
  static const String VERIFY_PAY_PHONE_NUMBER = '/api/rechargeVerify';

//LẤY RA DANH SÁCH TÀI KHOẢN THỤ HƯỞNG
  static const String LIST_BENEFICARY = '/api/inquiryBeneficiaryAccountList';

//CREATE DELETE UPDATE BENEFICARY
  static const String CRUD_BENEFICARY = '/api/updateBeneficiaryAccount';

//LẤY RA DANH SÁCH NGÂN HÀNG
  static const String GET_LIST_BANK = '/api/inquiryBankInfoList';

//Kiểm tra tài khoản có phải tài khoản trong hệ thống hay không
  static const String CHECK_ACCOUNT_IN_SYSTEM = '/api/inquiryBenefAccountName';

//  lấy danh sách tỉnh thành
  static const URI_GET_CITY_LIST_WITH_BANK_NO = "/api/inquiryCityInfoList";

  /**
   *
   * TODO Nambd
   */
  //LẤY RA DANH SÁCH QUỐC GIA
  static const String URI_GET_COUNTRY_LIST = '/api/registerLoanStept1';
  //LẤY RA DANH SÁCH THẺ
  static const String URI_GET_CARD_INFO_LIST = "/api/inquiryCreditCard";
  //LẤY RA THONG TIN THE
  static const String URI_GET_CARD_DETAIL = "/api/inquiryCreditCardDetail";
  //LẤY RA DANH SÁCH ATM
  static const String URI_ATM = "/api/inquiryATMList";
  //LẤY RA DANH SÁCH CHI NHANH
  static const String URI_BRANCH = "/api/inquiryBRAList";

  //THEM TAI KHOAN HUONG THU
  static const String URI_UPDATE_BENEFICIATY_ACCOUNT_NAME =
      "/api/updateBeneficiaryAccount";

  //LẤY RA DANH SÁCH TỈNH THÀNH PHỐ
  static const String URI_GET_PROVINCE_LIST = '/api/inquiryProviceInfoList';

  //LẤY RA DANH SÁCH LOẠI THẺ
  static const String URI_GET_TYPE_CARD_LIST = '/api/inquiryCardType';

  //LẤY RA DANH SÁCH CHI NHÁNH LIÊN HỆ
  static const String URI_GET_BRANCH_LIST = '/api/inquiryBankOrgList';

  //TẠO ĐĂNG KÝ DỊCH THẺ
  static const String URI_CREATE_CARD_SERVICE = '/api/registerCard';

  //LẤY THÔNG TIN ĐĂNG KÝ VAY VỐN BƯỚC 2
  static const String URI_GET_INFO_STEP2_REGISTER_LOAN =
      '/api/registerInfoLoan';

  //TẠO ĐĂNG KÝ VAY VỐN
  static const String URI_CREATE_LOAN = '/api/registerLoan';

  //TẠO ĐĂNG KÝ TÀI KHOẢN THANH TÁON
  static const String URI_CREATE_PAYMENT_ACCOUNT = '/api/registerPayAcc';

  //TẠO ĐĂNG KÝ TÀI KHOẢN INTERNET BANKING
  static const String URI_CREATE_INTERNET_BANKING =
      '/api/registerInternetBanking';

  //TẠO ĐĂNG KÝ MPOS
  static const String URI_CREATE_MPOS = '/api/registerMPos';

  //LẤY THÔNG TIN ĐĂNG KÝ TÀI KHOẢN THANH TÓAN BƯỚC 1
  static const String URI_GET_INFO_STEP1_REGISTER_PAYMENT_ACCOUNT =
      '/api/registerAccLoad';

  //ĐỔI MẬT KHẨU
  static const String URI_CHANGE_PASSWORD = '/api/changePassword';

  // LẤY DỊCH VỤ ĐĂNG KÝ THANH TOÁN HÓA ĐƠN TỰ ĐỘNG
  static const String URI_SERVICE_PAYMENT_BILL_AUTO =
      '/api/inquiryServiceTypeList';

  // LẤY DỊCH VỤ QR
  static const String URI_SERVICE_QR = "/api/inquiryServiceBillPayment";

  // LẤY DỊCH DANH SÁCH THANH TOÁN NHANH
  static const String URI_UPDATE_FAST_PAYMENT_LIST = "/api/updateFastPayment";

  // LẤY DỊCH VỤ NHẬT KÝ THANH TOÁN TRỰC TUYẾN
  static const URI_BILL_PAYMENT_SERVICE_LIST = "/api/billPaymentServiceList";

  // LẤY DANH SÁCH HOÁ ĐƠN THANH TOÁN TRỰC TUYẾN
  static const URI_BILL_PAYMENT_HISTORY = "/api/inquiryBillPaymentHistory";

  // TRUY VẤN QUẢN LÝ THANH TOÁN HOÁ ĐƠN TỰ ĐỘNG
  static const String URI_RECURRING_BILL_PAYMENT_HISTORY =
      "/api/inquiryAutoPayment";

  // TRUY VẤN LICH SU GIAO DICH
  static const String URI_TRANSFER_HISTORY = "/api/inquiryTransferHistory";

  // KIỂM TRA PHÍ THANH TOÁN HOÁ ĐƠN TỰ ĐỘNG, KIỂM TRA HOÁ ĐƠN THANH TOÁN HOÁ ĐƠN
  static const String URI_CHECK_FEE = '/api/inquiryBillPaymentInfo';

  //THANH TOÁN HOÁ ĐƠN TỰ ĐỘNG
  static const String URI_RECURRING_BILL_PAYMENT_VERIFY =
      '/api/autoPaymentVerify';

  // TAO THANH TOÁN HOÁ ĐƠN TỰ ĐỘNG
  static const String URI_CREATE_PAY_BILL_AUTO = '/api/autoPaymentCreate';

  // TAO THANH TOÁN HOÁ ĐƠN
  static const String URI_BILL_PAYMENT_CREATE = "/api/billPaymentCreate";

  // TAO THANH TOÁN HOÁ ĐƠN QR
  static const String URI_BILL_PAYMENT_QR_CREATE = "/api/qrBillPaymentCreate";

  // VERIFY HOÁ ĐƠN
  static const String URI_PAYMENT_VERIFY = "/api/billPaymentVerify";

  // VERIFY HOÁ ĐƠN QR
  static const String URI_PAYMENT_QR_VERIFY = "/api/qrBillPaymentVerify";

  // VERIFY NAP DATA
  static const String URI_RECHARGE_DATA_VERIFY = "/api/retailBuyDataVerifyAPI";

  // LẤY THÔNG TIN CHI TIẾT HOÁ ĐƠN
  static const String URI_DETAIL_REGULAR_BILL_HISTORY =
      "/api/inquiryAutoPaymentDetail";

  // HUỶ HOÁ ĐƠN THANH TOÁN TỰ ĐỘNG
  static const String URI_CANCEL_REGULAR_BILL_PAYMENT =
      "/api/autoPaymentDelete";

  // VERIFY NẠP TIỀN
  static const String URI_RECHARGE_VERIFY = "/api/rechargeVerify";
  // VERIFY MO KHOA THE
  static const String URI_CARD_TOGGLE_VERIFY = "/api/creditCardVerify";

  // CREATE MO KHOA THE
  static const String URI_CARD_TOGGLE_SUBMIT = "/api/creditCardSubmit";

  // CREATE NẠP TIỀN
  static const URI_RECHARGE_CREATE = "/api/rechargeCreate";

  // CREATE NẠP TIỀN DATA
  static const URI_RECHARGE_DATA_CREATE = "/api/retailBuyDataCreateAPI";

  // LẤY DANH SÁCH DỊCH VỤ NẠP TIỀN
  static const String URI_LIST_SERVICE_RECHARGE =
      "/api/inquiryRechargeProviderService";

  // LẤY DANH SÁCH NHA MANG
  static const String URI_LIST_HOME_NETWORK =
      "/api/inquiryNetwork";

  // LẤY DANH SÁCH GOI DU CUOC
  static const String URI_LIST_PACKAGE_DATA =
      "/api/inquiryPackageData";
  // LẤY DANH SÁCH DUNG LUONG
  static const String URI_LIST_DATA =
      "/api/inquiryData";

  // LẤY THÔNG TIN KHÁCH HÀNG
  static const String URI_CUSTOMER_INFO = "/api/inquiryUserInfo";

  // KIEEM TRA MA QR CODE
  static const String URI_QR_CODE = "/api/decodeQr";
  static const String URI_GET_QR_CODE = "/api/generateVietQR";

  // LAY DANH SACH TAI KHOAN
  static const String URI_ACCOUNT_INFO = "/api/inquiryAccountInfo";

  // LAY DANH SACH CONG TY
  static const String URI_COMPANY_LIST = "/api/getAllSecurityCompany";

  // LAY DANH SACH CONG TY
  static const String URI_BRANCH_BY_ID = "/api/getBranhById";

  // VERIFY OPEN STOCK
  static const String URI_OPEN_STOCK_VERIFY = "/api/securityOpenAccountVerifyAPI";

  // LAY NHAT KY NOP TIEN CHUNG KHOAN
  static const String URI_SECURITY_DIARY = "/api/securityDiary";

  // CREATE OPEN STOCK
  static const String URI_OPEN_STOCK_CREATE = "/api/securityOpenAccountCreate";
  // LAY THONG TIN TAI KHOAN THU HUONG
  static const String URI_STOCK_BENEFICIAL_INFO = "/api/getNameAcctSercurities";
  // XAC NHAN CHUYEN KHOAN CHUNG KHOAN BUOC 2
  static const String URI_STOCK_VERIFY_RECHARGE = "/api/securityRecharge";
  // TAO CHUYEN KHOAN CHUNG KHOAN BUOC 3
  static const String URI_STOCK_CREATE_RECHARGE = "/api/securityRechargeCreateAPI";

  // LAY THONG TIN CHI TIET TAI KHOAN
  static const String URI_ACCOUNT_INFO_DETAIL = "/api/inquiryAccountInfoDetail";

  // LAY DS THAY DOI HAN MUC
  static const String URI_LIST_LIMIT = "/api/limitQuery";

  // THAY DOI HAN MUC
  static const String URI_EDIT_LIMIT = "/api/limitSetting";

  // DANH SACH TK HUONG THU
  static const String URI_BENEFITCARY_ACCOUNT_LIST_QUERY = "/api/queryBeneficiaryAccount";

  // DANH SACH CHI NHANH
  static const String URI_BANK_ORG_LIST = "/api/inquiryBankOrgList";

  /**
   *
   * TODO Cuongtm
   */
  // LẤY DANH SÁCH TÀI KHOẢN NGUỒN
  static const URI_SOURCE_ACCOUNT_LIST = "/api/inquirySourceAccountList";
  // LẤY THÔNG TIN SỐ DƯ KHẢ DỤNG
  static const String URI_ACCOUNT_BALANCE = "/api/inquiryAccountBalance";
  // LẤY THÔNG TIN KÌ HẠN
  static const URI_GET_LIST_RECIEPT_PRODUCT = "/api/inquiryRecieptProductList";
  //TIẾP TỤC CẬP NHẬT THÔNG TIN MỞ SỔ TIẾT KIỆM STEP 1
  static const URI_OPEN_SAVING_ACC_VERIFY = "/api/openSavingAccVerify";
  //Lấy thông tin lãi suất
  static const URI_ONLINE_SAVING_RATE_INFO = "/api/inquiryOnlineSavingRateInfo";
  static const URI_ONLINE_SAVING_RATE_BY_AMOUNT = "/api/receiptProduct";

  /**
   *
   * start mauld
   */
  /* Hủy dịch vụ MB */
  static const URI_SUSPEND_USER = '/api/suppendUser'; // Hủy dịch vụ
  static const URI_UPDATE_NOTIFICATION_TOKEN =
      "/api/updateNotificationToken"; // Cập nhật thông báo
  static const URI_UPDATE_DEBT_NOTIFICATION_TOKEN =
      "/api/settingNotiDebtRemind"; // Cập nhật thông báo nhắc nợ
  static const URI_UPDATE_TAB_IN_LOGIN =
      "/api/updateNotiLogToken"; // Cập nhật trạng thái show tab biến động
  /* Bảo hiểm */
  static const URI_GET_UNIT_INSURANCE =
      "/api/getUnitInsurance"; // đơn vị bảo hiểm
  static const URI_GET_INSURANCE_PACKAGE =
      "/api/inquiryPackageIns"; // gói bảo hiểm
  static const URI_GET_INSURANCE_PROMOTION =
      "/api/inquiryPromotionIns"; // khuyến mại bảo hiểm
  static const URI_VERIFY_HEALTH_INSURANCE =
      "/api/retailHealthInsurranceVerifyAPI"; // xác nhận bảo hiểm sức khỏe
  static const URI_VERIFY_CANCER_INSURANCE =
      "/api/retailCancerInsurranceVerifyAPI"; // xác nhận bảo hiểm ung thư
  static const URI_VERIFY_BREAST_CANCER_INSURANCE =
      "/api/retailBreastCancerInsurranceVerify"; // xác nhận bảo hiểm ung thư vú
  static const URI_VERIFY_EXTENDED_ACCIDENT_INSURANCE =
      "/api/retailExtendedAccidentInsurranceVerify"; // xác nhận bảo hiểm tai nạn mở rộng
  static const URI_CREATE_HEALTH_INSURANCE =
      "/api/retailHealthInsurranceCreatedAPI"; // tạo bảo hiểm sức khỏe
  static const URI_CREATE_CANCER_INSURANCE =
      "/api/retailCancerInsurranceCreatedAPI"; // tạo bảo hiểm ung thư
  static const URI_CREATE_BREAST_CANCER_INSURANCE =
      "/api/retailBreastCancerInsurranceCreated"; // tạo bảo hiểm ung thư vú
  static const URI_CREATE_EXTENDED_ACCIDENT_INSURANCE =
      "/api/retailExtendedAccidentInsurranceCreated"; // tạo bảo hiểm tai nạn mở rộng
  static const URI_INQUIRY_INSURANCE_DIARY =
      "/api/retailInsuranceDiary"; // lấy nhật ký bảo hiểm
  static const URI_INQUIRY_DETAIL_INSURANCE_DIARY =
      "/api/retailInsuranceDiaryDetail"; // lấy nhật ký bảo hiểm chi tiết
  static const URI_INQUIRY_FEE_HEALTH_INSURANCE =
      "/api/getFeeHealthInsurance"; // Tính fee bảo hiểm sức khỏe
  /* Ví điện tử */
  static const URI_SERVICE_WALLET_LIST =
      "/api/inquiryServiceWalletList"; //lấy danh sách ví
  static const URI_WALLET_VERIFY = "/api/walletVerify"; // xác nhận ví
  static const URI_WALLET_REGISTRATION_CREATE =
      "/api/inquiryWalletRegistrationCreate"; // tạo ví
  static const URI_WALLET_RECHARGE_VIA_CREATE =
      "/api/inquiryWalletRechargeViaCreate"; // nạp ví
  static const URI_WALLET_CANCEL = "/api/inquiryWalletCancelCreate"; // hủy ví
  static const URI_WALLET_CANCEL_CONFIRM =
      "/api/walletCancelConfirm"; // xác nhận hủy ví
  /* Tiền gửi online */
  static const URI_CREATE_ONLINE_SAVING =
      "/api/createOnlineSavingAccount"; // tạo tài khoản tiết kiệm online
  static const URI_PRODUCT_SAVING =
      "/api/inquiryProductSaving"; // lấy danh sách tài khoản tiết kiệm online
  static const URI_GET_BK_COMBOBOX =
      "/api/getBkCombobox"; // lấy danh sách hình thức trả lãi và hình thức đáo hạn
  static const URI_SAVING_INFO =
      "/api/inquirySavingInfo"; // lưu thông tin người tất toán
  static const URI_LOAN_SAVING_INFO =
      "/api/inquiryLoanSavingInfo"; // lưu danh sách sổ tiêt kiệm
  static const SAVING_DIARY =
      "/api/inquiryOnlineSavingHistory"; // lấy danh sách lịch sử tiền gửi online
  static const SAVING_DIARY_DETAIL_SETTLEMENT =
      "/api/inquiryOnlineSettlementRetail"; // xem chi tiết sổ tiết kiệm online có vòng quay
  static const URI_SETTLEMENT_SAVING_VERIFY =
      "/api/settlementSavingVerify"; // xác nhận tất toán sổ tiết kiệm
  static const URI_SETTLEMENT_SAVING_ONLINE_CREATE =
      "/api/settlementSavingOnlineCreate"; // tất toán sổ tiết kiệm
  static const URI_LOAN_SAVING_VERIFY =
      "/api/loanSavingVerify"; // xác nhận vay cầm cố sổ tiết kiệm trực tuyến
  static const URI_LOAN_SAVING_CREATE =
      "/api/loanSavingCreate"; // tạo tài khoản vay cầm cố sổ tiết kiệm trực tuyến
  static const GET_RECEIPT_INFO_DETAIL =
      "/api/inquiryReceiptInfoDetail"; // xem chi tiết tài khoản tiết kiệm online
  static const GET_SAVING_DETAIL =
      "/api/inquirySavingInfoDetail"; // xem chi tiết tài khoản tiết kiệm online
  static const LOAN_SAVING_PLEDGE = "/api/loanSavingPledge"; // truy vấn tài khoản vay thế chấp bằng tài khoản tiết kiệm
  static const URI_LOAN_SAVING_PLEDGE_INFO = "/api/loanSavingInfo";// thông tin tài khoản tiết kiệm để cầm cố vay
  static const URI_PARTIAL_WITHDRAWAL_VERIFY = "/api/onlineSavingFWPVerify";// tất toán từng phần bước 2
  static const URI_PARTIAL_WITHDRAWAL_CREATE = "/api/onlineSavingFWPCreate";// tất toán từng phần bước 3
  /**
   *
   * end mauld
   */



/* Quan ly diem */
static const String URI_AVAILABLE_POINT = "/api/retailGetPointAvailableAPI";
static const String URI_GIVE_POINT_SUCCESS = "/api/retailDonatePointAPI";
static const String URI_GET_POINT_HISTORY = "/api/retailPointHistory";
static const String URI_GET_EVENT_TYPE = "/api/retailExchangeGiftTypeEvent";
static const String URI_GET_PRIZE = "/api/retailExchangeGiftPrize";
static const String URI_CHANGE_GIFT = "/api/retailExchangeGiftSub";
static const String URI_GET_ALL_EVENT = "/api/retailExchangeGiftHistory";
static const String URI_GET_LIST_CHANGE_GIFT = "/api/retailExchangeGiftHistoryQr";


/* Quang ba */
static const String URI_GET_ADVERTISE = "/api/inquiryAdvertisementInfo";

/* Mailbox */
static const String URI_GET_COMMON_MAILBOX = "/api/inquiryEmailListPublish";
static const String URI_GET_PRIVATE_MAILBOX = "/api/inquiryEmailList";
static const String URI_VIEW_DETAIL = "/api/inquiryDetailEmail";

/* Chuyen tien tu thien */
static const String URI_GET_PURPOSE_CHARITY_TRANS = "/api/getAccountAndListPurposeAPI";
static const String URI_CHARITY_TRANSFER_VERIFY = "/api/donationTransferVerifyAPI";
static const String URI_CHARITY_TRANSFER_CREATE = "/api/donationTransferCreateAPI";

static const String URI_EKYC_SPECIAL_PARAMETER = "/api/parameterEKYCapi";
static const String URI_EKYC_VERIFY_PHONE = "/api/verifyEkyc";
static const String URI_EKYC_VERIFY_EMAIL = "/api/verifyEkyc";
static const String URI_EKYC_REGISTER_SERVICE = "/api/registerService";
static const String URI_EKYC_USER_SALE = "/api/userSale";
static const String URI_EKYC_CHECK_CIF_NO = "/api/checkCifNoEkyc";
static const String URI_EKYC_SEND_OTP = "/api/sendOtpEkyc";
static const String URI_EKYC_VERIFY_OTP = "/api/verifyOtpEkyc";
static const String URI_TRANSFER_TEMPLATE_LIST = "/api/queryTransferTemplate";
static const String URI_TRANSFER_TEMPLATE_LIST_BY_TYPE = "/api/inquiryTransferTemplateList";
static const String URI_TRANSFER_TEMPLATE_UPDATE = "/api/updateTransferTemplate";
}
