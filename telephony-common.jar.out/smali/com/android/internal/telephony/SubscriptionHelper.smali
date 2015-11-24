.class public Lcom/android/internal/telephony/SubscriptionHelper;
.super Landroid/os/Handler;
.source "SubscriptionHelper.java"


# static fields
.field private static final BYTE_SIZE:I = 0x1

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_OFFSET:I = 0x8

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x3

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x4

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x1

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_UNINITIALIZATION:Ljava/lang/String; = "UNINITIALIZED"

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "SubHelper"

.field private static final OEMHOOK_BASE:I = 0x80000

.field private static final OEMHOOK_EVT_HOOK_GET_TUNEAWAY:I = 0x80006

.field private static final OEMHOOK_EVT_HOOK_SET_TUNEAWAY:I = 0x80005

.field private static final OEM_IDENTIFIER:Ljava/lang/String; = "QOEMHOOK"

.field private static final PROJECT_SIM_NUM:I

.field public static final SUB_INIT_STATE:I = -0x1

.field public static final SUB_SIM_NOT_INSERTED:I = -0x63

.field private static sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private static sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private static sIccId:[Ljava/lang/String;

.field private static sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

.field private static sLastIccId:[Ljava/lang/String;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field mHeaderSize:I

.field private mSubStatus:[I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    .line 87
    sget v0, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 88
    sget v0, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    .line 89
    sget v0, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sLastIccId:[Ljava/lang/String;

    .line 90
    sget v0, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 383
    const-string v2, "QOEMHOOK"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mHeaderSize:I

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 115
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 119
    sget-object v2, Lcom/android/internal/telephony/SubscriptionHelper;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v0

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 121
    sget-object v2, Lcom/android/internal/telephony/SubscriptionHelper;->sLastIccId:[Ljava/lang/String;

    const-string v3, "UNINITIALIZED"

    aput-object v3, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 126
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 127
    .local v1, "index":Ljava/lang/Integer;
    aget-object v2, p2, v0

    const/4 v3, 0x4

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_1
    const-string v2, "SubscriptionHelper init by Context"

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private broadcastInactiveSubStateIntent(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.INTERNAL_SUB_STATE_INACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending intent ACTION_INTERNAL_SUB_STATE_INACTIVE for slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 236
    return-void
.end method

.method private buildOemHookRawData(IB)[B
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B

    .prologue
    .line 386
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    .line 388
    .local v1, "request":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 389
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 392
    const-string v2, "QOEMHOOK"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 394
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 396
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 397
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 398
    return-object v1
.end method

.method private static encodeEventId(II)I
    .locals 1
    .param p0, "event"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 327
    mul-int/lit8 v0, p1, 0x8

    shl-int v0, p0, v0

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "SubHelper"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 93
    const-class v1, Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    .line 99
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-exit v1

    return-object v0

    .line 97
    :cond_0
    const-string v0, "SubHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string v0, "SubHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 418
    const-string v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method private processCardInserting(ILjava/util/List;)V
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "availableSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 214
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 215
    :cond_0
    const-string v0, "card is not available from current db, default to activate it"

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    .line 226
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "an existing card in db, do we need to activate it?status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 220
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 221
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastInactiveSubStateIntent(I)V

    goto :goto_0
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x0

    .line 279
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 280
    .local v1, "slotId":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 282
    .local v0, "saveGlobalSettings":Z
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 287
    .local v2, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v3

    .line 289
    .local v3, "subId":[I
    aget v5, v3, v7

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v4

    .line 291
    .local v4, "subStatus":I
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_0

    .line 292
    aget v5, v3, v7

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->updateSubState(II)I

    goto :goto_0
.end method

.method private queryIccId(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryIccId: slotid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 299
    sget-object v5, Lcom/android/internal/telephony/SubscriptionHelper;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v5, v5, p1

    if-nez v5, :cond_1

    .line 300
    const-string v5, "Getting IccFileHandler"

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 302
    const/4 v4, 0x0

    .line 303
    .local v4, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 304
    .local v3, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v2

    .line 305
    .local v2, "numApps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 306
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 307
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v6, :cond_2

    .line 308
    move-object v4, v0

    .line 312
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    if-eqz v4, :cond_1

    sget-object v5, Lcom/android/internal/telephony/SubscriptionHelper;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v6

    aput-object v6, v5, p1

    .line 315
    .end local v1    # "i":I
    .end local v2    # "numApps":I
    .end local v3    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v4    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/SubscriptionHelper;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v5, v5, p1

    if-eqz v5, :cond_3

    .line 316
    const-string v5, "Querying IccId"

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 317
    sget-object v5, Lcom/android/internal/telephony/SubscriptionHelper;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v5, v5, p1

    const/16 v6, 0x2fe2

    const/4 v7, 0x3

    invoke-static {v7, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->encodeEventId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SubscriptionHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 324
    :goto_1
    return-void

    .line 305
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "i":I
    .restart local v2    # "numApps":I
    .restart local v3    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v4    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    .end local v2    # "numApps":I
    .end local v3    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v4    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/SubscriptionHelper;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v6, v5, p1

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sFh["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is null, SIM not inserted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 331
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v4, :cond_1

    .line 370
    :cond_0
    return-void

    .line 335
    :cond_1
    const-string v4, "updateIccAvailability: Enter"

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 337
    const/4 v3, 0x0

    .local v3, "slotId":I
    :goto_0
    sget v4, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    if-ge v3, v4, :cond_0

    .line 338
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 339
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 340
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 348
    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v4, v3

    .line 349
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v1, v4, v3

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: New Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Old Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 352
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v4, :cond_4

    .line 354
    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 356
    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sLastIccId:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "UNINITIALIZED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sLastIccId:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 359
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, v3

    .line 337
    .end local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    .restart local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v4, :cond_3

    .line 363
    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hot plug in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 365
    sget-object v4, Lcom/android/internal/telephony/SubscriptionHelper;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, v3

    .line 367
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper;->queryIccId(I)V

    goto :goto_1
.end method


# virtual methods
.method public getTuneAway(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "payload":B
    const v2, 0x80006

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->buildOemHookRawData(IB)[B

    move-result-object v1

    .line 410
    .local v1, "rawData":[B
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 411
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 137
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    .line 139
    .local v3, "msgNum":I
    const/4 v6, 0x0

    .local v6, "slotId":I
    :goto_0
    sget v10, Lcom/android/internal/telephony/SubscriptionHelper;->PROJECT_SIM_NUM:I

    if-gt v6, v10, :cond_0

    .line 140
    const/4 v10, 0x1

    mul-int/lit8 v11, v6, 0x8

    shl-int v5, v10, v11

    .line 141
    .local v5, "pivot":I
    if-lt v3, v5, :cond_0

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 147
    .end local v5    # "pivot":I
    :cond_0
    add-int/lit8 v6, v6, -0x1

    .line 148
    mul-int/lit8 v10, v6, 0x8

    shr-int v2, v3, v10

    .line 149
    .local v2, "event":I
    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_1
    return-void

    .line 151
    :pswitch_0
    const-string v10, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 155
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->updateIccAvailability()V

    goto :goto_1

    .line 158
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 159
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    .line 160
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_4

    .line 161
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [B

    move-object v1, v10

    check-cast v1, [B

    .line 162
    .local v1, "data":[B
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    aget-object v4, v10, v6

    .line 163
    .local v4, "oldIccId":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v11, v12}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    .line 165
    .local v7, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 167
    .local v8, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v10, "UNINITIALIZED"

    sget-object v11, Lcom/android/internal/telephony/SubscriptionHelper;->sLastIccId:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    const-string v10, "on powerup, get new card"

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->processCardInserting(ILjava/util/List;)V

    .line 187
    :cond_1
    :goto_2
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sLastIccId:[Ljava/lang/String;

    sget-object v11, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    aget-object v11, v11, v6

    aput-object v11, v10, v6

    goto :goto_1

    .line 172
    :cond_2
    const-string v10, ""

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 173
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sLastIccId:[Ljava/lang/String;

    aget-object v10, v10, v6

    sget-object v11, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 174
    const-string v10, "reinsert card"

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->processCardInserting(ILjava/util/List;)V

    goto :goto_2

    .line 177
    :cond_3
    const-string v10, "new card, need reboot"

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 179
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sLastIccId:[Ljava/lang/String;

    const-string v11, ""

    aput-object v11, v10, v6

    .line 180
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v10, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v9

    .line 181
    .local v9, "uicc":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v9, :cond_1

    .line 182
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCard;->notifyExactNewCardAdded()V

    goto :goto_2

    .line 189
    .end local v1    # "data":[B
    .end local v4    # "oldIccId":Ljava/lang/String;
    .end local v7    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v8    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v9    # "uicc":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_4
    const-string v10, "Null ar"

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 190
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    const-string v11, ""

    aput-object v11, v10, v6

    goto/16 :goto_1

    .line 193
    :cond_5
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    const-string v11, ""

    aput-object v11, v10, v6

    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query IccId fail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 200
    :pswitch_3
    if-eqz v0, :cond_6

    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    .line 201
    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 203
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage : <EVENT_RADIO_UNAVAILABLE> SIM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 204
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v11, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v11, v10, v6

    .line 205
    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->sIccId:[Ljava/lang/String;

    const-string v11, ""

    aput-object v11, v10, v6

    goto/16 :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTuneAway(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 402
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v0, v2

    .line 403
    .local v0, "payload":B
    const v2, 0x80005

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->buildOemHookRawData(IB)[B

    move-result-object v1

    .line 404
    .local v1, "rawData":[B
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v3

    invoke-interface {v2, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 405
    return-void

    .end local v0    # "payload":B
    .end local v1    # "rawData":[B
    :cond_0
    move v2, v3

    .line 402
    goto :goto_0
.end method

.method public setUiccSubscription(II)V
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "subStatus"    # I

    .prologue
    const/4 v10, 0x1

    .line 240
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-gt v0, v10, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput p2, v0, p1

    .line 246
    const/4 v8, 0x0

    .local v8, "set3GPPDone":Z
    const/4 v7, 0x0

    .line 247
    .local v7, "set3GPP2Done":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v9

    .line 248
    .local v9, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v9, :cond_2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiccSubscription: slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " card info not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 255
    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    .line 256
    .local v6, "appType":I
    if-nez v8, :cond_6

    const/4 v0, 0x2

    if-eq v6, v0, :cond_3

    if-ne v6, v10, :cond_6

    .line 258
    :cond_3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 260
    .local v5, "msgSetUiccSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 261
    const/4 v8, 0x1

    .line 270
    .end local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    if-nez v7, :cond_0

    .line 254
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    :cond_6
    if-nez v7, :cond_4

    const/4 v0, 0x4

    if-eq v6, v0, :cond_7

    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    .line 264
    :cond_7
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 266
    .restart local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 267
    const/4 v7, 0x1

    goto :goto_2
.end method
