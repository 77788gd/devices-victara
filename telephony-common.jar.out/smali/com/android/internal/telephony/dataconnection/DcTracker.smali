.class public final Lcom/android/internal/telephony/dataconnection/DcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTracker$1;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String;

.field private static final PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String;

.field private static final PROVISIONING_SPINNER_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final PUPPET_MASTER_RADIO_STRESS_TEST:Ljava/lang/String; = "gsm.defaultpdpcontext.active"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private dun_dedupe_allowed:Z

.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

.field private mCanSetPreferApn:Z

.field private mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDeregistrationAlarmState:Z

.field private mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisconnectPendingCount:I

.field private mImsDeregistrationDelayIntent:Landroid/app/PendingIntent;

.field public mImsRegistrationState:Z

.field private mIsEnhancedDataRoaming:Z

.field protected mOosIsDisconnect:Z

.field private final mProvisionActionName:Ljava/lang/String;

.field private mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProvisioningSpinner:Landroid/app/ProgressDialog;

.field private mReregisterOnReconnectFailure:Z

.field private mWaitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 151
    const-string v0, "persist.telephony.cdma.protocol"

    const-string v1, "IP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String;

    .line 157
    const-string v0, "persist.telephony.cdma.rproto"

    const-string v1, "IP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const v8, 0x42015

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 99
    const-string v3, "DCT"

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    .line 107
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 109
    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 127
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 146
    const-string v3, "persist.telephony.oosisdc"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOosIsDisconnect:Z

    .line 160
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 170
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->dun_dedupe_allowed:Z

    .line 177
    new-instance v3, Lcom/motorola/android/content/MSimContext;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsEnhancedDataRoaming:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    .line 182
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWaitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 183
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeregistrationAlarmState:Z

    .line 184
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsDeregistrationDelayIntent:Landroid/app/PendingIntent;

    .line 189
    const-string v3, "GsmDCT.constructor"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 191
    iput-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3, v4, p0, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 199
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 202
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initApnContexts()V

    .line 208
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 210
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.data-reconnect."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.data-restart-trysetup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 217
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initEmergencyApnSetting()V

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.PROVISION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    return-void
.end method

.method private addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "networkConfig"    # Landroid/net/NetworkConfig;

    .prologue
    .line 477
    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "DCT"

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 479
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 481
    return-object v0
.end method

