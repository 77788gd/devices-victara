.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;,
        Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_ALARM"

.field private static final ACTIVE_SYNC_TIMEOUT_MILLIS:J = 0x1b7740L

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

.field private static final MAX_SIMULTANEOUS_REGULAR_SYNCS:I

.field private static final MAX_TIME_PER_SYNC:J

.field private static final SYNC_ALARM_TIMEOUT_MAX:J = 0x6ddd00L

.field private static final SYNC_ALARM_TIMEOUT_MIN:J = 0x7530L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_NOTIFICATION_DELAY:J

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private volatile mBootCompleted:Z

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNeedSyncActiveNotification:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncAlarmIntent:Landroid/app/PendingIntent;

.field private final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mSyncQueue:Lcom/android/server/content/SyncQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSyncQueue"
    .end annotation
.end field

.field private mSyncRandomOffsetMillis:I

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7530

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 123
    .local v2, "isLargeRAM":Z
    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x5

    .line 124
    .local v0, "defaultMaxInitSyncs":I
    :goto_1
    if-eqz v2, :cond_2

    .line 125
    .local v1, "defaultMaxRegularSyncs":I
    :goto_2
    const-string v3, "sync.max_init_syncs"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    .line 127
    const-string v3, "sync.max_regular_syncs"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    .line 129
    const-string v3, "sync.local_sync_delay"

    invoke-static {v3, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 131
    const-string v3, "sync.max_time_per_sync"

    const-wide/32 v6, 0x493e0

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J

    .line 133
    const-string v3, "sync.notification_delay"

    invoke-static {v3, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    .line 170
    new-array v3, v4, [Landroid/accounts/AccountAndUser;

    sput-object v3, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    return-void

    .end local v0    # "defaultMaxInitSyncs":I
    .end local v1    # "defaultMaxRegularSyncs":I
    .end local v2    # "isLargeRAM":Z
    :cond_0
    move v2, v4

    .line 122
    goto :goto_0

    .restart local v2    # "isLargeRAM":Z
    :cond_1
    move v0, v1

    .line 123
    goto :goto_1

    .restart local v0    # "defaultMaxInitSyncs":I
    :cond_2
    move v1, v3

    .line 124
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 177
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 178
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    .line 181
    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 189
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 192
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z

    .line 201
    new-instance v0, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v0, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    new-instance v0, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    new-instance v0, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    new-instance v0, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    .line 375
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 377
    invoke-static {p1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    .line 378
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 379
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v1, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 395
    new-instance v0, Landroid/content/SyncAdaptersCache;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 396
    new-instance v0, Lcom/android/server/content/SyncQueue;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/content/SyncQueue;-><init>(Landroid/content/pm/PackageManager;Lcom/android/server/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    .line 398
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 400
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v1, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    .line 415
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 416
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    if-nez p2, :cond_0

    .line 419
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 421
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 425
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x64

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 430
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 433
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v0, "android.intent.action.USER_STOPPING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 439
    if-nez p2, :cond_2

    .line 440
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 442
    new-instance v0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    :goto_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 448
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 449
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 456
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SyncManagerHandleSyncAlarm"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 458
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SyncLoopWakeLock"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 467
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v1, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v7, v1}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 478
    if-nez p2, :cond_1

    .line 480
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getSyncRandomOffset()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    .line 488
    return-void

    .line 445
    :cond_2
    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendSyncAlarmMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "x2"    # Landroid/content/SyncResult;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActive(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # [Landroid/accounts/AccountAndUser;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/content/SyncManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget v0, p0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    return v0
.end method

.method static synthetic access$2800()[Landroid/accounts/AccountAndUser;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$3000()J
    .locals 2

    .prologue
    .line 109
    sget-wide v0, Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    return v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postSyncExpiryMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # J

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->removeSyncExpiryMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000()J
    .locals 2

    .prologue
    .line 109
    sget-wide v0, Lcom/android/server/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->ensureAlarmService()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStarting(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopping(I)V

    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    .locals 6
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const-wide/16 v2, -0x1

    .line 904
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 907
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v1

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/content/SyncQueue;->onBackoffChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 909
    monitor-exit v1

    .line 910
    return-void

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 259
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_1

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    const/4 v0, 0x1

    .line 265
    :cond_0
    return v0

    .line 258
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doDatabaseCleanup()V
    .locals 5

    .prologue
    .line 291
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 293
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v3, :cond_0

    .line 294
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 295
    .local v0, "accountsForUser":[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    goto :goto_0

    .line 297
    .end local v0    # "accountsForUser":[Landroid/accounts/Account;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "ds"    # Lcom/android/server/content/SyncStorageEngine$DayStats;

    .prologue
    .line 1508
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1509
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_0

    .line 1510
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1511
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1513
    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1514
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 1515
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1516
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1518
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x0

    .line 1792
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v7}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v3

    .line 1793
    .local v3, "dses":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-eqz v3, :cond_6

    aget-object v7, v3, v8

    if-eqz v7, :cond_6

    .line 1794
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1795
    const-string v7, "Sync Statistics"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    const-string v7, "  Today:  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v7, v3, v8

    invoke-direct {p0, p1, v7}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 1797
    aget-object v7, v3, v8

    iget v5, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 1802
    .local v5, "today":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v12, :cond_0

    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 1803
    aget-object v2, v3, v4

    .line 1804
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_3

    .line 1813
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_0
    move v6, v5

    .line 1814
    .local v6, "weekDay":I
    :cond_1
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_6

    .line 1815
    const/4 v0, 0x0

    .line 1816
    .local v0, "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v6, v6, -0x7

    .line 1817
    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_2

    .line 1818
    aget-object v2, v3, v4

    .line 1819
    .restart local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_4

    .line 1820
    array-length v4, v3

    .line 1835
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_2
    if-eqz v0, :cond_1

    .line 1836
    const-string v7, "  Week-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    goto :goto_1

    .line 1805
    .end local v0    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v6    # "weekDay":I
    .restart local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v5, v7

    .line 1806
    .local v1, "delta":I
    if-gt v1, v12, :cond_0

    .line 1808
    const-string v7, "  Day-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ":  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 1802
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1823
    .end local v1    # "delta":I
    .restart local v0    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v6    # "weekDay":I
    :cond_4
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v6, v7

    .line 1824
    .restart local v1    # "delta":I
    if-gt v1, v12, :cond_2

    .line 1825
    add-int/lit8 v4, v4, 0x1

    .line 1827
    if-nez v0, :cond_5

    .line 1828
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .end local v0    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-direct {v0, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1830
    .restart local v0    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_5
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1831
    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1832
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1833
    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_2

    .line 1841
    .end local v0    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v1    # "delta":I
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v4    # "i":I
    .end local v5    # "today":I
    .end local v6    # "weekDay":I
    :cond_6
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 58
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v28

    .line 1529
    .local v28, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v28, :cond_19

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_19

    .line 1530
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 1531
    .local v11, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v50, 0x0

    .line 1532
    .local v50, "totalElapsedTime":J
    const-wide/16 v52, 0x0

    .line 1533
    .local v52, "totalTimes":J
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1535
    .local v4, "N":I
    const/16 v34, 0x0

    .line 1536
    .local v34, "maxAuthority":I
    const/16 v33, 0x0

    .line 1537
    .local v33, "maxAccount":I
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1538
    .local v27, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v49, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 1542
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_6

    .line 1543
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    move/from16 v49, v0

    if-eqz v49, :cond_4

    .line 1544
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1545
    .local v12, "authorityName":Ljava/lang/String;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "/"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, " u"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1562
    .local v6, "accountKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v32

    .line 1563
    .local v32, "length":I
    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_0

    .line 1564
    move/from16 v34, v32

    .line 1566
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v32

    .line 1567
    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_1

    .line 1568
    move/from16 v33, v32

    .line 1571
    :cond_1
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v18, v0

    .line 1572
    .local v18, "elapsedTime":J
    add-long v50, v50, v18

    .line 1573
    const-wide/16 v54, 0x1

    add-long v52, v52, v54

    .line 1574
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 1575
    .local v13, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    if-nez v13, :cond_2

    .line 1576
    new-instance v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    const/16 v49, 0x0

    move-object/from16 v0, v49

    invoke-direct {v13, v12, v0}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    .line 1577
    .restart local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    :cond_2
    iget-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v54, v0

    add-long v54, v54, v18

    move-wide/from16 v0, v54

    iput-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 1580
    iget v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v49, v0

    add-int/lit8 v49, v49, 0x1

    move/from16 v0, v49

    iput v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 1581
    iget-object v7, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 1582
    .local v7, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 1583
    .local v8, "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    if-nez v8, :cond_3

    .line 1584
    new-instance v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .end local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    const/16 v49, 0x0

    move-object/from16 v0, v49

    invoke-direct {v8, v6, v0}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    .line 1585
    .restart local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    :cond_3
    iget-wide v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v54, v0

    add-long v54, v54, v18

    move-wide/from16 v0, v54

    iput-wide v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 1588
    iget v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v49, v0

    add-int/lit8 v49, v49, 0x1

    move/from16 v0, v49

    iput v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    goto/16 :goto_0

    .line 1548
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v7    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v18    # "elapsedTime":J
    .end local v32    # "length":I
    :cond_4
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    move/from16 v49, v0

    if-eqz v49, :cond_5

    .line 1549
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "/"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, " u"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1552
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "no account"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_1

    .line 1554
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_5
    const-string v12, "Unknown"

    .line 1555
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_1

    .line 1558
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_6
    const-string v12, "Unknown"

    .line 1559
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_1

    .line 1592
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v27    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_7
    const-wide/16 v54, 0x0

    cmp-long v49, v50, v54

    if-lez v49, :cond_9

    .line 1593
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1594
    const-string v49, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    const/16 v54, 0x2

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    const-wide/16 v56, 0x3e8

    div-long v56, v50, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1598
    new-instance v43, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v49

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1600
    .local v43, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v49, Lcom/android/server/content/SyncManager$11;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1612
    add-int/lit8 v49, v33, 0x3

    move/from16 v0, v34

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1613
    .local v35, "maxLength":I
    add-int/lit8 v49, v35, 0x4

    add-int/lit8 v49, v49, 0x2

    add-int/lit8 v49, v49, 0xa

    add-int/lit8 v37, v49, 0xb

    .line 1614
    .local v37, "padLength":I
    move/from16 v0, v37

    new-array v14, v0, [C

    .line 1615
    .local v14, "chars":[C
    const/16 v49, 0x2d

    move/from16 v0, v49

    invoke-static {v14, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 1616
    new-instance v39, Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([C)V

    .line 1618
    .local v39, "separator":Ljava/lang/String;
    const-string v49, "  %%-%ds: %%-9s  %%-11s\n"

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    add-int/lit8 v56, v35, 0x2

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1620
    .local v9, "authorityFormat":Ljava/lang/String;
    const-string v49, "    %%-%ds:   %%-9s  %%-11s\n"

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1623
    .local v5, "accountFormat":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v25    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 1625
    .restart local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    iget-object v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1631
    .local v36, "name":Ljava/lang/String;
    iget-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v18, v0

    .line 1632
    .restart local v18    # "elapsedTime":J
    iget v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v47, v0

    .line 1633
    .local v47, "times":I
    const-string v49, "%ds/%d%%"

    const/16 v54, 0x2

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    const-wide/16 v56, 0x3e8

    div-long v56, v18, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    const-wide/16 v56, 0x64

    mul-long v56, v56, v18

    div-long v56, v56, v50

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    .line 1636
    .local v46, "timeStr":Ljava/lang/String;
    const-string v49, "%d/%d%%"

    const/16 v54, 0x2

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    mul-int/lit8 v56, v47, 0x64

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    div-long v56, v56, v52

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .line 1639
    .local v48, "timesStr":Ljava/lang/String;
    const/16 v49, 0x3

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v54, 0x0

    aput-object v36, v49, v54

    const/16 v54, 0x1

    aput-object v48, v49, v54

    const/16 v54, 0x2

    aput-object v46, v49, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v9, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1641
    new-instance v42, Ljava/util/ArrayList;

    iget-object v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v49

    move-object/from16 v0, v42

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1644
    .local v42, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    new-instance v49, Lcom/android/server/content/SyncManager$12;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1655
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_8

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 1656
    .local v44, "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v18, v0

    .line 1657
    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v47, v0

    .line 1658
    const-string v49, "%ds/%d%%"

    const/16 v54, 0x2

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    const-wide/16 v56, 0x3e8

    div-long v56, v18, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    const-wide/16 v56, 0x64

    mul-long v56, v56, v18

    div-long v56, v56, v50

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    .line 1661
    const-string v49, "%d/%d%%"

    const/16 v54, 0x2

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    mul-int/lit8 v56, v47, 0x64

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    div-long v56, v56, v52

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .line 1664
    const/16 v49, 0x3

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v54, 0x0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v49, v54

    const/16 v54, 0x1

    aput-object v48, v49, v54

    const/16 v54, 0x2

    aput-object v46, v49, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_3

    .line 1666
    .end local v44    # "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1670
    .end local v5    # "accountFormat":Ljava/lang/String;
    .end local v9    # "authorityFormat":Ljava/lang/String;
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v14    # "chars":[C
    .end local v18    # "elapsedTime":J
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v35    # "maxLength":I
    .end local v36    # "name":Ljava/lang/String;
    .end local v37    # "padLength":I
    .end local v39    # "separator":Ljava/lang/String;
    .end local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v43    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v46    # "timeStr":Ljava/lang/String;
    .end local v47    # "times":I
    .end local v48    # "timesStr":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1671
    const-string v49, "Recent Sync History"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "  %-"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "s  %-"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "s %s\n"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1673
    .local v23, "format":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v31

    .line 1674
    .local v31, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    .line 1675
    .local v38, "pm":Landroid/content/pm/PackageManager;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_4
    move/from16 v0, v24

    if-ge v0, v4, :cond_13

    .line 1676
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1677
    .restart local v27    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v49, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 1681
    .restart local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_f

    .line 1682
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    move/from16 v49, v0

    if-eqz v49, :cond_d

    .line 1683
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1684
    .restart local v12    # "authorityName":Ljava/lang/String;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "/"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, " u"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1700
    .restart local v6    # "accountKey":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v18, v0

    .line 1701
    .restart local v18    # "elapsedTime":J
    new-instance v45, Landroid/text/format/Time;

    invoke-direct/range {v45 .. v45}, Landroid/text/format/Time;-><init>()V

    .line 1702
    .local v45, "time":Landroid/text/format/Time;
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v20, v0

    .line 1703
    .local v20, "eventTime":J
    move-object/from16 v0, v45

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1705
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "/"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1706
    .local v29, "key":Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    .line 1708
    .local v30, "lastEventTime":Ljava/lang/Long;
    if-nez v30, :cond_10

    .line 1709
    const-string v15, ""

    .line 1722
    .local v15, "diffString":Ljava/lang/String;
    :goto_6
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    const-string v49, "  #%-3d: %s %8s  %5.1fs  %8s"

    const/16 v54, 0x5

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    add-int/lit8 v56, v24, 0x1

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x2

    sget-object v56, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v57, v0

    aget-object v56, v56, v57

    aput-object v56, v54, v55

    const/16 v55, 0x3

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v56, v0

    const/high16 v57, 0x447a0000    # 1000.0f

    div-float v56, v56, v57

    invoke-static/range {v56 .. v56}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x4

    aput-object v15, v54, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1730
    const/16 v49, 0x3

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v54, 0x0

    aput-object v6, v49, v54

    const/16 v54, 0x1

    aput-object v12, v49, v54

    const/16 v54, 0x2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    move/from16 v55, v0

    move-object/from16 v0, v38

    move/from16 v1, v55

    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v55

    aput-object v55, v49, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1733
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v49, v0

    const/16 v54, 0x1

    move/from16 v0, v49

    move/from16 v1, v54

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v49, v54, v56

    if-nez v49, :cond_a

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v49, v54, v56

    if-eqz v49, :cond_b

    .line 1736
    :cond_a
    const-string v49, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    const/16 v54, 0x3

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x2

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1741
    :cond_b
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v49, v0

    if-eqz v49, :cond_c

    const-string v49, "success"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_c

    .line 1743
    const-string v49, "    mesg=%s\n"

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v56, v0

    aput-object v56, v54, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1675
    :cond_c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 1687
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v15    # "diffString":Ljava/lang/String;
    .end local v18    # "elapsedTime":J
    .end local v20    # "eventTime":J
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v45    # "time":Landroid/text/format/Time;
    :cond_d
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    move/from16 v49, v0

    if-eqz v49, :cond_e

    .line 1688
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "/"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, " u"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1691
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "none"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_5

    .line 1693
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_e
    const-string v12, "Unknown"

    .line 1694
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_5

    .line 1697
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_f
    const-string v12, "Unknown"

    .line 1698
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_5

    .line 1711
    .restart local v18    # "elapsedTime":J
    .restart local v20    # "eventTime":J
    .restart local v29    # "key":Ljava/lang/String;
    .restart local v30    # "lastEventTime":Ljava/lang/Long;
    .restart local v45    # "time":Landroid/text/format/Time;
    :cond_10
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    sub-long v54, v54, v20

    const-wide/16 v56, 0x3e8

    div-long v16, v54, v56

    .line 1712
    .local v16, "diff":J
    const-wide/16 v54, 0x3c

    cmp-long v49, v16, v54

    if-gez v49, :cond_11

    .line 1713
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    .line 1714
    .end local v15    # "diffString":Ljava/lang/String;
    :cond_11
    const-wide/16 v54, 0xe10

    cmp-long v49, v16, v54

    if-gez v49, :cond_12

    .line 1715
    const-string v49, "%02d:%02d"

    const/16 v54, 0x2

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    const-wide/16 v56, 0x3c

    div-long v56, v16, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    const-wide/16 v56, 0x3c

    rem-long v56, v16, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    .line 1717
    .end local v15    # "diffString":Ljava/lang/String;
    :cond_12
    const-wide/16 v54, 0xe10

    rem-long v40, v16, v54

    .line 1718
    .local v40, "sec":J
    const-string v49, "%02d:%02d:%02d"

    const/16 v54, 0x3

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    const-wide/16 v56, 0xe10

    div-long v56, v16, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    const-wide/16 v56, 0x3c

    div-long v56, v40, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x2

    const-wide/16 v56, 0x3c

    rem-long v56, v40, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    .line 1746
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v15    # "diffString":Ljava/lang/String;
    .end local v16    # "diff":J
    .end local v18    # "elapsedTime":J
    .end local v20    # "eventTime":J
    .end local v27    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v40    # "sec":J
    .end local v45    # "time":Landroid/text/format/Time;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1747
    const-string v49, "Recent Sync History Extras"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    const/16 v24, 0x0

    :goto_7
    move/from16 v0, v24

    if-ge v0, v4, :cond_19

    .line 1749
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1750
    .restart local v27    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    move-object/from16 v22, v0

    .line 1751
    .local v22, "extras":Landroid/os/Bundle;
    if-eqz v22, :cond_14

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v49

    if-nez v49, :cond_15

    .line 1748
    :cond_14
    :goto_8
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 1754
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v49, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 1758
    .restart local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_18

    .line 1759
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    move/from16 v49, v0

    if-eqz v49, :cond_16

    .line 1760
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1761
    .restart local v12    # "authorityName":Ljava/lang/String;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "/"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, " u"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1777
    .restart local v6    # "accountKey":Ljava/lang/String;
    :goto_9
    new-instance v45, Landroid/text/format/Time;

    invoke-direct/range {v45 .. v45}, Landroid/text/format/Time;-><init>()V

    .line 1778
    .restart local v45    # "time":Landroid/text/format/Time;
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v20, v0

    .line 1779
    .restart local v20    # "eventTime":J
    move-object/from16 v0, v45

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1781
    const-string v49, "  #%-3d: %s %8s "

    const/16 v54, 0x3

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    add-int/lit8 v56, v24, 0x1

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x2

    sget-object v56, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v57, v0

    aget-object v56, v56, v57

    aput-object v56, v54, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1786
    const/16 v49, 0x3

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v54, 0x0

    aput-object v6, v49, v54

    const/16 v54, 0x1

    aput-object v12, v49, v54

    const/16 v54, 0x2

    aput-object v22, v49, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_8

    .line 1764
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v20    # "eventTime":J
    .end local v45    # "time":Landroid/text/format/Time;
    :cond_16
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    move/from16 v49, v0

    if-eqz v49, :cond_17

    .line 1765
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, "/"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v54, " u"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v54, v0

    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1768
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "none"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_9

    .line 1770
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_17
    const-string v12, "Unknown"

    .line 1771
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_9

    .line 1774
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_18
    const-string v12, "Unknown"

    .line 1775
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_9

    .line 1789
    .end local v4    # "N":I
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v22    # "extras":Landroid/os/Bundle;
    .end local v23    # "format":Ljava/lang/String;
    .end local v24    # "i":I
    .end local v27    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v31    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v33    # "maxAccount":I
    .end local v34    # "maxAuthority":I
    .end local v38    # "pm":Landroid/content/pm/PackageManager;
    .end local v50    # "totalElapsedTime":J
    .end local v52    # "totalTimes":J
    :cond_19
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1844
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1845
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v4

    .line 1846
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_1

    .line 1847
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1848
    .local v3, "user":Landroid/content/pm/UserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync adapters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1851
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1852
    .local v2, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 1854
    .end local v2    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1855
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    .line 1858
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # J

    .prologue
    .line 1503
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1504
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1505
    return-void
.end method

.method private ensureAlarmService()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 542
    :cond_0
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 1293
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1294
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1295
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 359
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 3320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3323
    :goto_0
    return-object v1

    .line 3321
    :catch_0
    move-exception v0

    .line 3323
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getLastFailureMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1472
    packed-switch p1, :pswitch_data_0

    .line 1498
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 1474
    :pswitch_0
    const-string v0, "sync already in progress"

    goto :goto_0

    .line 1477
    :pswitch_1
    const-string v0, "authentication error"

    goto :goto_0

    .line 1480
    :pswitch_2
    const-string v0, "I/O error"

    goto :goto_0

    .line 1483
    :pswitch_3
    const-string v0, "parse error"

    goto :goto_0

    .line 1486
    :pswitch_4
    const-string v0, "conflict error"

    goto :goto_0

    .line 1489
    :pswitch_5
    const-string v0, "too many deletions error"

    goto :goto_0

    .line 1492
    :pswitch_6
    const-string v0, "too many retries error"

    goto :goto_0

    .line 1495
    :pswitch_7
    const-string v0, "internal error"

    goto :goto_0

    .line 1472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    .locals 18
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 915
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 917
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v12

    .line 919
    .local v12, "previousSettings":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v6, -0x1

    .line 920
    .local v6, "newDelayInMs":J
    if-eqz v12, :cond_2

    .line 923
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-gez v2, :cond_1

    .line 924
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    const-string v3, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " seconds."

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v14, 0x2

    mul-long v6, v2, v14

    .line 933
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_3

    .line 935
    const-wide/16 v2, 0x7530

    const-wide/32 v14, 0x80e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v14, v15}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v6

    .line 940
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sync_max_retry_delay_in_seconds"

    const-wide/16 v14, 0xe10

    invoke-static {v2, v3, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 943
    .local v8, "maxSyncRetryTimeInSeconds":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-lez v2, :cond_4

    .line 944
    const-wide/16 v2, 0x3e8

    mul-long v6, v8, v2

    .line 947
    :cond_4
    add-long v4, v10, v6

    .line 949
    .local v4, "backoff":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 950
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/content/SyncOperation;->backoff:J

    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    .line 953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v3

    .line 954
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v13, v4, v5}, Lcom/android/server/content/SyncQueue;->onBackoffChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 955
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static isSyncSetting(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 3213
    const-string v1, "expedited"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3252
    :cond_0
    :goto_0
    return v0

    .line 3216
    :cond_1
    const-string v1, "ignore_settings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3219
    const-string v1, "ignore_backoff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3222
    const-string v1, "do_not_retry"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3225
    const-string v1, "force"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3228
    const-string v1, "upload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3231
    const-string v1, "deletions_override"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3234
    const-string v1, "discard_deletions"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3237
    const-string v1, "expected_upload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3240
    const-string v1, "expected_download"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3243
    const-string v1, "sync_priority"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3246
    const-string v1, "allow_metered"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3249
    const-string v1, "initialize"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3252
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSyncStillActive(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 3
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 3170
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3171
    .local v1, "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-ne v1, p1, :cond_0

    .line 3172
    const/4 v2, 0x1

    .line 3175
    .end local v1    # "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private jitterize(JJ)J
    .locals 7
    .param p1, "minValue"    # J
    .param p3, "maxValue"    # J

    .prologue
    .line 495
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 496
    .local v0, "random":Ljava/util/Random;
    sub-long v2, p3, p1

    .line 497
    .local v2, "spread":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 498
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_0
    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, p1

    return-wide v4
.end method

.method private onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    .line 1142
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    .line 1143
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v1

    .line 1144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncQueue;->removeUserLocked(I)V

    .line 1145
    monitor-exit v1

    .line 1146
    return-void

    .line 1145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserStarting(I)V
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 1105
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    .line 1111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v4

    .line 1112
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncQueue;->addPendingOperations(I)V

    .line 1113
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v13

    .line 1117
    .local v13, "accounts":[Landroid/accounts/Account;
    move-object v14, v13

    .local v14, "arr$":[Landroid/accounts/Account;
    array-length v0, v14

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v3, v14, v15

    .line 1118
    .local v3, "account":Landroid/accounts/Account;
    const/4 v5, -0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    .line 1117
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1113
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v13    # "accounts":[Landroid/accounts/Account;
    .end local v14    # "arr$":[Landroid/accounts/Account;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1123
    .restart local v13    # "accounts":[Landroid/accounts/Account;
    .restart local v14    # "arr$":[Landroid/accounts/Account;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 1124
    return-void
.end method

.method private onUserStopping(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    .line 1129
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 1136
    return-void
.end method

.method private postSyncExpiryMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 865
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    const-string v1, "SyncManager"

    const-string v2, "posting MESSAGE_SYNC_EXPIRED in 1800s"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 870
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 871
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 872
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 873
    return-void
.end method

.method private readDataConnectionState()Z
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 324
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeSyncExpiryMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 3
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 879
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing all MESSAGE_SYNC_EXPIRED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    .line 883
    return-void
.end method

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 852
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string v2, "sending MESSAGE_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 854
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 855
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 856
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 857
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 858
    return-void
.end method

.method private sendCheckAlarmsMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 837
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string v1, "sending MESSAGE_CHECK_ALARMS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(I)V

    .line 839
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 840
    return-void
.end method

.method private sendSyncAlarmMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 832
    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string v1, "sending MESSAGE_SYNC_ALARM"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 834
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 3
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 844
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string v2, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 846
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 847
    new-instance v1, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 848
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 849
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncOperation;J)V
    .locals 10
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delayUntilSeconds"    # J

    .prologue
    .line 959
    const-wide/16 v6, 0x3e8

    mul-long v2, p2, v6

    .line 960
    .local v2, "delayUntil":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 962
    .local v0, "absoluteNow":J
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    .line 963
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v2, v0

    add-long v4, v6, v8

    .line 967
    .local v4, "newDelayUntilTime":J
    :goto_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 968
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v7

    .line 969
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    iget-object v8, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, v8, v4, v5}, Lcom/android/server/content/SyncQueue;->onDelayUntilTimeChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 970
    monitor-exit v7

    .line 971
    return-void

    .line 965
    .end local v4    # "newDelayUntilTime":J
    :cond_0
    const-wide/16 v4, 0x0

    .restart local v4    # "newDelayUntilTime":J
    goto :goto_0

    .line 970
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 8
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;
    .param p2, "includeSyncSettings"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3185
    if-ne p0, p1, :cond_1

    .line 3205
    :cond_0
    :goto_0
    return v4

    .line 3189
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-eq v6, v7, :cond_2

    move v4, v5

    .line 3190
    goto :goto_0

    .line 3192
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-le v6, v7, :cond_5

    move-object v0, p0

    .line 3193
    .local v0, "bigger":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-le v6, v7, :cond_6

    move-object v3, p1

    .line 3194
    .local v3, "smaller":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3195
    .local v2, "key":Ljava/lang/String;
    if-nez p2, :cond_4

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3198
    :cond_4
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v5

    .line 3199
    goto :goto_0

    .end local v0    # "bigger":Landroid/os/Bundle;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "smaller":Landroid/os/Bundle;
    :cond_5
    move-object v0, p1

    .line 3192
    goto :goto_1

    .restart local v0    # "bigger":Landroid/os/Bundle;
    :cond_6
    move-object v3, p0

    .line 3193
    goto :goto_2

    .line 3201
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "smaller":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 3202
    goto :goto_0
.end method


# virtual methods
.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 980
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 981
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 1026
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v1

    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 1028
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v1, p1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1034
    :cond_0
    return-void

    .line 1028
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const-wide/16 v2, -0x1

    .line 1013
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v1

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 1015
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v1, p1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1018
    return-void

    .line 1015
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1286
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1287
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V

    .line 1288
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 1289
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1290
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1522
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 1523
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 1524
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;)V
    .locals 42
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1299
    const-string v34, "data connected: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1300
    const-string v34, "auto sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v33

    .line 1302
    .local v33, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v33, :cond_1

    .line 1303
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    .line 1304
    .local v32, "user":Landroid/content/pm/UserInfo;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "u"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v35, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1307
    .end local v32    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1309
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v34, "memory low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1311
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v5

    .line 1313
    .local v5, "accounts":[Landroid/accounts/AccountAndUser;
    const-string v34, "accounts: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    sget-object v34, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    move-object/from16 v0, v34

    if-eq v5, v0, :cond_2

    .line 1315
    array-length v0, v5

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1319
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1320
    .local v18, "now":J
    const-string v34, "now: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1321
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    const-string v34, "offset: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    const-string v34, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    const-string v34, "uptime: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v34, 0x3e8

    div-long v34, v18, v34

    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    const-string v34, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    const-string v34, "time spent syncing: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    const-string v34, " (HH:MM:SS), sync "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    move/from16 v34, v0

    if-eqz v34, :cond_3

    const-string v34, ""

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    const-string v34, "in progress"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v34 .. v34}, Lcom/android/server/content/SyncManager$SyncHandler;->access$1600(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v34

    if-eqz v34, :cond_4

    .line 1333
    const-string v34, "next alarm time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v34 .. v34}, Lcom/android/server/content/SyncManager$SyncHandler;->access$1600(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1334
    const-string v34, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v34 .. v34}, Lcom/android/server/content/SyncManager$SyncHandler;->access$1600(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    sub-long v34, v34, v18

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    const-string v34, " (HH:MM:SS) from now)"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    :goto_3
    const-string v34, "notification info: "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 1343
    .local v24, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    .line 1344
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1347
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Active Syncs: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1349
    .local v20, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1350
    .local v6, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v34, v0

    sub-long v34, v18, v34

    const-wide/16 v36, 0x3e8

    div-long v10, v34, v36

    .line 1351
    .local v10, "durationInSeconds":J
    const-string v34, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1352
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1353
    const-string v34, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1354
    iget-object v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1355
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    .line 1317
    .end local v6    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v10    # "durationInSeconds":J
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "now":J
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v34, "not known yet"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1330
    .restart local v18    # "now":J
    :cond_3
    const-string v34, "not "

    goto/16 :goto_2

    .line 1338
    :cond_4
    const-string v34, "no alarm is scheduled (there had better not be any pending syncs)"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1358
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 1359
    const/16 v34, 0x0

    :try_start_0
    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->dumpPendingOperations(Ljava/lang/StringBuilder;)V

    .line 1363
    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1366
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1370
    const-string v34, "Sync Status"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    move-object v7, v5

    .local v7, "arr$":[Landroid/accounts/AccountAndUser;
    array-length v15, v7

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .local v14, "i$":I
    :goto_5
    if-ge v14, v15, :cond_e

    aget-object v4, v7, v14

    .line 1372
    .local v4, "account":Landroid/accounts/AccountAndUser;
    const-string v34, "Account %s u%d %s\n"

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    aput-object v37, v35, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    aput-object v37, v35, v36

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1375
    const-string v34, "======================================================================="

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    new-instance v31, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v34, 0xd

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    .line 1377
    .local v31, "table":Lcom/android/server/content/SyncManager$PrintTable;
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0xd

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "Authority"

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const-string v38, "Syncable"

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const-string v38, "Enabled"

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const-string v38, "Delay"

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const-string v38, "Loc"

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const-string v38, "Poll"

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const-string v38, "Per"

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const-string v38, "Serv"

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const-string v38, "User"

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const-string v38, "Tot"

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const-string v38, "Time"

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const-string v38, "Last Sync"

    aput-object v38, v36, v37

    const/16 v37, 0xc

    const-string v38, "Periodic"

    aput-object v38, v36, v37

    move-object/from16 v0, v31

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1393
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 1395
    .local v26, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v34, v0

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v34

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1396
    new-instance v34, Lcom/android/server/content/SyncManager$10;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1404
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14    # "i$":I
    .local v13, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1405
    .local v29, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v34, v0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 1408
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v21

    .line 1409
    .local v21, "row":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v35, v0

    new-instance v36, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v34

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v30

    .line 1415
    .local v30, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1416
    .local v25, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/content/SyncStatusInfo;

    .line 1417
    .local v27, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1418
    .local v8, "authority":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x32

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_7

    .line 1419
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x32

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1421
    :cond_7
    const/16 v34, 0x0

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v8, v35, v36

    const/16 v36, 0x1

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v21

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1422
    const/16 v34, 0x4

    const/16 v35, 0x7

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x3

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x4

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x5

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x6

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x3e8

    div-long v38, v38, v40

    invoke-static/range {v38 .. v39}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v21

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1432
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v12, v0, :cond_9

    .line 1433
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/PeriodicSync;

    .line 1434
    .local v28, "sync":Landroid/content/PeriodicSync;
    const-string v34, "[p:%d s, f: %d s]"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/PeriodicSync;->period:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/PeriodicSync;->flexTime:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1436
    .local v17, "period":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/Bundle;->size()I

    move-result v34

    if-lez v34, :cond_8

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1439
    .local v9, "extras":Ljava/lang/String;
    :goto_8
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Next sync: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v36

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/PeriodicSync;->period:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x3e8

    mul-long v38, v38, v40

    add-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1441
    .local v16, "next":Ljava/lang/String;
    mul-int/lit8 v34, v12, 0x2

    add-int v34, v34, v21

    const/16 v35, 0xc

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v0, v31

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1442
    mul-int/lit8 v34, v12, 0x2

    add-int v34, v34, v21

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0xc

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v16, v36, v37

    move-object/from16 v0, v31

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1432
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 1363
    .end local v4    # "account":Landroid/accounts/AccountAndUser;
    .end local v7    # "arr$":[Landroid/accounts/AccountAndUser;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "extras":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "len$":I
    .end local v16    # "next":Ljava/lang/String;
    .end local v17    # "period":Ljava/lang/String;
    .end local v21    # "row":I
    .end local v25    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v26    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v27    # "status":Landroid/content/SyncStatusInfo;
    .end local v28    # "sync":Landroid/content/PeriodicSync;
    .end local v29    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v30    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v31    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :catchall_0
    move-exception v34

    :try_start_1
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v34

    .line 1436
    .restart local v4    # "account":Landroid/accounts/AccountAndUser;
    .restart local v7    # "arr$":[Landroid/accounts/AccountAndUser;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v15    # "len$":I
    .restart local v17    # "period":Ljava/lang/String;
    .restart local v21    # "row":I
    .restart local v25    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v26    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .restart local v27    # "status":Landroid/content/SyncStatusInfo;
    .restart local v28    # "sync":Landroid/content/PeriodicSync;
    .restart local v29    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v30    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .restart local v31    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :cond_8
    const-string v9, "Bundle[]"

    goto/16 :goto_8

    .line 1445
    .end local v17    # "period":Ljava/lang/String;
    .end local v28    # "sync":Landroid/content/PeriodicSync;
    :cond_9
    move/from16 v22, v21

    .line 1446
    .local v22, "row1":I
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v34, v0

    cmp-long v34, v34, v18

    if-lez v34, :cond_b

    .line 1447
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "row1":I
    .local v23, "row1":I
    const/16 v34, 0xc

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "D: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v38, v0

    sub-long v38, v38, v18

    const-wide/16 v40, 0x3e8

    div-long v38, v38, v40

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v22

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1448
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v34, v0

    cmp-long v34, v34, v18

    if-lez v34, :cond_a

    .line 1449
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "row1":I
    .restart local v22    # "row1":I
    const/16 v34, 0xc

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "B: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v38, v0

    sub-long v38, v38, v18

    const-wide/16 v40, 0x3e8

    div-long v38, v38, v40

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v23

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1450
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "row1":I
    .restart local v23    # "row1":I
    const/16 v34, 0xc

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x3e8

    div-long v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v22

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    :cond_a
    move/from16 v22, v23

    .line 1454
    .end local v23    # "row1":I
    .restart local v22    # "row1":I
    :cond_b
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_c

    .line 1455
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "row1":I
    .restart local v23    # "row1":I
    const/16 v34, 0xb

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v38, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    move/from16 v39, v0

    aget-object v38, v38, v39

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "SUCCESS"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v22

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1457
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "row1":I
    .restart local v22    # "row1":I
    const/16 v34, 0xb

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v23

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1459
    :cond_c
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_6

    .line 1460
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "row1":I
    .restart local v23    # "row1":I
    const/16 v34, 0xb

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v38, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move/from16 v39, v0

    aget-object v38, v38, v39

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "FAILURE"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v22

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1462
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "row1":I
    .restart local v22    # "row1":I
    const/16 v34, 0xb

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v23

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1464
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "row1":I
    .restart local v23    # "row1":I
    const/16 v34, 0xb

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    move-object/from16 v37, v0

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move/from16 v1, v22

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    move/from16 v22, v23

    .end local v23    # "row1":I
    .restart local v22    # "row1":I
    goto/16 :goto_6

    .line 1467
    .end local v8    # "authority":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v21    # "row":I
    .end local v22    # "row1":I
    .end local v25    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v27    # "status":Landroid/content/SyncStatusInfo;
    .end local v29    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v30    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    :cond_d
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    .line 1371
    add-int/lit8 v13, v14, 0x1

    .local v13, "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_5

    .line 1469
    .end local v4    # "account":Landroid/accounts/AccountAndUser;
    .end local v26    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v31    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :cond_e
    return-void
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 509
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 510
    .local v0, "isSyncable":I
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 513
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 534
    .end local v0    # "isSyncable":I
    :cond_0
    :goto_0
    return v0

    .line 516
    .restart local v0    # "isSyncable":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v7}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v3

    .line 519
    .local v3, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v3, :cond_0

    .line 521
    const/4 v1, 0x0

    .line 523
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 525
    if-eqz v1, :cond_0

    .line 530
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    move v0, v5

    .line 534
    goto :goto_0

    .line 526
    :catch_0
    move-exception v2

    .line 528
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 821
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v5, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    .line 822
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/SyncAdapterType;

    .line 823
    .local v4, "types":[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .line 824
    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 825
    .local v2, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v4, v0

    .line 826
    add-int/lit8 v0, v0, 0x1

    .line 827
    goto :goto_0

    .line 828
    .end local v2    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return-object v4
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 6
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v5, 0x0

    .line 1037
    const-string v2, "SyncManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 1038
    .local v0, "isLoggable":Z
    if-eqz v0, :cond_0

    .line 1039
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encountered error(s) during the sync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    new-instance v1, Lcom/android/server/content/SyncOperation;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1047
    .end local p2    # "operation":Lcom/android/server/content/SyncOperation;
    .local v1, "operation":Lcom/android/server/content/SyncOperation;
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "ignore_backoff"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1048
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "ignore_backoff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1051
    :cond_1
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "do_not_retry"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1052
    if-eqz v0, :cond_2

    .line 1053
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_2
    :goto_0
    return-void

    .line 1056
    :cond_3
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "upload"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_5

    .line 1059
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "upload"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1060
    if-eqz v0, :cond_4

    .line 1061
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 1065
    :cond_5
    iget-boolean v2, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v2, :cond_6

    .line 1068
    if-eqz v0, :cond_2

    .line 1069
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1072
    :cond_6
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1074
    if-eqz v0, :cond_7

    .line 1075
    const-string v2, "SyncManager"

    const-string v3, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 1079
    :cond_8
    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v2, :cond_a

    .line 1080
    if-eqz v0, :cond_9

    .line 1081
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_9
    new-instance v2, Lcom/android/server/content/SyncOperation;

    const-wide/16 v4, 0x2710

    invoke-direct {v2, v1, v4, v5}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;J)V

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_0

    .line 1089
    :cond_a
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1091
    if-eqz v0, :cond_b

    .line 1092
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_0

    .line 1098
    :cond_c
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;

    .prologue
    .line 811
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 812
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 813
    sget-wide v6, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const-wide/16 v0, 0x2

    sget-wide v2, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    mul-long v8, v0, v2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    .line 817
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    .locals 54
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "beforeRuntimeMillis"    # J
    .param p8, "runtimeMillis"    # J
    .param p10, "onlyThoseWithUnkownSyncableState"    # Z

    .prologue
    .line 655
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v45

    .line 657
    .local v45, "isLoggable":Z
    if-nez p5, :cond_0

    .line 658
    new-instance p5, Landroid/os/Bundle;

    .end local p5    # "extras":Landroid/os/Bundle;
    invoke-direct/range {p5 .. p5}, Landroid/os/Bundle;-><init>()V

    .line 660
    .restart local p5    # "extras":Landroid/os/Bundle;
    :cond_0
    if-eqz v45, :cond_1

    .line 661
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "one-time sync for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    const-string v3, "expedited"

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    .line 665
    .local v38, "expedited":Ljava/lang/Boolean;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 666
    const-wide/16 p8, -0x1

    .line 670
    :cond_2
    if-eqz p1, :cond_5

    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_5

    .line 671
    const/4 v3, 0x1

    new-array v0, v3, [Landroid/accounts/AccountAndUser;

    move-object/from16 v35, v0

    const/4 v3, 0x0

    new-instance v4, Landroid/accounts/AccountAndUser;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v4, v35, v3

    .line 682
    .local v35, "accounts":[Landroid/accounts/AccountAndUser;
    :cond_3
    const-string v3, "upload"

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 683
    .local v53, "uploadOnly":Z
    const-string v3, "force"

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 684
    .local v48, "manualSync":Z
    if-eqz v48, :cond_4

    .line 685
    const-string v3, "ignore_backoff"

    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    const-string v3, "ignore_settings"

    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 688
    :cond_4
    const-string v3, "ignore_settings"

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 692
    .local v42, "ignoreSettings":Z
    if-eqz v53, :cond_7

    .line 693
    const/4 v7, 0x1

    .line 704
    .local v7, "source":I
    :goto_0
    move-object/from16 v36, v35

    .local v36, "arr$":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v47, v0

    .local v47, "len$":I
    const/16 v40, 0x0

    .local v40, "i$":I
    move/from16 v41, v40

    .end local v40    # "i$":I
    .local v41, "i$":I
    :goto_1
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_6

    aget-object v2, v36, v41

    .line 707
    .local v2, "account":Landroid/accounts/AccountAndUser;
    new-instance v52, Ljava/util/HashSet;

    invoke-direct/range {v52 .. v52}, Ljava/util/HashSet;-><init>()V

    .line 709
    .local v52, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v4, v2, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v3, v4}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .end local v41    # "i$":I
    .local v40, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 710
    .local v49, "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v49

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 673
    .end local v2    # "account":Landroid/accounts/AccountAndUser;
    .end local v7    # "source":I
    .end local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v36    # "arr$":[Landroid/accounts/AccountAndUser;
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v42    # "ignoreSettings":Z
    .end local v47    # "len$":I
    .end local v48    # "manualSync":Z
    .end local v49    # "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v52    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v53    # "uploadOnly":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    move-object/from16 v35, v0

    .line 674
    .restart local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v35

    array-length v3, v0

    if-nez v3, :cond_3

    .line 675
    if-eqz v45, :cond_6

    .line 676
    const-string v3, "SyncManager"

    const-string v4, "scheduleSync: no accounts configured, dropping"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_6
    return-void

    .line 694
    .restart local v42    # "ignoreSettings":Z
    .restart local v48    # "manualSync":Z
    .restart local v53    # "uploadOnly":Z
    :cond_7
    if-eqz v48, :cond_8

    .line 695
    const/4 v7, 0x3

    .restart local v7    # "source":I
    goto :goto_0

    .line 696
    .end local v7    # "source":I
    :cond_8
    if-nez p4, :cond_9

    .line 697
    const/4 v7, 0x2

    .restart local v7    # "source":I
    goto :goto_0

    .line 701
    .end local v7    # "source":I
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "source":I
    goto :goto_0

    .line 716
    .restart local v2    # "account":Landroid/accounts/AccountAndUser;
    .restart local v36    # "arr$":[Landroid/accounts/AccountAndUser;
    .restart local v40    # "i$":Ljava/util/Iterator;
    .restart local v47    # "len$":I
    .restart local v52    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    if-eqz p4, :cond_b

    .line 717
    move-object/from16 v0, v52

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v39

    .line 718
    .local v39, "hasSyncAdapter":Z
    invoke-virtual/range {v52 .. v52}, Ljava/util/HashSet;->clear()V

    .line 719
    if-eqz v39, :cond_b

    move-object/from16 v0, v52

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 722
    .end local v39    # "hasSyncAdapter":Z
    :cond_b
    invoke-virtual/range {v52 .. v52}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_c
    :goto_3
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 723
    .local v8, "authority":Ljava/lang/String;
    iget-object v3, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v2, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v8}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v46

    .line 725
    .local v46, "isSyncable":I
    if-eqz v46, :cond_c

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v4, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v8, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v4

    iget v5, v2, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v50

    .line 731
    .local v50, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v50, :cond_c

    .line 734
    move-object/from16 v0, v50

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v18

    .line 735
    .local v18, "allowParallelSyncs":Z
    move-object/from16 v0, v50

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v44

    .line 736
    .local v44, "isAlwaysSyncable":Z
    if-gez v46, :cond_d

    if-eqz v44, :cond_d

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v4, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v5, v2, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V

    .line 738
    const/16 v46, 0x1

    .line 740
    :cond_d
    if-eqz p10, :cond_e

    if-gez v46, :cond_c

    .line 743
    :cond_e
    move-object/from16 v0, v50

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v3

    if-nez v3, :cond_f

    if-nez v53, :cond_c

    .line 747
    :cond_f
    if-ltz v46, :cond_10

    if-nez v42, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v4, v2, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v4, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v5, v2, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    const/16 v51, 0x1

    .line 753
    .local v51, "syncAllowed":Z
    :goto_4
    if-nez v51, :cond_12

    .line 754
    if-eqz v45, :cond_c

    .line 755
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleSync: sync of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not allowed, dropping request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 747
    .end local v51    # "syncAllowed":Z
    :cond_11
    const/16 v51, 0x0

    goto :goto_4

    .line 760
    .restart local v51    # "syncAllowed":Z
    :cond_12
    new-instance v43, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v2, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v0, v43

    invoke-direct {v0, v3, v8, v4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 763
    .local v43, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v37

    .line 764
    .local v37, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v16

    .line 766
    .local v16, "delayUntil":J
    if-eqz v37, :cond_16

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 767
    .local v14, "backoffTime":J
    :goto_5
    if-gez v46, :cond_14

    .line 769
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 770
    .local v9, "newExtras":Landroid/os/Bundle;
    const-string v3, "initialize"

    const/4 v4, 0x1

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 771
    if-eqz v45, :cond_13

    .line 772
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "schedule initialisation Sync:, delay until "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", run by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extras "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_13
    new-instance v3, Lcom/android/server/content/SyncOperation;

    iget-object v4, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v5, v2, Landroid/accounts/AccountAndUser;->userId:I

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v6, p3

    invoke-direct/range {v3 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 786
    .end local v9    # "newExtras":Landroid/os/Bundle;
    :cond_14
    if-nez p10, :cond_c

    .line 787
    if-eqz v45, :cond_15

    .line 788
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleSync: delay until "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " run by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extras "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_15
    new-instance v19, Lcom/android/server/content/SyncOperation;

    iget-object v0, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    iget v0, v2, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v21, v0

    move/from16 v22, p3

    move/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, p5

    move-wide/from16 v26, p8

    move-wide/from16 v28, p6

    move-wide/from16 v30, v14

    move-wide/from16 v32, v16

    move/from16 v34, v18

    invoke-direct/range {v19 .. v34}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_3

    .line 766
    .end local v14    # "backoffTime":J
    :cond_16
    const-wide/16 v14, 0x0

    goto/16 :goto_5

    .line 704
    .end local v8    # "authority":Ljava/lang/String;
    .end local v16    # "delayUntil":J
    .end local v18    # "allowParallelSyncs":Z
    .end local v37    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v43    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v44    # "isAlwaysSyncable":Z
    .end local v46    # "isSyncable":I
    .end local v50    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v51    # "syncAllowed":Z
    :cond_17
    add-int/lit8 v40, v41, 0x1

    .local v40, "i$":I
    move/from16 v41, v40

    .end local v40    # "i$":I
    .restart local v41    # "i$":I
    goto/16 :goto_1
.end method

.method public scheduleSync(Landroid/content/ComponentName;IILandroid/os/Bundle;JJ)V
    .locals 25
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "beforeRunTimeMillis"    # J
    .param p7, "runtimeMillis"    # J

    .prologue
    .line 558
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    .line 559
    .local v23, "isLoggable":Z
    if-eqz v23, :cond_0

    .line 560
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "one off sync for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    const-string v4, "expedited"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 564
    .local v19, "expedited":Ljava/lang/Boolean;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 565
    const-wide/16 p7, -0x1

    .line 568
    :cond_1
    const-string v4, "ignore_settings"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 570
    .local v20, "ignoreSettings":Z
    const/4 v8, 0x5

    .line 571
    .local v8, "source":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getIsTargetServiceActive(Landroid/content/ComponentName;I)Z

    move-result v22

    .line 575
    .local v22, "isEnabled":Z
    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/16 v24, 0x1

    .line 578
    .local v24, "syncAllowed":Z
    :goto_0
    if-nez v24, :cond_5

    .line 579
    if-eqz v23, :cond_3

    .line 580
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleSync: sync of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not allowed, dropping request."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_3
    :goto_1
    return-void

    .line 575
    .end local v24    # "syncAllowed":Z
    :cond_4
    const/16 v24, 0x0

    goto :goto_0

    .line 584
    .restart local v24    # "syncAllowed":Z
    :cond_5
    if-nez v22, :cond_6

    .line 585
    if-eqz v23, :cond_3

    .line 586
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleSync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not enabled, dropping request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 590
    :cond_6
    new-instance v21, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    .line 591
    .local v21, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v18

    .line 592
    .local v18, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v16

    .line 593
    .local v16, "delayUntil":J
    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 594
    .local v14, "backoffTime":J
    :goto_2
    if-eqz v23, :cond_7

    .line 595
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "schedule Sync:, delay until "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", run by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sync service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extras "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_7
    new-instance v4, Lcom/android/server/content/SyncOperation;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p7

    move-wide/from16 v12, p5

    invoke-direct/range {v4 .. v17}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_1

    .line 593
    .end local v14    # "backoffTime":J
    :cond_8
    const-wide/16 v14, 0x0

    goto :goto_2
.end method

.method public scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .locals 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v3, 0x2

    .line 990
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v2

    .line 991
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    .line 992
    .local v0, "queueChanged":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    if-eqz v0, :cond_2

    .line 995
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleSyncOperation: enqueued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 1005
    :cond_1
    :goto_0
    return-void

    .line 992
    .end local v0    # "queueChanged":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1000
    .restart local v0    # "queueChanged":Z
    :cond_2
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleSyncOperation: dropping duplicate sync operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateRunningAccounts()V
    .locals 5

    .prologue
    .line 269
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 271
    iget-boolean v3, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    if-eqz v3, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 276
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 277
    .local v1, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    const-string v3, "SyncManager"

    const-string v4, "canceling sync since the account is no longer running"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    goto :goto_0

    .line 287
    .end local v1    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 288
    return-void
.end method
