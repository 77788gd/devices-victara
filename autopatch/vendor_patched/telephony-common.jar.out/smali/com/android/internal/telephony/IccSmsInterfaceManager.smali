.class public Lcom/android/internal/telephony/IccSmsInterfaceManager;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field protected static final EVENT_GET_SMSC_ADDRESS_DONE:I = 0x5

.field private static final EVENT_LOAD_DONE:I = 0x1

.field protected static final EVENT_SET_BROADCAST_ACTIVATION_DONE:I = 0x3

.field protected static final EVENT_SET_BROADCAST_CONFIG_DONE:I = 0x4

.field protected static final EVENT_SET_SMSC_ADDRESS_DONE:I = 0x6

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "IccSmsInterfaceManager"

.field private static final SMS_CB_CODE_SCHEME_MAX:I = 0xff

.field private static final SMS_CB_CODE_SCHEME_MIN:I


# instance fields
.field protected final mAppOps:Landroid/app/AppOpsManager;

.field private mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

.field private mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

.field protected final mContext:Landroid/content/Context;

.field protected mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private final mGetSmscLock:Ljava/lang/Object;

.field protected mHandler:Landroid/os/Handler;

.field protected final mLock:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mSetSmscLock:Ljava/lang/Object;

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmscAddress:Ljava/lang/String;

.field private mSmscSuccess:Z

.field protected mSuccess:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscAddress:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscSuccess:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetSmscLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetSmscLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 157
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mUserManager:Landroid/os/UserManager;

    .line 160
    new-instance v0, Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetSmscLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetSmscLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscSuccess:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z

    move-result v0

    return v0
.end method

.method private enforceCarrierPrivilege()V
    .locals 3

    .prologue
    .line 1080
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 1081
    .local v0, "controller":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1082
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No Carrier Privilege: No UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1087
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No Carrier Privilege."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1089
    :cond_2
    return-void
.end method

