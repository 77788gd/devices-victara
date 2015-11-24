.class public Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    }
.end annotation


# static fields
.field private static final CDMA_START:I = 0x2000000

.field private static final LOCAL_LOGD:Z = false

.field public static final MAX_LTE_BAND:I = 0x2c

.field public static final NV_TYPE_BOOL:I = 0x1

.field public static final NV_TYPE_BYTES:I = 0x3

.field public static final NV_TYPE_HEX_STRING:I = 0x4

.field public static final NV_TYPE_INT:I = 0x0

.field public static final NV_TYPE_STRING:I = 0x2

.field public static final OEM_RIL_GENERIC_FAILURE:I = 0x5

.field public static final OEM_RIL_NAM_ACCESS_COUNTER_EXCEEDED:I = 0x4

.field public static final OEM_RIL_NAM_PASSWORD_INCORRECT:I = 0x3

.field public static final OEM_RIL_NAM_READ_WRITE_FAILURE:I = 0x2

.field public static final OEM_RIL_RADIO_NOT_AVAILABLE:I = 0x1

.field private static final OEM_RIL_REQUEST_CDMA_GET_BP_APN:I = 0x2000018

.field private static final OEM_RIL_REQUEST_CDMA_GET_RDE_ITEM:I = 0x2000016

.field private static final OEM_RIL_REQUEST_CDMA_SET_BP_APN:I = 0x2000019

.field private static final OEM_RIL_REQUEST_CDMA_SET_DDTM_PREFERENCE:I = 0x20000ba

.field private static final OEM_RIL_REQUEST_CDMA_SET_RDE_ITEM:I = 0x2000015

.field public static final OEM_RIL_SUCCESS:I = 0x0

.field public static final OEM_RIL_WAITING_FOR_RESPONSE:I = -0x1

.field public static final OEM_RIL_WATCHDOG_TIMEOUT:I = 0x6

.field static final SIZE_OF_BYTE:I = 0x1

.field static final SIZE_OF_NV_ITEM:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PhoneNVInfo"