.method private addEmergencyApnSetting()V
    .locals 5

    .prologue
    .line 3572
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_0

    .line 3573
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 3574
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 3591
    :cond_0
    :goto_0
    return-void

    .line 3576
    :cond_1
    const/4 v1, 0x0

    .line 3577
    .local v1, "hasEmergencyApn":Z
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3578
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v4, "emergency"

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3579
    const/4 v1, 0x1

    .line 3584
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v1, :cond_4

    .line 3585
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3587
    :cond_4
    const-string v3, "addEmergencyApnSetting - E-APN setting is already present"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3034
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-nez p1, :cond_0

    .line 3035
    const/4 v3, 0x0

    .line 3044
    :goto_0
    return-object v3

    .line 3038
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3039
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 3040
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3039
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3044
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 6
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 2750
    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v4, :cond_2

    .line 2751
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2752
    .local v0, "apnType1":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "index1":I
    :goto_0
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 2753
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2754
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2757
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2758
    .local v1, "apnType2":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 2759
    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2760
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2762
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APN1: is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APN2: is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2766
    .end local v0    # "apnType1":Ljava/lang/StringBuilder;
    .end local v1    # "apnType2":Ljava/lang/StringBuilder;
    .end local v2    # "index1":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "index1":I
    :goto_2
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 2767
    const/4 v3, 0x0

    .local v3, "index2":I
    :goto_3
    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 2768
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2771
    :cond_3
    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v4, :cond_4

    const-string v4, "apnTypeSameAny: return true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2772
    :cond_4
    const/4 v4, 0x1

    .line 2778
    .end local v3    # "index2":I
    :goto_4
    return v4

    .line 2767
    .restart local v3    # "index2":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2766
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2777
    .end local v3    # "index2":I
    :cond_7
    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v4, :cond_8

    const-string v4, "apnTypeSameAny: return false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2778
    :cond_8
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 4
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2784
    const-string v2, "dun"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "dun"

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v0, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->dun_dedupe_allowed:Z

    if-eqz v2, :cond_6

    .line 2790
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v2, v3, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iget v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v2, v3, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2808
    :cond_4
    :goto_0
    return v0

    :cond_5
    move v0, v1

    .line 2790
    goto :goto_0

    .line 2808
    :cond_6
    const-string v2, "dun"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "dun"

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v2, v3, :cond_7

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iget v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v2, v3, :cond_7

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "enabled"    # Z
    .param p3, "met"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1746
    const/4 v0, 0x0

    .line 1747
    .local v0, "cleanup":Z
    const/4 v2, 0x0

    .line 1749
    .local v2, "trySetup":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyNewState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1754
    const/4 v0, 0x1

    .line 1755
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 1756
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 1757
    .local v1, "state":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1808
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 1809
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDependencyMet(Z)V

    .line 1812
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDataStallStarted:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    .line 1813
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendDataStallNotification(ZZ)V

    .line 1814
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->putRecoveryAction(I)V

    .line 1817
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1818
    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    .line 1819
    :cond_3
    :goto_1
    return-void

    .line 1763
    .restart local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_0
    const-string v3, "applyNewState: \'ready\' so return"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1771
    :pswitch_1
    const/4 v2, 0x1

    .line 1772
    const-string v3, "dataEnabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 1776
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_4
    if-eqz p3, :cond_6

    .line 1777
    const-string v3, "dataDisabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dun"

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1788
    const/4 v0, 0x1

    goto :goto_0

    .line 1790
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 1793
    :cond_6
    const-string v3, "dependencyUnmet"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 1796
    :cond_7
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1797
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1798
    const-string v3, "dependencyMet"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1802
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_8

    .line 1803
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1805
    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    .line 1800
    :cond_9
    const-string v3, "dataEnabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_2

    .line 1757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "requestedApnType"    # Ljava/lang/String;
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 2893
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: E requestedApnType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2896
    .local v1, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const-string v8, "dun"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2897
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v3

    .line 2898
    .local v3, "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v3, :cond_0

    .line 2899
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2900
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2989
    .end local v3    # "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_0
    return-object v1

    .line 2905
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2911
    .local v6, "operator":Ljava/lang/String;
    const/4 v7, 0x1

    .line 2913
    .local v7, "usePreferred":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120070

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    const/4 v7, 0x1

    .line 2920
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: usePreferred="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " canSetPreferApn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mPreferredApn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " operator="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " radioTech="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2926
    if-eqz v7, :cond_4

    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2929
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: Preferred APN:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2932
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2933
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v8, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v8, p2, :cond_3

    .line 2934
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2935
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: X added preferred apnList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2913
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2915
    :catch_0
    move-exception v4

    .line 2916
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v8, "buildWaitingApns: usePreferred NotFoundException set to true"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2917
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2939
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const-string v8, "default"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2941
    const-string v8, "buildWaitingApns: no preferred APN"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2942
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 2943
    iput-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2951
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 2952
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: mAllApnSettings="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2953
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2954
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: apn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2955
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2956
    iget v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v8, p2, :cond_7

    .line 2957
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: adding apn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2946
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v8, "buildWaitingApns: no preferred APN"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2947
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 2948
    iput-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto/16 :goto_2

    .line 2961
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: bearer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "radioTech:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2967
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: couldn\'t handle requesedApnType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2973
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v8, "mAllApnSettings is empty!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2977
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0xd

    if-eq p2, v8, :cond_b

    invoke-static {p2}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2979
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDummyCdmaAPN(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    .line 2980
    .local v2, "dummyAPN":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v2, :cond_b

    .line 2981
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2983
    const-string v8, "buildWaitingApns: added dummy cdma profile"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2988
    .end local v2    # "dummyAPN":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildWaitingApns: X apnList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1239
    if-nez p1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 1243
    .local v1, "intent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1244
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1246
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1247
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 10
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1822
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, "apnType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1825
    .local v4, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v8, "dun"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1826
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v4

    .line 1829
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: apnContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1832
    const/4 v7, 0x0

    .line 1833
    .local v7, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v6, 0x0

    .line 1834
    .local v6, "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1835
    .local v2, "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    .line 1836
    .local v3, "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "curDcac: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1837
    if-eqz v3, :cond_3

    .line 1838
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 1839
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apnSetting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1840
    if-eqz v4, :cond_2

    .line 1841
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1842
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1845
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: found dun conn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curApnCtx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1892
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_1
    return-object v3

    .line 1852
    .restart local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v3    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :pswitch_2
    move-object v7, v3

    .line 1853
    move-object v6, v2

    goto :goto_0

    .line 1859
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1860
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 1863
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: found canHandle conn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curApnCtx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1870
    :pswitch_5
    move-object v7, v3

    .line 1871
    move-object v6, v2

    goto/16 :goto_0

    .line 1878
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    sget-boolean v8, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v8, :cond_1

    .line 1879
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: not conn curApnCtx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1883
    .end local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_4
    if-eqz v7, :cond_5

    .line 1885
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: found potential conn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curApnCtx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v3, v7

    .line 1888
    goto/16 :goto_1

    .line 1891
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: NO conn apnContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1892
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1842
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1860
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private cleanUpConnectionsOnUpdatedApns(Z)V
    .locals 9
    .param p1, "tearDown"    # Z

    .prologue
    .line 3594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanUpConnectionsOnUpdatedApns: tearDown="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3595
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3596
    const-string v7, "apnChanged"

    invoke-virtual {p0, p1, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 3629
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3630
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 3631
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 3634
    :cond_1
    const-string v7, "default"

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    .line 3636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDisconnectPendingCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3637
    if-eqz p1, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v7, :cond_2

    .line 3638
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    .line 3639
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    .line 3641
    :cond_2
    return-void

    .line 3598
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3599
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    sget-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanUpConnectionsOnUpdatedApns for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3601
    :cond_5
    const/4 v1, 0x1

    .line 3602
    .local v1, "cleanUpApn":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v2

    .line 3604
    .local v2, "currentWaitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3605
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 3606
    .local v5, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 3608
    .local v6, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    sget-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new waitingApns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3609
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 3610
    const/4 v1, 0x0

    .line 3611
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 3612
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 3613
    sget-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new waiting apn is different at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3614
    :cond_7
    const/4 v1, 0x1

    .line 3615
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 3622
    .end local v3    # "i":I
    .end local v5    # "radioTech":I
    .end local v6    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_8
    if-eqz v1, :cond_4

    .line 3623
    const-string v7, "apnChanged"

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3624
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .line 3611
    .restart local v3    # "i":I
    .restart local v5    # "radioTech":I
    .restart local v6    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private cleanUpRetryingApns(ZLjava/lang/String;)Z
    .locals 5
    .param p1, "tearDown"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpRetryingApns: tearDown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2521
    const/4 v1, 0x0

    .line 2523
    .local v1, "didDisconnect":Z
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2524
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_0

    .line 2525
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2527
    const/4 v1, 0x1

    goto :goto_0

    .line 2530
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    return v1
.end method

.method private createAllApnList()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 2661
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 2667
    .local v8, "operator":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2668
    .local v9, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v9, :cond_0

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->isRoamingBrokerOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2669
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRoamingBrokerHomeOperator()Ljava/lang/String;

    move-result-object v7

    .line 2670
    .local v7, "homeIccIdOperator":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2671
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2673
    .local v10, "values":[Ljava/lang/String;
    aget-object v0, v10, v1

    if-eqz v0, :cond_0

    aget-object v0, v10, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2674
    const/4 v0, 0x1

    aget-object v8, v10, v0

    .line 2680
    .end local v7    # "homeIccIdOperator":Ljava/lang/String;
    .end local v10    # "values":[Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_2

    .line 2682
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const-string v1, "gsm.apn.sim.operator.numeric"

    invoke-static {v0, v1, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2688
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2690
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2693
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2694
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2695
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 2697
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2701
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    .line 2703
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dedupeApnSettings()V

    .line 2705
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2707
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2718
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: X mAllApnSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    .line 2721
    return-void

    .line 2711
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2712
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2713
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2714
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 2716
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    .local v1, "mnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v2, "mvnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1383
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1385
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 1386
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v0, :cond_3

    .line 1397
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1400
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v4, v1

    .line 1401
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createApnList: X result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1402
    return-object v4

    .line 1390
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1391
    if-eqz v3, :cond_1

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1392
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1395
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    move-object v4, v2

    .line 1400
    goto :goto_1
.end method

.method private createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 7

    .prologue
    .line 2858
    const-string v4, "createDataConnection E"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2860
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 2861
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v4, v2, p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    .line 2863
    .local v0, "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    const-string v4, "DCT"

    invoke-direct {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 2865
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v1, v4, p0, v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v3

    .line 2866
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 2867
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDataConnection() X id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2873
    return-object v1

    .line 2869
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDataConnection: Could not connect to dcac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createDummyCdmaAPN(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 29
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "requestedApnType"    # Ljava/lang/String;

    .prologue
    .line 2994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDummyCdmaAPN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2996
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/4 v3, 0x0

    const-string v4, "default"

    aput-object v4, v27, v3

    const/4 v3, 0x1

    const-string v4, "mms"

    aput-object v4, v27, v3

    const/4 v3, 0x2

    const-string v4, "supl"

    aput-object v4, v27, v3

    const/4 v3, 0x3

    const-string v4, "hipri"

    aput-object v4, v27, v3

    const/4 v3, 0x4

    const-string v4, "fota"

    aput-object v4, v27, v3

    const/4 v3, 0x5

    const-string v4, "ims"

    aput-object v4, v27, v3

    const/4 v3, 0x6

    const-string v4, "cbs"

    aput-object v4, v27, v3

    .line 3006
    .local v27, "defaultApnTypes":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v3, 0x0

    const-string v4, "dun"

    aput-object v4, v28, v3

    .line 3010
    .local v28, "dunApnTypes":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3011
    .local v1, "profile":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3015
    const-string v3, "dun"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3016
    move-object/from16 v14, v28

    .line 3017
    .local v14, "types":[Ljava/lang/String;
    const/4 v2, 0x3

    .line 3024
    .local v2, "apnId":I
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .end local v1    # "profile":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    sget-object v15, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String;

    sget-object v16, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, ""

    const-string v26, ""

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 3029
    .end local v2    # "apnId":I
    .end local v14    # "types":[Ljava/lang/String;
    .restart local v1    # "profile":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    return-object v1

    .line 3021
    :cond_1
    move-object/from16 v14, v27

    .line 3022
    .restart local v14    # "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "apnId":I
    goto :goto_0
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z
    .locals 4
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .prologue
    .line 1406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: check if dcac is inuse dcac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1407
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1408
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: in use by apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1410
    const/4 v2, 0x0

    .line 1419
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    .line 1416
    :cond_1
    const-string v2, "dataConnectionNotInUse: tearDownAll"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1417
    const-string v2, "No connection"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 1418
    const-string v2, "dataConnectionNotInUse: not in use return true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1419
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private dedupeApnSettings()V
    .locals 7

    .prologue
    .line 2724
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2728
    .local v4, "resultApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v1, 0x0

    .line 2729
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    .line 2730
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2731
    .local v0, "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v5, 0x0

    .line 2732
    .local v5, "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    add-int/lit8 v2, v1, 0x1

    .line 2733
    .local v2, "j":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 2734
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2735
    .restart local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2736
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v3

    .line 2737
    .local v3, "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2738
    move-object v0, v3

    .line 2739
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2741
    .end local v3    # "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2744
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 2745
    goto :goto_0

    .line 2746
    .end local v0    # "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "j":I
    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    return-void
.end method

.method private destroyDataConnections()V
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2878
    const-string v0, "destroyDataConnections: clear mDataConnectionList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2879
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2883
    :goto_0
    return-void

    .line 2881
    :cond_0
    const-string v0, "destroyDataConnections: mDataConnecitonList is empty, ignore"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 1566
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1567
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getCidSync()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1571
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 4

    .prologue
    .line 1423
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1424
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isInactiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findFreeDataConnection: found free DataConnection= dcac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1433
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v0

    .line 1432
    :cond_1
    const-string v2, "findFreeDataConnection: NO free DataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1433
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getApnDelay()I
    .locals 2

    .prologue
    .line 2335
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    if-eqz v0, :cond_0

    .line 2336
    const-string v0, "persist.radio.apn_ff_delay"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2339
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.radio.apn_delay"

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getCellLocationId()I
    .locals 3

    .prologue
    .line 3266
    const/4 v0, -0x1

    .line 3267
    .local v0, "cid":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 3269
    .local v1, "loc":Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    .line 3270
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    .line 3271
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 3276
    :cond_0
    :goto_0
    return v0

    .line 3272
    .restart local v1    # "loc":Landroid/telephony/CellLocation;
    :cond_1
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 3273
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2644
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isNvSubscription()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2645
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2646
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumberic - returning from NV: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2652
    :goto_0
    return-object v1

    .line 2648
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2649
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2650
    .restart local v1    # "result":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumberic - returning from card: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2649
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 3068
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3069
    const-string v0, "getPreferredApn: X not found mAllApnSettings.isEmpty"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3106
    :goto_0
    return-object v3

    .line 3073
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 3074
    .local v10, "subId":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3075
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v11

    const-string v4, "name"

    aput-object v4, v2, v12

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3079
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3080
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 3084
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: mRequestedApnType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cursor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cursor.count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3087
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 3089
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3090
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3091
    .local v9, "pos":I
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3092
    .local v8, "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: apnSetting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3093
    iget v0, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: X found apnSetting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3095
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 3096
    goto/16 :goto_0

    .line 3082
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v9    # "pos":I
    :cond_2
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    goto/16 :goto_1

    :cond_3
    move v0, v11

    .line 3084
    goto :goto_2

    .line 3101
    :cond_4
    if-eqz v6, :cond_5

    .line 3102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3105
    :cond_5
    const-string v0, "getPreferredApn: X not found"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "appFamily"    # I

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method private imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "imsiDB"    # Ljava/lang/String;
    .param p2, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1277
    .local v3, "len":I
    const/4 v2, 0x0

    .line 1279
    .local v2, "idxCompare":I
    if-gtz v3, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return v4

    .line 1280
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_0

    .line 1282
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1283
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1284
    .local v0, "c":C
    const/16 v5, 0x78

    if-eq v0, v5, :cond_2

    const/16 v5, 0x58

    if-eq v0, v5, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 1282
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1290
    .end local v0    # "c":C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private initEmergencyApnSetting()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3554
    const-string v3, "type=\"emergency\""

    .line 3555
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3558
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3559
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3560
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3561
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3564
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3566
    :cond_1
    return-void
.end method

.method private isApnInCurrentList(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 4
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v2, 0x0

    .line 2318
    if-nez p1, :cond_1

    .line 2327
    :cond_0
    :goto_0
    return v2

    .line 2322
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2323
    .local v0, "curAPN":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2324
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v1, 0x0

    .line 742
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 743
    .local v0, "radioTech":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vzw800"

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 748
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data profile type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed due to roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 753
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v2, 0x0

    .line 1588
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1589
    .local v1, "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1594
    .end local v1    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    :goto_0
    return v2

    .line 1590
    .restart local v1    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_0

    .line 1591
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNvSubscription()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2615
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 2616
    .local v0, "radioTech":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-nez v3, :cond_1

    .line 2624
    :cond_0
    :goto_0
    return v1

    .line 2619
    :cond_1
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getFamilyFromRadioTechnology(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 2622
    goto :goto_0
.end method

.method private isOnlySingleDcAllowed(I)Z
    .locals 5
    .param p1, "rilRadioTech"    # I

    .prologue
    .line 1604
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 1606
    .local v2, "singleDcRats":[I
    const/4 v1, 0x0

    .line 1607
    .local v1, "onlySingleDcAllowed":Z
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "persist.telephony.test.singleDc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1609
    const/4 v1, 0x1

    .line 1611
    :cond_0
    if-eqz v2, :cond_2

    .line 1612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 1613
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    .line 1612
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1617
    .end local v0    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOnlySingleDcAllowed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1618
    return v1
.end method

.method private makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1337
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1339
    .local v15, "types":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v20, "profile_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v21, "modem_cognitive"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v21, 0x1

    :goto_1
    const-string v22, "max_conns"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v23, "wait_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const-string v24, "max_conns_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const-string v25, "mtu"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v26, "mvno_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, "mvno_match_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v2 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1375
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v2

    .line 1339
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_1
    const/16 v21, 0x0

    goto :goto_1
.end method

.method private mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 33
    .param p1, "dest"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "src"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 2834
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2835
    .local v31, "resultTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2836
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    move-object/from16 v28, v0

    .local v28, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    aget-object v32, v28, v29

    .line 2837
    .local v32, "srcType":Ljava/lang/String;
    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2836
    :cond_0
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 2839
    .end local v32    # "srcType":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 2840
    .local v9, "mmsc":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 2841
    .local v10, "mmsProxy":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 2842
    .local v11, "mmsPort":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 2843
    .local v7, "proxy":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 2844
    .local v8, "port":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    const-string v3, "IPV4V6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2845
    .local v16, "protocol":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    const-string v3, "IPV4V6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2848
    .local v17, "roamingProtocol":Ljava/lang/String;
    :goto_7
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    :cond_2
    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v2 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2839
    .end local v7    # "proxy":Ljava/lang/String;
    .end local v8    # "port":Ljava/lang/String;
    .end local v9    # "mmsc":Ljava/lang/String;
    .end local v10    # "mmsProxy":Ljava/lang/String;
    .end local v11    # "mmsPort":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v17    # "roamingProtocol":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    goto/16 :goto_1

    .line 2840
    .restart local v9    # "mmsc":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    goto/16 :goto_2

    .line 2841
    .restart local v10    # "mmsProxy":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    goto/16 :goto_3

    .line 2842
    .restart local v11    # "mmsPort":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    goto/16 :goto_4

    .line 2843
    .restart local v7    # "proxy":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    goto/16 :goto_5

    .line 2844
    .restart local v8    # "port":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_6

    .line 2845
    .restart local v16    # "protocol":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_7

    .line 2848
    .restart local v17    # "roamingProtocol":Ljava/lang/String;
    :cond_a
    const/16 v21, 0x0

    goto :goto_8
.end method

.method private notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3
    .param p1, "lastFailCauseCode"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    :cond_0
    return-void
.end method

.method private onApnChanged()V
    .locals 2

    .prologue
    .line 1526
    const-string v0, "onApnChanged: tryRestartDataConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1527
    const-string v0, "apnChanged"

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->tryRestartDataConnections(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1528
    return-void
.end method

.method private onDataConnectionAttached()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 774
    const-string v0, "onDataConnectionAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 776
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_1

    .line 777
    const-string v0, "onDataConnectionAttached: start polling notify attached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 780
    const-string v0, "dataAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 785
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    if-eqz v0, :cond_0

    .line 786
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    .line 788
    :cond_0
    const-string v0, "dataAttached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 789
    return-void

    .line 783
    :cond_1
    const-string v0, "dataAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onNvReady()V
    .locals 1

    .prologue
    .line 1721
    const-string v0, "onNvReady"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1722
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 1723
    const-string v0, "nvReady"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1724
    return-void
.end method

.method private onRecordsLoaded()V
    .locals 2

    .prologue
    .line 1706
    const-string v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1707
    new-instance v0, Lcom/motorola/android/content/MSimContext;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    .line 1711
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 1712
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    const-string v0, "onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1715
    const-string v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1717
    :cond_0
    const-string v0, "simLoaded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1718
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 1258
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1259
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1260
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 1266
    :goto_0
    return-object v0

    .line 1263
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1646
    const/4 v1, 0x1

    .line 1647
    .local v1, "retry":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "reason":Ljava/lang/String;
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1652
    :cond_0
    const/4 v1, 0x0

    .line 1654
    :cond_1
    return v1
.end method

.method private setPreferredApn(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x0

    .line 3048
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-nez v4, :cond_1

    .line 3049
    const-string v4, "setPreferredApn: X !canSEtPreferApn"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3065
    :cond_0
    :goto_0
    return-void

    .line 3053
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 3054
    .local v1, "subId":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3055
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "setPreferredApn: delete"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3056
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3057
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3059
    if-ltz p1, :cond_0

    .line 3060
    const-string v4, "setPreferredApn: insert"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3061
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3062
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3063
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private setRadio(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 362
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 364
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z
    .locals 10
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "radioTech"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupData: apnContext="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1439
    const/4 v0, 0x0

    .line 1441
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v7

    .line 1442
    .local v7, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v7, :cond_0

    .line 1443
    const-string v2, "setupData: return for no apn found!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1519
    :goto_0
    return v1

    .line 1447
    :cond_0
    iget v3, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 1450
    .local v3, "profileId":I
    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    .line 1451
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v3

    .line 1458
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dun"

    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1460
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 1461
    if-eqz v0, :cond_3

    .line 1463
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v8

    .line 1464
    .local v8, "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v8, :cond_3

    .line 1466
    move-object v7, v8

    .line 1470
    .end local v8    # "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v0, :cond_8

    .line 1471
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1472
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1474
    const-string v2, "setupData: Higher priority ApnContext active.  Ignoring call"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_4
    const-string v2, "SinglePdnArbitration"

    invoke-virtual {p0, v9, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1486
    const-string v2, "setupData: Some calls are disconnecting first.  Wait and retry"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    :cond_5
    const-string v2, "setupData: Single pdp. Continue setting up data call."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1494
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 1496
    if-nez v0, :cond_7

    .line 1497
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 1500
    :cond_7
    if-nez v0, :cond_8

    .line 1501
    const-string v2, "setupData: No free DataConnection and couldn\'t create one, WEIRD"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1505
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupData: dcac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apnSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 1508
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 1509
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1510
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 1513
    .local v6, "msg":Landroid/os/Message;
    const v1, 0x42000

    iput v1, v6, Landroid/os/Message;->what:I

    .line 1514
    iput-object p1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1515
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getInitialMaxRetry()I

    move-result v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V

    .line 1518
    const-string v1, "setupData: initing!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move v1, v9

    .line 1519
    goto/16 :goto_0
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 898
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 899
    return-void
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .prologue
    .line 902
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataOnConnectableApns: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 903
    const/4 v4, 0x0

    .line 905
    .local v4, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 906
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataOnConnectableApns: apnContext "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_1

    .line 908
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    if-ne p2, v5, :cond_2

    .line 909
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 927
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 928
    const-string v5, "setupDataOnConnectableApns: isConnectable() call trySetupData"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 930
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 910
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 913
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto :goto_1

    .line 916
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 917
    .local v3, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getOriginalWaitingApns()Ljava/util/ArrayList;

    move-result-object v2

    .line 918
    .local v2, "originalApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 919
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 920
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 922
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto :goto_1

    .line 932
    .end local v2    # "originalApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .end local v3    # "radioTech":I
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 935
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    goto/16 :goto_0

    .line 939
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_6
    return-void
.end method

.method private startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1658
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1660
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.telephony.data-reconnect."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "reconnect_alarm_extra_reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    const-string v4, "reconnect_alarm_extra_type"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    .line 1666
    .local v3, "subId":I
    const-string v4, "subscription"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAlarmForReconnect: delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1673
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1675
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 1676
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1678
    return-void
.end method

.method private startAlarmForRestartTrySetup(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1681
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1682
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.data-restart-trysetup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1683
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "restart_trysetup_alarm_extra_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAlarmForRestartTrySetup: delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1689
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1691
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 1692
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1694
    return-void
.end method

.method private teardownForDun()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1227
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 1228
    .local v0, "rilRat":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tryRestartDataConnections(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1531
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 1532
    .local v1, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_4

    :cond_0
    move v0, v4

    .line 1535
    .local v0, "isDisconnected":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_5

    .line 1537
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1546
    :cond_1
    :goto_1
    const-string v2, "tryRestartDataConnections: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1547
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 1552
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    if-ne p2, v2, :cond_2

    .line 1553
    if-nez v0, :cond_6

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionsOnUpdatedApns(Z)V

    .line 1556
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1557
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1559
    :cond_3
    return-void

    .end local v0    # "isDisconnected":Z
    :cond_4
    move v0, v3

    .line 1532
    goto :goto_0

    .line 1539
    .restart local v0    # "isDisconnected":Z
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v2, :cond_1

    .line 1540
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateCurrentCarrierInProvider()Z

    goto :goto_1

    :cond_6
    move v4, v3

    .line 1553
    goto :goto_2
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 942
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z
    .locals 10
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 947
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trySetupData for type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " due to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " apnContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 949
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trySetupData with mIsPsRestricted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 952
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 955
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 956
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v7, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1030
    :goto_0
    return v6

    .line 964
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "emergency"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 965
    .local v2, "isEmergencyApn":Z
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    .line 966
    .local v5, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 967
    .local v1, "desiredPowerState":Z
    const/4 v0, 0x1

    .line 969
    .local v0, "checkUserDataEnabled":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ims"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 970
    const/4 v0, 0x0

    .line 977
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled(Z)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergency()Z

    move-result v8

    if-nez v8, :cond_9

    .line 980
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v8, :cond_3

    .line 981
    const-string v6, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 982
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 984
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 985
    .local v3, "radioTech":I
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    .line 986
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v8, :cond_8

    .line 987
    if-nez p2, :cond_4

    .line 988
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p2

    .line 990
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 991
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 992
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 993
    const-string v6, "trySetupData: X No APN found retValue=false"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move v6, v7

    .line 994
    goto/16 :goto_0

    .line 972
    .end local v3    # "radioTech":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 973
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x112009d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_6

    move v0, v6

    :goto_2
    goto/16 :goto_1

    :cond_6
    move v0, v7

    goto :goto_2

    .line 996
    .restart local v3    # "radioTech":I
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 998
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trySetupData: Create from mAllApnSettings : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1005
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trySetupData: call setupData, waitingApns : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1008
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    move-result v4

    .line 1009
    .local v4, "retValue":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1011
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trySetupData: X retValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move v6, v4

    .line 1012
    goto/16 :goto_0

    .line 1017
    .end local v3    # "radioTech":I
    .end local v4    # "retValue":Z
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v8, v9, :cond_a

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1019
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1020
    const-string v7, "trySetupData: X retValue=true"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1024
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1026
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1029
    const-string v6, "trySetupData: X apnContext not \'ready\' retValue=false"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move v6, v7

    .line 1030
    goto/16 :goto_0
.end method

.method private xorEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .prologue
    .line 2828
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 3365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 3366
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;
    .param p2, "disconnectAllCompleteMsg"    # Landroid/os/Message;

    .prologue
    .line 3373
    const-string v1, "cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3374
    if-eqz p2, :cond_0

    .line 3375
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3378
    :cond_0
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3379
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3380
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3381
    return-void
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)Z
    .locals 6
    .param p1, "tearDown"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpAllConnections: tearDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1065
    const/4 v1, 0x0

    .line 1066
    .local v1, "didDisconnect":Z
    const/4 v3, 0x0

    .line 1068
    .local v3, "specificdisable":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1069
    const-string v4, "specificDisabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1072
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1073
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 1074
    :cond_2
    if-eqz v3, :cond_3

    .line 1075
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ims"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApnConextType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 1082
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 1087
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 1088
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 1091
    const-string v4, "default"

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1093
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpConnection: mDisconnectPendingCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1094
    if-eqz p1, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v4, :cond_5

    .line 1095
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    .line 1099
    :cond_5
    return v1
.end method

.method protected cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 7
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v6, 0x0

    .line 1119
    if-nez p2, :cond_0

    .line 1120
    const-string v3, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1205
    :goto_0
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 1126
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnection: E tearDown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1129
    if-eqz p1, :cond_9

    .line 1130
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1133
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1134
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1135
    if-eqz v0, :cond_1

    .line 1137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnection: teardown, disconnected, !ready apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1140
    const-string v3, ""

    invoke-virtual {v0, p2, v3, v6}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 1142
    :cond_1
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 1195
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1196
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1199
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataForSinglePdnArbitration(Ljava/lang/String;)V

    .line 1202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnection: X tearDown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dcac="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1146
    :cond_4
    if-eqz v0, :cond_8

    .line 1147
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_2

    .line 1148
    const/4 v1, 0x0

    .line 1149
    .local v1, "disconnectAll":Z
    const-string v3, "dun"

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1152
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1154
    const-string v3, "cleanUpConnection: disconnectAll DUN connection"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1160
    const/4 v1, 0x1

    .line 1164
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnection: tearing down"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_6

    const-string v3, " all"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1167
    const v3, 0x4200f

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1168
    .local v2, "msg":Landroid/os/Message;
    if-eqz v1, :cond_7

    .line 1169
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 1174
    :goto_3
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1175
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    goto/16 :goto_1

    .line 1164
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6
    const-string v3, ""

    goto :goto_2

    .line 1171
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 1180
    .end local v1    # "disconnectAll":Z
    .end local v2    # "msg":Landroid/os/Message;
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1181
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1187
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->reqReset()V

    .line 1188
    :cond_a
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1189
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    goto/16 :goto_1
.end method

.method protected completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v6, 0x0

    .line 2089
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v1

    .line 2091
    .local v1, "isProvApn":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: successful, notify the world apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2093
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: MOBILE_PROVISIONING_ACTION url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2098
    const-string v3, "android.intent.action.MAIN"

    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2100
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2101
    const/high16 v3, 0x10400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2104
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2109
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    .line 2110
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    .line 2111
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 2112
    const v3, 0x4202a

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2116
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 2118
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 2119
    return-void

    .line 2105
    .restart local v2    # "newIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2106
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: startActivityAsUser failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decApnRefCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 332
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decRefCount()V

    .line 335
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 275
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    .line 278
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 280
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 290
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->destroyDataConnections()V

    .line 291
    return-void
.end method

.method public doMobileDataRecovery(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 3646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doMobileDataRecovery, step is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsThirdPartyDoingDataRecovery:Z

    .line 3648
    packed-switch p1, :pswitch_data_0

    .line 3675
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doMobileDataRecovery: Invalid recoveryAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3650
    :pswitch_0
    const-string v0, "doMobileDataRecovery stop doing data recovery"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsThirdPartyDoingDataRecovery:Z

    .line 3678
    :goto_0
    return-void

    .line 3654
    :pswitch_1
    const-string v0, "doMobileDataRecovery cleanup all connections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3655
    const-string v0, "pdpReset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 3658
    :pswitch_2
    const-string v0, "doMobileDataRecovery re-register"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto :goto_0

    .line 3662
    :pswitch_3
    const-string v0, "doMobileDataRecovery restarting radio"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3663
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    goto :goto_0

    .line 3666
    :pswitch_4
    const-string v0, "doMobileDataRecovery restarting radio with gsm.radioreset to true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3667
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3670
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3672
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    goto :goto_0

    .line 3671
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3483
    const-string v0, "DcTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3484
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReregisterOnReconnectFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " canSetPreferApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getOverallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionAsyncChannels=%s\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3491
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 456
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 593
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active apn string for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 594
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 595
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    .line 597
    .local v1, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v1, :cond_1

    .line 598
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 601
    .end local v1    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 578
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 579
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 582
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getAnyDataEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 709
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 710
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

    if-nez v4, :cond_1

    :cond_0
    monitor-exit v3

    .line 718
    :goto_0
    return v2

    .line 711
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 714
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 715
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 719
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 718
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAnyDataEnabled(Z)Z
    .locals 5
    .param p1, "checkUserDataEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 723
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 724
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-eqz v4, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

    if-nez v4, :cond_2

    .line 726
    :cond_1
    monitor-exit v3

    .line 735
    :goto_0
    return v2

    .line 728
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 731
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 732
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 736
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 735
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getApnPriority(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 354
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request for unsupported mobile name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 357
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    return v1
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3250
    const-string v1, "ims"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3251
    const/4 v0, 0x2

    .line 3261
    :cond_0
    :goto_0
    return v0

    .line 3252
    :cond_1
    const-string v1, "fota"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3253
    const/4 v0, 0x3

    goto :goto_0

    .line 3254
    :cond_2
    const-string v1, "cbs"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3255
    const/4 v0, 0x4

    goto :goto_0

    .line 3256
    :cond_3
    const-string v1, "ia"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3258
    const-string v1, "dun"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3259
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 547
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 548
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 550
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return link properites for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 556
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    .line 555
    :cond_0
    const-string v2, "return new LinkProperties"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 556
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 561
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 562
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 564
    .local v1, "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active pdp is not null, return NetworkCapabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 572
    .end local v1    # "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    .line 571
    :cond_0
    const-string v2, "return new NetworkCapabilities"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 572
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 7

    .prologue
    .line 641
    const/4 v3, 0x0

    .line 642
    .local v3, "isConnecting":Z
    const/4 v4, 0x1

    .line 643
    .local v4, "isFailed":Z
    const/4 v2, 0x0

    .line 645
    .local v2, "isAnyEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 646
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 647
    const/4 v2, 0x1

    .line 648
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 663
    const/4 v2, 0x1

    goto :goto_0

    .line 651
    :pswitch_0
    const-string v5, "overall state is CONNECTED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 652
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 682
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    return-object v5

    .line 655
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_1
    const/4 v3, 0x1

    .line 656
    const/4 v4, 0x0

    .line 657
    goto :goto_0

    .line 660
    :pswitch_2
    const/4 v4, 0x0

    .line 661
    goto :goto_0

    .line 669
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    .line 670
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 671
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 674
    :cond_2
    if-eqz v3, :cond_3

    .line 675
    const-string v5, "overall state is CONNECTING"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 676
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 677
    :cond_3
    if-nez v4, :cond_4

    .line 678
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 679
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 681
    :cond_4
    const-string v5, "overall state is FAILED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 682
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3495
    const-string v5, "getPcscfAddress()"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3496
    const/4 v0, 0x0

    .line 3498
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez p1, :cond_1

    .line 3499
    const-string v5, "apnType is null, return null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 3528
    :cond_0
    :goto_0
    return-object v3

    .line 3503
    :cond_1
    const-string v5, "emergency"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3504
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "emergency"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3512
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    if-nez v0, :cond_4

    .line 3513
    const-string v5, "apnContext is null, return null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 3514
    goto :goto_0

    .line 3505
    :cond_2
    const-string v5, "ims"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3506
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_1

    .line 3508
    :cond_3
    const-string v5, "apnType is invalid, return null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 3509
    goto :goto_0

    .line 3517
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 3518
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v3, 0x0

    .line 3520
    .local v3, "result":[Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 3521
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getPcscfAddr()[Ljava/lang/String;

    move-result-object v3

    .line 3523
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 3524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pcscf["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3523
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_5
    move-object v3, v4

    .line 3528
    goto :goto_0
.end method

.method protected getRoamingBrokerHomeOperator()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2630
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const-string v2, "persist.radio.dualimsi.hplmn"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2633
    .local v0, "homeIccIdOperator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broker home operator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2634
    return-object v0
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 621
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 622
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 625
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1580
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3113
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v5, v5, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    if-eqz v5, :cond_2

    .line 3114
    :cond_0
    const-string v4, "handleMessage: Ignore GSM msgs since GSM phone is inactive"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3247
    :cond_1
    :goto_0
    return-void

    .line 3118
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 3244
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3120
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 3124
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionDetached()V

    goto :goto_0

    .line 3128
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionAttached()V

    goto :goto_0

    .line 3132
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->doRecovery()V

    goto :goto_0

    .line 3136
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChanged()V

    goto :goto_0

    .line 3146
    :sswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 3148
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 3149
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    goto :goto_0

    .line 3157
    :sswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3158
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    .line 3159
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3160
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 3161
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 3164
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v4, v5, :cond_4

    .line 3165
    const-string v4, "psRestrictEnabled"

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 3166
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 3168
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3169
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_5

    .line 3170
    const-string v4, "psRestrictEnabled"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3171
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_0

    .line 3173
    :cond_5
    const-string v4, "**** Default ApnContext not found ****"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3174
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_1

    .line 3175
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Default ApnContext not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3182
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v4, :cond_6

    .line 3183
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_0

    .line 3184
    :cond_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 3185
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3187
    :cond_7
    const-string v4, "EVENT_TRY_SETUP request w/o apnContext or String"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3192
    :sswitch_8
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_8

    .line 3193
    .local v3, "tearDown":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CLEAN_UP_CONNECTION tearDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3194
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v4, :cond_9

    .line 3195
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .end local v3    # "tearDown":Z
    :cond_8
    move v3, v4

    .line 3192
    goto :goto_1

    .line 3197
    .restart local v3    # "tearDown":Z
    :cond_9
    const-string v4, "EVENT_CLEAN_UP_CONNECTION request w/o apn context, call super"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3198
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3202
    .end local v3    # "tearDown":Z
    :sswitch_9
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v4, :cond_a

    move v1, v4

    .line 3203
    .local v1, "enabled":Z
    :goto_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .end local v1    # "enabled":Z
    :cond_a
    move v1, v3

    .line 3202
    goto :goto_2

    .line 3207
    :sswitch_a
    const v4, 0x4201d

    invoke-virtual {p0, v4, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3208
    .local v2, "mCause":Landroid/os/Message;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_b

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 3209
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3211
    :cond_b
    invoke-super {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3218
    .end local v2    # "mCause":Landroid/os/Message;
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3219
    const-string v4, "onUpdateIcc: tryRestartDataConnections nwTypeChanged"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3220
    const-string v4, "nwTypeChanged"

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->tryRestartDataConnections(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto/16 :goto_0

    .line 3222
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isNvSubscription()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3225
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onNvReady()V

    goto/16 :goto_0

    .line 3229
    :cond_d
    const-string v4, "nwTypeChanged"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3236
    :sswitch_c
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 3237
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3238
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 3118
    nop

    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_7
        0x42009 -> :sswitch_1
        0x42010 -> :sswitch_2
        0x42012 -> :sswitch_3
        0x42013 -> :sswitch_4
        0x42015 -> :sswitch_b
        0x42016 -> :sswitch_5
        0x42017 -> :sswitch_6
        0x42018 -> :sswitch_8
        0x4201b -> :sswitch_9
        0x4201d -> :sswitch_a
        0x42029 -> :sswitch_b
        0x4202a -> :sswitch_c
    .end sparse-switch
.end method

.method public incApnRefCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 324
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incRefCount()V

    .line 327
    :cond_0
    return-void
.end method

.method protected initApnContexts()V
    .locals 9

    .prologue
    .line 485
    const-string v7, "initApnContexts: E"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 487
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "networkConfigStrings":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 490
    .local v5, "networkConfigString":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkConfig;

    invoke-direct {v4, v5}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 491
    .local v4, "networkConfig":Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    .line 493
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget v7, v4, Landroid/net/NetworkConfig;->type:I

    sparse-switch v7, :sswitch_data_0

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initApnContexts: skipping unknown type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 489
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :sswitch_0
    const-string v7, "default"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 534
    :goto_2
    if-eqz v0, :cond_0

    .line 537
    iget v7, v4, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setNetworkType(I)V

    .line 540
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initApnContexts: apnContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 498
    :sswitch_1
    const-string v7, "mms"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 499
    goto :goto_2

    .line 501
    :sswitch_2
    const-string v7, "supl"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 502
    goto :goto_2

    .line 504
    :sswitch_3
    const-string v7, "dun"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 505
    goto :goto_2

    .line 507
    :sswitch_4
    const-string v7, "hipri"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 508
    goto :goto_2

    .line 510
    :sswitch_5
    const-string v7, "fota"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 511
    goto :goto_2

    .line 513
    :sswitch_6
    const-string v7, "ims"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 514
    goto :goto_2

    .line 516
    :sswitch_7
    const-string v7, "cbs"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 517
    goto :goto_2

    .line 519
    :sswitch_8
    const-string v7, "ia"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 520
    goto :goto_2

    .line 522
    :sswitch_9
    const-string v7, "emergency"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 523
    goto :goto_2

    .line 526
    :sswitch_a
    const-string v7, "vzw800"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 527
    goto :goto_2

    .line 542
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v5    # "networkConfigString":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initApnContexts: X mApnContexts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 543
    return-void

    .line 493
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x25 -> :sswitch_a
    .end sparse-switch
.end method

.method public isApnSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 339
    if-nez p1, :cond_0

    .line 340
    const-string v2, "isApnSupported: name=null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 348
    :goto_0
    return v1

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 344
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request for unsupported mobile name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 424
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 688
    const-string v3, "dun"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 699
    :goto_0
    return v2

    .line 692
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 693
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 694
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 699
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 607
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 608
    const/4 v1, 0x0

    .line 610
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 4

    .prologue
    .line 2579
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2580
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_0

    .line 2582
    const/4 v2, 0x1

    .line 2586
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 17

    .prologue
    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 795
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    .line 796
    .local v7, "internalDataEnabled":Z
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 800
    .local v3, "attachedState":Z
    const/4 v1, 0x0

    .line 801
    .local v1, "allowDataPerRoaming":Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsEnhancedDataRoaming:Z

    if-eqz v15, :cond_15

    .line 802
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 803
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_INTERNATIONAL_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v15

    if-nez v15, :cond_11

    sget-object v15, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_DOMESTIC_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v15

    if-eqz v15, :cond_11

    :cond_1
    const/4 v1, 0x1

    .line 822
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v6

    .line 823
    .local v6, "desiredPowerState":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 824
    .local v10, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v12, 0x0

    .line 825
    .local v12, "recordsLoaded":Z
    if-eqz v10, :cond_2

    .line 826
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v12

    .line 827
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isDataAllowed getRecordsLoaded="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 831
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    .line 832
    .local v9, "psRestricted":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    .line 833
    .local v8, "phoneNum":I
    const/4 v15, 0x1

    if-le v8, v15, :cond_3

    .line 834
    const/4 v3, 0x1

    .line 835
    const/4 v9, 0x0

    .line 837
    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    .line 838
    .local v4, "dataSub":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    .line 839
    .local v5, "defaultDataSelected":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isNvSubscription()Z

    move-result v14

    .line 840
    .local v14, "subscriptionFromNv":Z
    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 848
    .local v13, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 849
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    .line 851
    :cond_4
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    if-eqz v15, :cond_18

    :cond_5
    if-nez v14, :cond_6

    if-eqz v12, :cond_18

    :cond_6
    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v13, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v15

    if-eqz v15, :cond_18

    :cond_7
    if-eqz v7, :cond_18

    if-eqz v5, :cond_18

    if-eqz v1, :cond_18

    if-nez v9, :cond_18

    if-eqz v6, :cond_18

    const/4 v2, 0x1

    .line 862
    .local v2, "allowed":Z
    :goto_1
    if-nez v2, :cond_10

    .line 863
    const-string v11, ""

    .line 864
    .local v11, "reason":Ljava/lang/String;
    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    if-nez v15, :cond_8

    .line 865
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - Attached= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 867
    :cond_8
    if-nez v14, :cond_9

    if-nez v12, :cond_9

    .line 868
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - SIM not loaded and not NV subscription"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 870
    :cond_9
    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v13, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v15

    if-nez v15, :cond_a

    .line 872
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - PhoneState= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 873
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - Concurrent voice and data not allowed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 875
    :cond_a
    if-nez v7, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - mInternalDataEnabled= false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 876
    :cond_b
    if-nez v5, :cond_c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - defaultDataSelected= false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 877
    :cond_c
    if-nez v1, :cond_d

    .line 878
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - Roaming and data roaming not enabled"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 880
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    if-eqz v15, :cond_e

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - mIsPsRestricted= true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 881
    :cond_e
    if-nez v6, :cond_f

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - desiredPowerState= false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 882
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isDataAllowed: not allowed due to"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 884
    .end local v11    # "reason":Ljava/lang/String;
    :cond_10
    return v2

    .line 796
    .end local v1    # "allowDataPerRoaming":Z
    .end local v2    # "allowed":Z
    .end local v3    # "attachedState":Z
    .end local v4    # "dataSub":I
    .end local v5    # "defaultDataSelected":Z
    .end local v6    # "desiredPowerState":Z
    .end local v7    # "internalDataEnabled":Z
    .end local v8    # "phoneNum":I
    .end local v9    # "psRestricted":Z
    .end local v10    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v12    # "recordsLoaded":Z
    .end local v13    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v14    # "subscriptionFromNv":Z
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 803
    .restart local v1    # "allowDataPerRoaming":Z
    .restart local v3    # "attachedState":Z
    .restart local v7    # "internalDataEnabled":Z
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 813
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v15

    if-eqz v15, :cond_13

    sget-object v15, Lcom/android/internal/telephony/Phone$DataRestrictionType;->GSM_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v15

    if-eqz v15, :cond_14

    :cond_13
    const/4 v1, 0x1

    :goto_2
    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x0

    goto :goto_2

    .line 818
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v15

    if-eqz v15, :cond_17

    :cond_16
    const/4 v1, 0x1

    :goto_3
    goto/16 :goto_0

    :cond_17
    const/4 v1, 0x0

    goto :goto_3

    .line 851
    .restart local v4    # "dataSub":I
    .restart local v5    # "defaultDataSelected":Z
    .restart local v6    # "desiredPowerState":Z
    .restart local v8    # "phoneNum":I
    .restart local v9    # "psRestricted":Z
    .restart local v10    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v12    # "recordsLoaded":Z
    .restart local v13    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    .restart local v14    # "subscriptionFromNv":Z
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public isDataPossible(Ljava/lang/String;)Z
    .locals 11
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 431
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 432
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 451
    :goto_0
    return v7

    .line 435
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    .line 436
    .local v1, "apnContextIsEnabled":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    .line 437
    .local v2, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    if-eqz v1, :cond_1

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v9, :cond_4

    :cond_1
    move v3, v8

    .line 439
    .local v3, "apnTypePossible":Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "emergency"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 442
    .local v5, "isEmergencyApn":Z
    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    move v4, v8

    .line 443
    .local v4, "dataAllowed":Z
    :goto_2
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    move v6, v8

    .line 445
    .local v6, "possible":Z
    :goto_3
    sget-boolean v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v9, :cond_3

    .line 446
    const-string v9, "isDataPossible(%s): possible=%b isDataAllowed=%b apnTypePossible=%b apnContextisEnabled=%b apnContextState()=%s"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v8

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v7

    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v7

    const/4 v7, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v7

    const/4 v7, 0x5

    aput-object v2, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :cond_3
    move v7, v6

    .line 451
    goto :goto_0

    .end local v3    # "apnTypePossible":Z
    .end local v4    # "dataAllowed":Z
    .end local v5    # "isEmergencyApn":Z
    .end local v6    # "possible":Z
    :cond_4
    move v3, v7

    .line 437
    goto :goto_1

    .restart local v3    # "apnTypePossible":Z
    .restart local v5    # "isEmergencyApn":Z
    :cond_5
    move v4, v7

    .line 442
    goto :goto_2

    .restart local v4    # "dataAllowed":Z
    :cond_6
    move v6, v7

    .line 443
    goto :goto_3
.end method

.method public isDisconnected()Z
    .locals 3

    .prologue
    .line 2591
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2592
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2594
    const/4 v2, 0x0

    .line 2598
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
    .locals 1
    .param p1, "dcFailCause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 1332
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isProvisioningApn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 632
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v1

    .line 635
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3473
    const-string v0, "DCT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3478
    const-string v0, "DCT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    return-void
.end method

.method protected mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "mvnoType"    # Ljava/lang/String;
    .param p3, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1297
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isNvSubscription()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1298
    const-string v6, "ro.cdma.home.operator.alpha"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "phoneSpn":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1327
    .end local v3    # "phoneSpn":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .restart local v3    # "phoneSpn":Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 1302
    goto :goto_0

    .line 1305
    .end local v3    # "phoneSpn":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_3

    move v4, v5

    .line 1306
    goto :goto_0

    .line 1309
    :cond_3
    const-string v6, "spn"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1310
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    move v4, v5

    .line 1327
    goto :goto_0

    .line 1314
    :cond_5
    const-string v6, "imsi"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1315
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 1319
    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_6
    const-string v6, "gid"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1320
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 1321
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1322
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v2, :cond_4

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0
.end method

.method protected notifyAllDataDisconnected()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3393
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    .line 3394
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    .line 3395
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3396
    return-void
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2604
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2605
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOosIsDisconnect:Z

    if-nez v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2607
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_2

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2611
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2612
    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    .prologue
    .line 3384
    const-string v2, "notifyDataDisconnectComplete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3385
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 3386
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3388
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3389
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1038
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOosIsDisconnect:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1039
    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnOfAvailability type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1040
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_4

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1044
    :cond_5
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnsOfAvailability skipped apn due to attached && isReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_6
    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 1114
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 1115
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .param p1, "tearDown"    # Z
    .param p2, "apnId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 2569
    const-string v1, "onCleanUpConnection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2570
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2571
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 2572
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2573
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2575
    :cond_0
    return-void
.end method

.method protected onDataConnectionDetached()V
    .locals 2

    .prologue
    .line 766
    const-string v0, "onDataConnectionDetached: stop polling and notify detached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 769
    const-string v0, "dataDetached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 771
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 26
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2128
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2129
    .local v8, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/4 v13, 0x0

    .line 2130
    .local v13, "handleError":Z
    const/4 v6, 0x0

    .line 2132
    .local v6, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 2133
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v6    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2138
    .restart local v6    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_e

    .line 2139
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v11

    .line 2159
    .local v11, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v11, :cond_3

    .line 2160
    const-string v21, "onDataSetupComplete: no connection to DC, handle as error"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2161
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2162
    const/4 v13, 0x1

    .line 2303
    .end local v11    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    if-eqz v13, :cond_0

    .line 2304
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    .line 2310
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 2311
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2314
    :cond_1
    return-void

    .line 2135
    :cond_2
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "onDataSetupComplete: No apnContext"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2164
    .restart local v11    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    .line 2166
    .local v5, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataSetupComplete: success apn="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v5, :cond_9

    const-string v21, "unknown"

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2168
    if-eqz v5, :cond_5

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_5

    .line 2170
    :try_start_0
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2171
    .local v19, "port":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    const-string v19, "8080"

    .line 2172
    :cond_4
    new-instance v20, Landroid/net/ProxyInfo;

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2174
    .local v20, "proxy":Landroid/net/ProxyInfo;
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2182
    .end local v19    # "port":Ljava/lang/String;
    .end local v20    # "proxy":Landroid/net/ProxyInfo;
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "default"

    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 2183
    const-string v21, "gsm.defaultpdpcontext.active"

    const-string v22, "true"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 2186
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isApnInCurrentList(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 2187
    const-string v21, "onDataSetupComplete: PREFERED APN is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2188
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 2190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 2200
    :cond_6
    :goto_3
    sget-object v21, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2201
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v16

    .line 2202
    .local v16, "isProvApn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v10

    .line 2203
    .local v10, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2205
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2207
    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 2209
    :cond_8
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 2214
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2264
    :goto_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataSetupComplete: SETUP complete type="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reason:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2166
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v16    # "isProvApn":Z
    :cond_9
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_1

    .line 2175
    :catch_0
    move-exception v12

    .line 2176
    .local v12, "e":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2196
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    const-string v21, "gsm.defaultpdpcontext.active"

    const-string v22, "false"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2222
    .restart local v10    # "cm":Landroid/net/ConnectivityManager;
    .restart local v16    # "isProvApn":Z
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDataSetupComplete: successful, BUT send connected to prov apn as mIsProvisioning:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " == false"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " && (isProvisioningApn:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " == true"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2229
    new-instance v21, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2235
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 2239
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    .line 2241
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2243
    .local v15, "intent":Landroid/content/Intent;
    const-string v21, "apn"

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2244
    const-string v21, "apnType"

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2246
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    .line 2247
    .local v7, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v17

    .line 2248
    .local v17, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v17, :cond_c

    .line 2249
    const-string v21, "linkProperties"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2250
    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    .line 2251
    .local v14, "iface":Ljava/lang/String;
    if-eqz v14, :cond_c

    .line 2252
    const-string v21, "iface"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2255
    .end local v14    # "iface":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v18

    .line 2256
    .local v18, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v18, :cond_d

    .line 2257
    const-string v21, "networkCapabilities"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2261
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_4

    .line 2269
    .end local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v7    # "apnType":Ljava/lang/String;
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v11    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "isProvApn":Z
    .end local v17    # "linkProperties":Landroid/net/LinkProperties;
    .end local v18    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v8, v21

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2271
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    .line 2272
    .restart local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v22, "onDataSetupComplete: error apn=%s cause=%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    if-nez v5, :cond_12

    const-string v21, "unknown"

    :goto_5
    aput-object v21, v23, v24

    const/16 v21, 0x1

    aput-object v8, v23, v21

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2276
    if-nez v8, :cond_f

    .line 2277
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2280
    :cond_f
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isEventLoggable()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 2282
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getCellLocationId()I

    move-result v9

    .line 2283
    .local v9, "cid":I
    const v21, 0xc3b9

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ordinal()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2286
    .end local v9    # "cid":I
    :cond_10
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v24

    if-eqz v5, :cond_13

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v21, v0

    :goto_6
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v21

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decWaitingApnsPermFailCount()V

    .line 2293
    :cond_11
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->removeWaitingApn(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 2295
    const-string v21, "onDataSetupComplete: WaitingApns.size=%d WaitingApnsPermFailureCountDown=%d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2300
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2272
    :cond_12
    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_5

    .line 2287
    :cond_13
    const-string v21, "unknown"

    goto :goto_6
.end method

.method protected onDataSetupCompleteError(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2351
    const-string v2, ""

    .line 2352
    .local v2, "reason":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2354
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_0

    .line 2355
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2361
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2362
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2363
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "apnFailed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 2367
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2369
    const-string v3, "onDataSetupCompleteError: All APN\'s had permanent failures, stop retrying"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2386
    :goto_0
    return-void

    .line 2357
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "onDataSetupCompleteError: No apnContext"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2372
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v1

    .line 2374
    .local v1, "delay":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataSetupCompleteError: Not all APN\'s had permanent failures delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2377
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForRestartTrySetup(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 2380
    .end local v1    # "delay":I
    :cond_2
    const-string v3, "onDataSetupCompleteError: Try next APN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2381
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2384
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0
.end method

.method protected onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "connId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2479
    const/4 v0, 0x0

    .line 2481
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_0

    .line 2482
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2488
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectDcRetrying: apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2491
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    :goto_0
    return-void

    .line 2484
    :cond_0
    const-string v1, "onDisconnectDcRetrying: Invalid ar in onDisconnectDone, ignore"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 6
    .param p1, "connId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 2393
    const/4 v0, 0x0

    .line 2395
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v2, :cond_2

    .line 2396
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2402
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnectDone: EVENT_DISCONNECT_DONE apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2403
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2405
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2410
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2411
    const-string v2, "onDisconnectDone: radio will be turned off, no retries"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2413
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 2414
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 2418
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-lez v2, :cond_0

    .line 2419
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 2421
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v2, :cond_1

    .line 2422
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    .line 2423
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    .line 2471
    :cond_1
    :goto_0
    return-void

    .line 2398
    :cond_2
    const-string v2, "onDisconnectDone: Invalid ar in onDisconnectDone, ignore"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2430
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2432
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nwTypeChanged"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2435
    const-string v2, "nwTypeChanged"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 2461
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-lez v2, :cond_4

    .line 2462
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 2464
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v2, :cond_1

    .line 2465
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    .line 2467
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    .line 2468
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    goto :goto_0

    .line 2437
    :cond_5
    const-string v2, "gsm.defaultpdpcontext.active"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_1

    .line 2444
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2447
    .local v1, "restartRadioAfterProvisioning":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 2448
    const-string v2, "onDisconnectDone: restartRadio after provisioning"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    .line 2451
    :cond_7
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 2452
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 2453
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2454
    const-string v2, "onDisconnectDone: isOnlySigneDcAllowed true so setup single apn"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2455
    const-string v2, "SinglePdnArbitration"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_1

    .line 2457
    :cond_8
    const-string v2, "onDisconnectDone: not retrying"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDomesticRoamingOff()V
    .locals 1

    .prologue
    .line 1999
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 2008
    :goto_0
    return-void

    .line 2001
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_DOMESTIC_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2002
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2004
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    .line 2006
    :cond_1
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDomesticRoamingOn()V
    .locals 1

    .prologue
    .line 1982
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 1992
    :goto_0
    return-void

    .line 1984
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_DOMESTIC_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1985
    const-string v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1986
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 1988
    :cond_1
    const-string v0, "Tear down data connection on domestic roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1989
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1990
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onEnableApn(II)V
    .locals 4
    .param p1, "apnId"    # I
    .param p2, "enabled"    # I

    .prologue
    const/4 v1, 0x1

    .line 1897
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1898
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 1899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableApn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): NO ApnContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 1905
    :goto_0
    return-void

    .line 1903
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableApn: apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call applyNewState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1904
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onInterRoamingOff()V
    .locals 1

    .prologue
    .line 2033
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 2042
    :goto_0
    return-void

    .line 2035
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_INTERNATIONAL_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2036
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2038
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    .line 2040
    :cond_1
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onInterRoamingOn()V
    .locals 1

    .prologue
    .line 2015
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 2026
    :goto_0
    return-void

    .line 2017
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataRestrictionType;->CDMA_INTERNATIONAL_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2018
    const-string v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 2019
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 2021
    :cond_1
    const-string v0, "Tear down data connection on international roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2022
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2023
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2047
    const-string v1, "onRadioAvailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2048
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2052
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2054
    const-string v1, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2057
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2058
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2059
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2062
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_2

    .line 2065
    const-string v1, "RadioAvailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2067
    :cond_2
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2074
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 2076
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2079
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2084
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2085
    return-void

    .line 2081
    :cond_0
    const-string v0, "onRadioOffOrNotAvailable: is off and clean up all connections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2082
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1922
    const-string v3, "onRoamingOff"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1924
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v3, :cond_1

    .line 1945
    :cond_0
    :goto_0
    return-void

    .line 1928
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsEnhancedDataRoaming:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1931
    :cond_2
    const/4 v0, 0x0

    .line 1932
    .local v0, "shouldSetupData":Z
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsEnhancedDataRoaming:Z

    if-eqz v3, :cond_4

    .line 1933
    sget-object v3, Lcom/android/internal/telephony/Phone$DataRestrictionType;->GSM_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 1938
    :goto_1
    if-eqz v0, :cond_6

    .line 1940
    const-string v1, "roamingOff"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1941
    const-string v1, "roamingOff"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1933
    goto :goto_1

    .line 1935
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 1943
    :cond_6
    const-string v1, "roamingOff"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 3

    .prologue
    .line 1949
    const-string v1, "onRoamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1951
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v1, :cond_1

    .line 1974
    :cond_0
    :goto_0
    return-void

    .line 1955
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsEnhancedDataRoaming:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1958
    :cond_2
    const/4 v0, 0x0

    .line 1959
    .local v0, "shouldSetupData":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsEnhancedDataRoaming:Z

    if-eqz v1, :cond_3

    .line 1960
    sget-object v1, Lcom/android/internal/telephony/Phone$DataRestrictionType;->GSM_ROAMING:Lcom/android/internal/telephony/Phone$DataRestrictionType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled(Lcom/android/internal/telephony/Phone$DataRestrictionType;)Z

    move-result v0

    .line 1964
    :goto_1
    if-eqz v0, :cond_4

    .line 1966
    const-string v1, "onRoamingOn: setup data on roaming"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1967
    const-string v1, "roamingOn"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1968
    const-string v1, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 1962
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    goto :goto_1

    .line 1970
    :cond_4
    const-string v1, "onRoamingOn: Tear down data connection on roaming."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1971
    const/4 v1, 0x1

    const-string v2, "roamingOn"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 1972
    const-string v1, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    .prologue
    .line 1729
    const-string v1, "hipri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1731
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1732
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_2

    .line 1733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1737
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    .line 1738
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "hipri"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1741
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    goto :goto_0
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetInternalDataEnabled: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3415
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    .line 3416
    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    .line 3419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetInternalDataEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3420
    const/4 v0, 0x1

    .line 3422
    .local v0, "sendOnComplete":Z
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3423
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    .line 3424
    if-eqz p1, :cond_1

    .line 3425
    const-string v1, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3426
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 3432
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3434
    if-eqz v0, :cond_0

    .line 3435
    if-eqz p2, :cond_0

    .line 3436
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3439
    :cond_0
    return-void

    .line 3428
    :cond_1
    const/4 v0, 0x0

    .line 3429
    :try_start_1
    const-string v1, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3430
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 3432
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1917
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1911
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1912
    const/4 v0, 0x1

    return v0
.end method

.method protected onUpdateIcc()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3291
    const/4 v4, 0x0

    .line 3292
    .local v4, "result":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v5, :cond_0

    .line 3293
    const-string v5, "onUpdateIcc: mUiccController is null. Error!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    move v5, v7

    .line 3339
    :goto_0
    return v5

    .line 3297
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 3299
    .local v1, "dataRat":I
    if-nez v1, :cond_1

    .line 3300
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    .line 3301
    const/4 v1, 0x3

    .line 3307
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFamilyFromRadioTechnology(I)I

    move-result v0

    .line 3308
    .local v0, "appFamily":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 3309
    .local v2, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUpdateIcc: newIccRecords "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3311
    if-nez v1, :cond_4

    move v5, v7

    .line 3315
    goto :goto_0

    .line 3302
    .end local v0    # "appFamily":I
    .end local v2    # "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 3303
    const/4 v1, 0x6

    goto :goto_1

    .restart local v0    # "appFamily":I
    .restart local v2    # "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    move-object v5, v6

    .line 3309
    goto :goto_2

    .line 3318
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3319
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v3, v2, :cond_7

    .line 3320
    if-eqz v3, :cond_5

    .line 3321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing stale icc objects. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3323
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3324
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3326
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const-string v7, "gsm.apn.sim.operator.numeric"

    invoke-static {v5, v7, v6}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3329
    :cond_5
    if-eqz v2, :cond_6

    .line 3330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New records found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3332
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3333
    const v5, 0x42002

    invoke-virtual {v2, p0, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3337
    :cond_6
    const/4 v4, 0x1

    :cond_7
    move v5, v4

    .line 3339
    goto/16 :goto_0

    :cond_8
    move-object v5, v6

    .line 3321
    goto :goto_3

    :cond_9
    move-object v5, v6

    .line 3330
    goto :goto_4
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2536
    const-string v0, "onVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2537
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 2538
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2539
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2540
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 2541
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 2542
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2558
    :goto_0
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 2561
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2562
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendDataUnavailableForVoiceCall(Z)V

    .line 2565
    :cond_0
    return-void

    .line 2545
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    goto :goto_0

    .line 2552
    :cond_2
    const-string v0, "onVoiceCallEnded:notifyOffApnsOfAvailability"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2553
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2497
    const-string v0, "onVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2498
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 2502
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2503
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    const-string v0, "onVoiceCallStarted stop polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 2506
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 2507
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2509
    :cond_0
    const-string v0, "2GVoiceCallStarted"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpRetryingApns(ZLjava/lang/String;)Z

    .line 2511
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendDataUnavailableForVoiceCall(Z)V

    .line 2515
    :cond_1
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3401
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3402
    const-string v0, "notify All Data Disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    .line 3405
    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42010

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42009

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x420c8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDomesticRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x420c9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDomesticRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x420ca

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForInterRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x420cb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForInterRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42016

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42017

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42029

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 1623
    const-string v1, "restartRadio: ************TURN OFF RADIO**************"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1624
    const/4 v1, 0x1

    const-string v2, "radioTurnedOff"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 1625
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 1634
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1635
    .local v0, "reset":I
    const-string v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataAllowed: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3466
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsCleanupRequired:Z

    .line 3467
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 3468
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    .line 3469
    return-void

    .line 3466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .prologue
    .line 3533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsRegistrationState - mImsRegistrationState(before): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", registered(current) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3536
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_1

    .line 3542
    :cond_0
    :goto_0
    return-void

    .line 3538
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 3539
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v0, :cond_0

    .line 3541
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    goto :goto_0
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 3456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3458
    const v1, 0x4201b

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3459
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3460
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3461
    return v2

    .line 3459
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternalDataEnabledFlag("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3444
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 3445
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    .line 3447
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/DctConstants$State;

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState should not be used in GSM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method protected setupDataForSinglePdnArbitration(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupDataForSinglePdn: reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isDisconnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1215
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SinglePdnArbitration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    const-string v0, "SinglePdnArbitration"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1220
    :cond_0
    return-void
.end method

.method protected supplyMessenger()V
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 462
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 463
    const/4 v1, 0x2

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 464
    const/4 v1, 0x3

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 465
    const/4 v1, 0x4

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 466
    const/4 v1, 0x5

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 467
    const/16 v1, 0xa

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 468
    const/16 v1, 0xb

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 469
    const/16 v1, 0xc

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 470
    const/16 v1, 0xf

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 472
    const/16 v1, 0x25

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 474
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3409
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 297
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDomesticRoamingOn(Landroid/os/Handler;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDomesticRoamingOff(Landroid/os/Handler;)V

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForInterRoamingOn(Landroid/os/Handler;)V

    .line 312
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForInterRoamingOff(Landroid/os/Handler;)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 315
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 319
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 3343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3344
    const-string v0, "update(): Active DDS, register for all events now!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllEvents()V

    .line 3347
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    .line 3348
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()Z

    .line 3350
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    .line 3352
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateCurrentCarrierInProvider()Z

    .line 3354
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->supplyMessenger()V

    .line 3361
    :goto_0
    return-void

    .line 3355
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_1

    .line 3356
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 3357
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->supplyMessenger()V

    goto :goto_0

    .line 3359
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateRecords()V
    .locals 0

    .prologue
    .line 3369
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()Z

    .line 3370
    return-void
.end method