.method private filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;

    .prologue
    .line 1092
    const/4 v0, 0x0

    .line 1093
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 13
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1004
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1005
    .local v8, "identity":J
    const/4 v6, 0x0

    .line 1007
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1013
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1014
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 1015
    .local v10, "type":I
    const/4 v0, 0x3

    if-eq v10, v0, :cond_0

    const/4 v0, 0x5

    if-ne v10, v0, :cond_2

    :cond_0
    move v0, v12

    .line 1021
    :goto_0
    if-eqz v6, :cond_1

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1026
    .end local v10    # "type":I
    :goto_1
    return v0

    .restart local v10    # "type":I
    :cond_2
    move v0, v11

    .line 1015
    goto :goto_0

    .line 1021
    .end local v10    # "type":I
    :cond_3
    if-eqz v6, :cond_4

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    move v0, v11

    .line 1026
    goto :goto_1

    .line 1018
    :catch_0
    move-exception v7

    .line 1019
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "[IccSmsInterfaceManager]isFailedOrDraft: query message type failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    if-eqz v6, :cond_5

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 1021
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 1034
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1035
    .local v8, "identity":J
    const/4 v6, 0x0

    .line 1037
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "body"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1046
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    if-eqz v6, :cond_0

    .line 1053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1055
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    :goto_0
    return-object v0

    .line 1052
    :cond_1
    if-eqz v6, :cond_2

    .line 1053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1055
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move-object v0, v10

    .line 1057
    goto :goto_0

    .line 1049
    :catch_0
    move-exception v7

    .line 1050
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "[IccSmsInterfaceManager]loadText: query message text failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1052
    if-eqz v6, :cond_3

    .line 1053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1055
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1052
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1055
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private returnUnspecifiedFailure(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1061
    if-eqz p1, :cond_0

    .line 1063
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private returnUnspecifiedFailure(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_1

    .line 1077
    :cond_0
    return-void

    .line 1074
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1075
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setCdmaBroadcastActivation(Z)Z
    .locals 5
    .param p1, "activate"    # Z

    .prologue
    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setCdmaBroadcastActivation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 876
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 877
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 879
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 880
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 889
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cdma broadcast activation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 887
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .locals 5
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .prologue
    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setCdmaBroadcastConfig with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configurations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 856
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 857
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 859
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 860
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 867
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 869
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cdma broadcast config"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 867
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setCellBroadcastActivation(Z)Z
    .locals 5
    .param p1, "activate"    # Z

    .prologue
    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setCellBroadcastActivation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 836
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 837
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 839
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 840
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 849
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cell broadcast activation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 847
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 5
    .param p1, "configs"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setGsmBroadcastConfig with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configurations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 816
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 819
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 820
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 829
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cell broadcast config"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method protected buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 554
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 557
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 558
    .local v0, "ba":[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    if-nez v4, :cond_0

    .line 559
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 565
    .end local v0    # "ba":[B
    :cond_1
    return-object v3
.end method

.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .prologue
    const/4 v2, 0x0

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyMessageToIccEf: status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pdu=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), smsc=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 280
    const-string v3, "Copying message to Icc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    :goto_0
    return v2

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 286
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 290
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 294
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 303
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 300
    .restart local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized disableCdmaBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 706
    monitor-enter p0

    :try_start_0
    const-string v4, "disableCdmaBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 708
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 710
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Disabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove cdma broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    :goto_0
    monitor-exit p0

    return v2

    .line 724
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed cdma broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 727
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 729
    goto :goto_0

    .line 706
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 601
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 615
    if-nez p3, :cond_0

    .line 616
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableGsmBroadcastRange(II)Z

    move-result v0

    .line 618
    :goto_0
    return v0

    .line 617
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCdmaBroadcastRange(II)Z

    move-result v0

    goto :goto_0

    .line 620
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a supportted RAN Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized disableGsmBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 652
    monitor-enter p0

    :try_start_0
    const-string v4, "disableGsmBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 654
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 656
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Disabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove GSM cell broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :goto_0
    monitor-exit p0

    return v2

    .line 670
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed GSM cell broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 673
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 675
    goto :goto_0

    .line 652
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized enableCdmaBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    monitor-enter p0

    :try_start_0
    const-string v4, "enableCdmaBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 681
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 683
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Enabling cdma broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add cdma broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :goto_0
    monitor-exit p0

    return v2

    .line 697
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added cdma broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 700
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 702
    goto :goto_0

    .line 679
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 597
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 605
    if-nez p3, :cond_0

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableGsmBroadcastRange(II)Z

    move-result v0

    .line 608
    :goto_0
    return v0

    .line 607
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 608
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCdmaBroadcastRange(II)Z

    move-result v0

    goto :goto_0

    .line 610
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a supportted RAN Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized enableGsmBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 625
    monitor-enter p0

    :try_start_0
    const-string v4, "enableGsmBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 627
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 629
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Enabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add GSM cell broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :goto_0
    monitor-exit p0

    return v2

    .line 643
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added GSM cell broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 646
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 648
    goto :goto_0

    .line 625
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected enforceReceiveAndSend(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 316
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Reading messages from Icc"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 343
    :goto_0
    return-object v3

    .line 323
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 325
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 326
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_1

    .line 327
    const-string v3, "IccSmsInterfaceManager"

    const-string v5, "Cannot load Sms records. No icc card?"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 330
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    monitor-exit v4

    goto :goto_0

    .line 342
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 334
    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 335
    .local v2, "response":Landroid/os/Message;
    const/16 v3, 0x6f3c

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "interrupted while trying to load from the Icc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSmscAddressFromIcc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1107
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetSmscLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1108
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1110
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/PhoneBase;->getSmscAddress(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetSmscLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscAddress:Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "interrupted while trying to get SMSC address"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1119
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCarrierPrivilege()V

    .line 446
    const-string v0, "SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n receivedIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 452
    return-void
.end method

.method public isImsSmsSupported()Z
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 893
    const-string v0, "IccSmsInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method protected makeSmsRecordData(I[B)[B
    .locals 5
    .param p1, "status"    # I
    .param p2, "pdu"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 578
    const/16 v2, 0xb0

    new-array v0, v2, [B

    .line 584
    .local v0, "data":[B
    :goto_0
    and-int/lit8 v2, p1, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 586
    array-length v2, p2

    invoke-static {p2, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 589
    array-length v2, p2

    add-int/lit8 v1, v2, 0x1

    .local v1, "j":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 590
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 580
    .end local v0    # "data":[B
    .end local v1    # "j":I
    :cond_0
    const/16 v2, 0xff

    new-array v0, v2, [B

    .restart local v0    # "data":[B
    goto :goto_0

    .line 593
    .restart local v1    # "j":I
    :cond_1
    return-object v0
.end method

.method protected markMessagesAsRead(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x3

    .line 165
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 171
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_2

    .line 174
    const-string v1, "SMS"

    invoke-static {v1, v11}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "markMessagesAsRead - aborting, no icc card present."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 182
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_0

    .line 183
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 184
    .local v6, "ba":[B
    aget-byte v1, v6, v12

    if-ne v1, v11, :cond_3

    .line 185
    array-length v9, v6

    .line 186
    .local v9, "n":I
    add-int/lit8 v1, v9, -0x1

    new-array v10, v1, [B

    .line 187
    .local v10, "nba":[B
    add-int/lit8 v1, v9, -0x1

    invoke-static {v6, v13, v10, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    invoke-virtual {p0, v13, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 189
    .local v3, "record":[B
    const/16 v1, 0x6f3c

    add-int/lit8 v2, v8, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 190
    const-string v1, "SMS"

    invoke-static {v1, v11}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " marked as read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 182
    .end local v3    # "record":[B
    .end local v9    # "n":I
    .end local v10    # "nba":[B
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData: destAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' sentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deliveryIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->hook_noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Sending SMS message"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v2, "SMS"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    const/16 v16, 0x0

    .line 488
    .local v16, "i":I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 489
    .local v19, "part":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartText: destAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", part["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    move/from16 v16, v17

    .line 491
    .end local v17    # "i":I
    .restart local v16    # "i":I
    goto :goto_0

    .line 493
    .end local v16    # "i":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "part":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/AppOpsManager;->hook_noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    :cond_1
    :goto_1
    return-void

    .line 498
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 500
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_6

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v2

    if-nez v2, :cond_6

    .line 501
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 504
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 505
    .local v5, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v16, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 511
    :goto_3
    const/4 v6, 0x0

    .line 512
    .local v6, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-le v2, v0, :cond_3

    .line 513
    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "singleSentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 516
    .restart local v6    # "singleSentIntent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v7, 0x0

    .line 517
    .local v7, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-le v2, v0, :cond_4

    .line 518
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 521
    .restart local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 501
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 508
    .end local v6    # "singleSentIntent":Landroid/app/PendingIntent;
    .end local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v16, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 528
    .end local v5    # "singlePart":Ljava/lang/String;
    .end local v16    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v11, p4

    check-cast v11, Ljava/util/ArrayList;

    move-object/from16 v12, p5

    check-cast v12, Ljava/util/ArrayList;

    move-object/from16 v13, p6

    check-cast v13, Ljava/util/ArrayList;

    const/4 v14, 0x0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v15, p1

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 935
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.SEND_SMS"

    const-string v5, "Sending SMS message"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 942
    .local v18, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 943
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "[IccSmsInterfaceManager]sendStoredMultipartText: not FAILED or DRAFT message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    goto :goto_0

    .line 948
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v19

    .line 949
    .local v19, "textAndAddress":[Ljava/lang/String;
    if-nez v19, :cond_3

    .line 950
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "[IccSmsInterfaceManager]sendStoredMultipartText: can not load text"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    goto :goto_0

    .line 954
    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 955
    .local v12, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_5

    .line 956
    :cond_4
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "[IccSmsInterfaceManager]sendStoredMultipartText: can not divide text"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    goto :goto_0

    .line 961
    :cond_5
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v19, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    .line 963
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_9

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v3

    if-nez v3, :cond_9

    .line 964
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 967
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 968
    .local v6, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v17, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 974
    :goto_2
    const/4 v7, 0x0

    .line 975
    .local v7, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-le v3, v0, :cond_6

    .line 976
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 979
    .restart local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v8, 0x0

    .line 980
    .local v8, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-le v3, v0, :cond_7

    .line 981
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 984
    .restart local v8    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v4, 0x1

    aget-object v4, v19, v4

    move-object/from16 v5, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 964
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 971
    .end local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    .end local v8    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v17, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 990
    .end local v6    # "singlePart":Ljava/lang/String;
    .end local v17    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v3, 0x1

    aget-object v10, v19, v3

    move-object/from16 v13, p4

    check-cast v13, Ljava/util/ArrayList;

    move-object/from16 v14, p5

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v11, p3

    move-object/from16 v15, p2

    move-object/from16 v16, p1

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x1

    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v0, "SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendStoredText: scAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " messageUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deliveryIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    :goto_0
    return-void

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 917
    .local v8, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 918
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "[IccSmsInterfaceManager]sendStoredText: not FAILED or DRAFT message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 922
    :cond_2
    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v9

    .line 923
    .local v9, "textAndAddress":[Ljava/lang/String;
    if-nez v9, :cond_3

    .line 924
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "[IccSmsInterfaceManager]sendStoredText: can not load text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 928
    :cond_3
    aget-object v0, v9, v3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    aget-object v1, v9, v3

    const/4 v2, 0x0

    aget-object v3, v9, v2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendText: destAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' sentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deliveryIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->hook_noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 541
    return-void
.end method

.method public setSmscAddressToIcc(Ljava/lang/String;)Z
    .locals 5
    .param p1, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 1123
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetSmscLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1124
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1126
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscSuccess:Z

    .line 1127
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetSmscLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1135
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscSuccess:Z

    return v2

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set SMSC address"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B

    .prologue
    const/4 v1, 0x0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMessageOnIccEf: index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ==> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 226
    const-string v2, "Updating message on Icc"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v2, v4, v7, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    :goto_0
    return v1

    .line 231
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 232
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 233
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 235
    .local v5, "response":Landroid/os/Message;
    if-nez p3, :cond_2

    .line 240
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :goto_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 243
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V

    goto :goto_1

    .line 262
    .end local v5    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 247
    .restart local v5    # "response":Landroid/os/Message;
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 248
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_3

    .line 249
    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    .line 250
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    monitor-exit v7

    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 253
    .local v3, "record":[B
    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 259
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v3    # "record":[B
    :catch_0
    move-exception v6

    .line 260
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by index"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 200
    return-void
.end method

.method public updateVoiceMessageCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updateVoiceMessageCount(I)V

    .line 1103
    return-void
.end method