.field private static mLock:[B = null

.field private static final sDefaultSpcCode:Ljava/lang/String; = "000000"

.field private static sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# instance fields
.field private final callbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mBoolResult:Z

.field private mBytesResult:[B

.field private mCurrentMessage:Landroid/os/Message;

.field private mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

.field private mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

.field private mIntResult:I

.field private final mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

.field private mNVType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReqId:I

.field private mStatus:I

.field private mStringResult:Ljava/lang/String;

.field private sLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v2, 0x0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    .line 64
    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 110
    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B

    .line 118
    new-instance v1, Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v1}, Lcom/motorola/android/internal/telephony/ImsSetting;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 565
    const-class v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    monitor-enter v2

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 567
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneNVInfo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 570
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    .line 572
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 575
    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    .line 576
    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    invoke-direct {v1, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    .line 577
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->start()V

    .line 581
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    .line 583
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    .line 585
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    .line 587
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    .line 589
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    .line 591
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    .line 593
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    .line 595
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    .line 597
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    .line 599
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    .line 601
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    .line 603
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    .line 605
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    .line 607
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    .line 609
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    .line 611
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_AKEY_HASH:I

    .line 615
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_PROGRAM:I

    .line 617
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_AKEY:I

    .line 619
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_FTS:I

    .line 624
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

    .line 628
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    .line 634
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND1_CARRIER_AGGREGATION:I

    .line 637
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND2_CARRIER_AGGREGATION:I

    .line 640
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND3_CARRIER_AGGREGATION:I

    .line 643
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND4_CARRIER_AGGREGATION:I

    .line 646
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND5_CARRIER_AGGREGATION:I

    .line 649
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND6_CARRIER_AGGREGATION:I

    .line 652
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND7_CARRIER_AGGREGATION:I

    .line 655
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND8_CARRIER_AGGREGATION:I

    .line 658
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND9_CARRIER_AGGREGATION:I

    .line 661
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND10_CARRIER_AGGREGATION:I

    .line 664
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND11_CARRIER_AGGREGATION:I

    .line 667
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND12_CARRIER_AGGREGATION:I

    .line 670
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND13_CARRIER_AGGREGATION:I

    .line 673
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND14_CARRIER_AGGREGATION:I

    .line 676
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND15_CARRIER_AGGREGATION:I

    .line 679
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND16_CARRIER_AGGREGATION:I

    .line 682
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND17_CARRIER_AGGREGATION:I

    .line 685
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND18_CARRIER_AGGREGATION:I

    .line 688
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND19_CARRIER_AGGREGATION:I

    .line 691
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND20_CARRIER_AGGREGATION:I

    .line 694
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND21_CARRIER_AGGREGATION:I

    .line 697
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND22_CARRIER_AGGREGATION:I

    .line 700
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND23_CARRIER_AGGREGATION:I

    .line 703
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND24_CARRIER_AGGREGATION:I

    .line 706
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND25_CARRIER_AGGREGATION:I

    .line 709
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND26_CARRIER_AGGREGATION:I

    .line 712
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND27_CARRIER_AGGREGATION:I

    .line 715
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND28_CARRIER_AGGREGATION:I

    .line 718
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND29_CARRIER_AGGREGATION:I

    .line 721
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND30_CARRIER_AGGREGATION:I

    .line 724
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND31_CARRIER_AGGREGATION:I

    .line 727
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND32_CARRIER_AGGREGATION:I

    .line 730
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND33_CARRIER_AGGREGATION:I

    .line 733
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND34_CARRIER_AGGREGATION:I

    .line 736
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND35_CARRIER_AGGREGATION:I

    .line 739
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND36_CARRIER_AGGREGATION:I

    .line 742
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND37_CARRIER_AGGREGATION:I

    .line 745
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND38_CARRIER_AGGREGATION:I

    .line 748
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND39_CARRIER_AGGREGATION:I

    .line 751
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND40_CARRIER_AGGREGATION:I

    .line 754
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND41_CARRIER_AGGREGATION:I

    .line 757
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND42_CARRIER_AGGREGATION:I

    .line 760
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND43_CARRIER_AGGREGATION:I

    .line 763
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND44_CARRIER_AGGREGATION:I

    .line 767
    return-void

    .line 572
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$1002(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # [B

    .prologue
    .line 46
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B

    return-object p1
.end method

.method static synthetic access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    return p1
.end method

.method static synthetic access$200()[B
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 46
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 46
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    return v0
.end method

.method static synthetic access$702(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/Phone;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 771
    const-class v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .line 775
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 782
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 783
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 785
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 786
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 788
    return-void
.end method

.method private removeCallback(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1485
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1486
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1487
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1488
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;

    iget-object v2, v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1489
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1490
    monitor-exit v3

    .line 1494
    :goto_1
    return-void

    .line 1487
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1493
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public declared-synchronized getModemAPN()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1274
    monitor-enter p0

    :try_start_0
    const-string v5, "PhoneNVInfo"

    const-string v6, "getModemAPN() start."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000018

    invoke-virtual {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1277
    .local v4, "msg":Landroid/os/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    .local v2, "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "CDMAQAPNEFS "

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    const-string v5, "AT+APNE?"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1283
    .local v0, "array_size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1284
    .local v1, "command":[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1292
    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 1293
    iput-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 1295
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1296
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 1298
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, v7, :cond_0

    .line 1300
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1301
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1302
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1303
    :catch_0
    move-exception v3

    .line 1304
    .local v3, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1307
    .end local v3    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getModemAPN() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v5

    .line 1274
    .end local v0    # "array_size":I
    .end local v1    # "command":[Ljava/lang/String;
    .end local v2    # "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoBoolean(I)Z
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1034
    monitor-enter p0

    :try_start_0
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    if-ne p1, v7, :cond_1

    .line 1035
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPSigComp()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    .line 1080
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 1036
    :cond_1
    :try_start_1
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    if-eq p1, v7, :cond_0

    .line 1039
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    if-eq p1, v7, :cond_0

    .line 1042
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    if-ne p1, v7, :cond_3

    .line 1043
    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v7}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSFormat()I

    move-result v7

    if-ne v7, v5, :cond_2

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    .line 1044
    :cond_3
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    if-ne p1, v5, :cond_4

    .line 1045
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSOverIP()Z

    move-result v6

    goto :goto_0

    .line 1048
    :cond_4
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1051
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1052
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1053
    const/4 v1, 0x0

    .line 1055
    .local v1, "mValue":Z
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1056
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1058
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1061
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1063
    :goto_2
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1065
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1066
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1067
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 1073
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_6

    .line 1074
    iget-boolean v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move v6, v1

    .line 1080
    goto :goto_0

    .line 1034
    .end local v1    # "mValue":Z
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoBytes(I)[B
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 792
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 795
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 796
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 797
    const/4 v1, 0x0

    .line 799
    .local v1, "mValue":[B
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 800
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 802
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 805
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 807
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 809
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 810
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 811
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 817
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    .line 818
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 821
    :cond_1
    monitor-exit p0

    return-object v1

    .line 792
    .end local v1    # "mValue":[B
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoHEXString(I)Ljava/lang/String;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 1128
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1131
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1132
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1133
    const/4 v1, 0x0

    .line 1135
    .local v1, "mValue":Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1136
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1138
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1141
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1143
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1145
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1146
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1147
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1153
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1157
    :cond_1
    monitor-exit p0

    return-object v1

    .line 1128
    .end local v1    # "mValue":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoInt(I)I
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    if-ne p1, v5, :cond_1

    .line 864
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPT1Timer()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 902
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 865
    :cond_1
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    if-ne p1, v5, :cond_2

    .line 867
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPT2Timer()I

    move-result v1

    goto :goto_0

    .line 868
    :cond_2
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    if-ne p1, v5, :cond_3

    .line 870
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPTfTimer()I

    move-result v1

    goto :goto_0

    .line 873
    :cond_3
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 876
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 877
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 878
    const/4 v1, -0x1

    .line 880
    .local v1, "mValue":I
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 881
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 883
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 886
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 888
    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 890
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 891
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 898
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_0

    .line 899
    iget v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 862
    .end local v1    # "mValue":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoString(I)Ljava/lang/String;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 1162
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    if-ne p1, v5, :cond_1

    .line 1163
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSPhoneContextURI()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1199
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1164
    :cond_1
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    if-ne p1, v5, :cond_2

    .line 1165
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getUserDomain()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1166
    :cond_2
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    if-ne p1, v5, :cond_3

    .line 1167
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPLocalPort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1170
    :cond_3
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1173
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1174
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1175
    const/4 v1, 0x0

    .line 1177
    .local v1, "mValue":Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1178
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1180
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1183
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1185
    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 1187
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1188
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1189
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1195
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1162
    .end local v1    # "mValue":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 7
    .param p1, "cb"    # Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .prologue
    .line 1244
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1245
    const/4 v3, 0x0

    .line 1248
    .local v3, "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1249
    .local v1, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1250
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .local v4, "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1251
    :try_start_1
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1252
    .end local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_2
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 1265
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1266
    return-void

    .line 1250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    goto :goto_0

    .line 1258
    :cond_1
    :try_start_3
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1259
    .end local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_4
    iput-object v1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    .line 1260
    iput-object p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .line 1261
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1265
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    goto :goto_2
.end method

.method public declared-synchronized setModemAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "apn_str"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 1312
    monitor-enter p0

    :try_start_0
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModemAPN() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000019

    invoke-virtual {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1315
    .local v4, "msg":Landroid/os/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v2, "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "CDMAEDITAPN "

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    const-string v5, "AT+APNE="

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    if-eqz p1, :cond_0

    .line 1320
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1324
    .local v0, "array_size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1325
    .local v1, "command":[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1333
    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 1334
    iput-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 1336
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1337
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 1339
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, v8, :cond_1

    .line 1341
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1342
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1343
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1344
    :catch_0
    move-exception v3

    .line 1345
    .local v3, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1349
    .end local v3    # "iex":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_4
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModemAPN() End: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v5

    .line 1312
    .end local v0    # "array_size":I
    .end local v1    # "command":[Ljava/lang/String;
    .end local v2    # "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(II)I
    .locals 11
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 975
    monitor-enter p0

    :try_start_0
    sget v10, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    if-ne p1, v10, :cond_2

    .line 977
    iget-object v10, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v10, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSIPT1Timer(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v10

    if-eqz v10, :cond_1

    .line 1030
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    :cond_1
    move v8, v9

    .line 977
    goto :goto_0

    .line 979
    :cond_2
    :try_start_1
    sget v10, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    if-ne p1, v10, :cond_3

    .line 981
    iget-object v10, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v10, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSIPT2Timer(I)Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 983
    :cond_3
    sget v10, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    if-ne p1, v10, :cond_4

    .line 985
    iget-object v10, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v10, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSIPTfTimer(I)Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 989
    :cond_4
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v9, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 994
    .local v3, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 995
    :try_start_2
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 996
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 998
    .local v5, "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_3
    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    invoke-interface {v8, p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->valueChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 995
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 999
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    invoke-interface {v8}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->removeCallback(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1004
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v5    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 975
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1004
    .restart local v1    # "i":I
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_5
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1006
    const/4 v8, 0x0

    :try_start_7
    iput v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1007
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1009
    new-instance v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1010
    .local v6, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1012
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 1013
    .local v4, "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v4, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 1015
    new-instance v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v8, 0x2000015

    const-string v9, "000000"

    invoke-direct {v7, v6, v8, v9}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1018
    .local v7, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1020
    :goto_3
    iget v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 1022
    :try_start_8
    sget-object v9, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v9
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1023
    :try_start_9
    sget-object v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1024
    monitor-exit v9

    goto :goto_3

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1025
    :catch_1
    move-exception v2

    .line 1026
    .local v2, "iex":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 1030
    .end local v2    # "iex":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_b
    iget v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0
.end method

.method public declared-synchronized setPhoneNVInfo(ILjava/lang/String;)I
    .locals 9
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 1203
    monitor-enter p0

    :try_start_0
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    if-ne p1, v7, :cond_2

    .line 1204
    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v7, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setUserDomain(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_1

    .line 1237
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    :cond_1
    move v5, v6

    .line 1204
    goto :goto_0

    .line 1206
    :cond_2
    :try_start_1
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    if-ne p1, v7, :cond_3

    .line 1207
    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-static {p2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v7, v8}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSIPLocalPort(S)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 1211
    :cond_3
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1214
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1215
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1217
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1218
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1220
    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 1223
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1226
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1228
    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 1230
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1231
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1232
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1237
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1203
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(IZ)I
    .locals 9
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1084
    monitor-enter p0

    :try_start_0
    sget v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p1, v8, :cond_1

    .line 1123
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 1087
    :cond_1
    :try_start_1
    sget v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    if-ne p1, v8, :cond_3

    .line 1088
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v8, v7}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSMSFormat(I)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    :cond_2
    move v7, v5

    goto :goto_1

    .line 1091
    :cond_3
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    if-ne p1, v7, :cond_4

    .line 1092
    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v7, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSMSOverIP(Z)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 1096
    :cond_4
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1099
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1100
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1102
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1103
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1105
    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Z)V

    .line 1106
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 1108
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1111
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1113
    :goto_2
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1115
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1116
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1117
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 1123
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1084
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(I[B)I
    .locals 8
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .prologue
    .line 827
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 832
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 833
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 835
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 836
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 838
    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>([B)V

    .line 839
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 841
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 844
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 846
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 848
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 849
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 850
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 857
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v5

    .line 827
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .param p1, "cb"    # Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .prologue
    .line 1270
    invoke-interface {p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->removeCallback(Landroid/os/IBinder;)V

    .line 1271
    return-void
.end method
