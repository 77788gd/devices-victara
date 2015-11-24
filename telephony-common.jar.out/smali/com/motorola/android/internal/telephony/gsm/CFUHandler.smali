.class public Lcom/motorola/android/internal/telephony/gsm/CFUHandler;
.super Landroid/os/Handler;
.source "CFUHandler.java"


# static fields
.field private static final CHECK_CFU_POWERON:Ljava/lang/String; = "check_cfu_poweron"

.field private static final EVENT_GET_CFU:I = 0x64


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckCFUDone:Z

.field private mListener:Landroid/telephony/PhoneStateListener;

.field private mNeed2CheckCFU:Z

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryCFUInProcess:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 25
    const-string v2, "GSM"

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->TAG:Ljava/lang/String;

    .line 28
    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    .line 29
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 30
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    .line 31
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 35
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;

    .line 36
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 38
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 40
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "check_cfu_poweron"

    invoke-static {v2, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    .line 43
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mTM:Landroid/telephony/TelephonyManager;

    .line 45
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;-><init>(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 69
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 40
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/gsm/CFUHandler;
    .param p1, "x1"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mTM:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/gsm/CFUHandler;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->checkCFU(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$402(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/gsm/CFUHandler;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private checkCFU(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x1

    .line 72
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 76
    :cond_0
    const-string v0, "GSM"

    const-string v1, "CFUHandler: start query CFU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 80
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 86
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 87
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 89
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 91
    const-string v1, "GSM"

    const-string v2, "CFUHandler: query CFU done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 93
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 96
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    return-void
.end method
