.class public final Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;
    }
.end annotation


# static fields
.field private static final ACTION_SAFE_WIFI_CHANNELS_CHANGED:Ljava/lang/String; = "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

.field public static final AUTOCONNECT_ENABLED:I = 0x1

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final DBG:Z = true

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field public static final DISPLAY_SCREEN_ON_OFF_STATUS:I = 0x23019

.field public static final DRIVER_HUNG_EVENT_IN_WIFIDIRECT:I = 0x23015

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final GROUP_INVITATION_TIMED_OUT:I = 0x23017

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field static final P2P_BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final P2P_BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_DEVICE_LIST:I = 0x2301a

.field public static final P2P_PERSISTENT_AUTO_CONNECT:I = 0x2301b

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final START_WIFI_SCAN_FROM_P2P:I = 0x23018

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static mDisableP2pTimeoutIndex:I

.field private static mDisplayScreenStatus:Z

.field private static mGroupCreatingTimeoutIndex:I

.field private static mIsMccModeEnabled:I

.field public static mIsWifiP2pEnabled:Z

.field private static mP2pAutoConnectSupport:I

.field private static mP2pConnectedState:Z

.field private static mSupportedBand:I


# instance fields
.field private PERSISTENT_RETRY_COUNT:I

.field private endSafeChannel:I

.field private mAutonomousGroup:Z

.field private mBTCoexdisabled:Z

.field private mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mGroupSendInvitationTimeoutIndex:I

.field private mInterface:Ljava/lang/String;

.field private mIsInvite:Z

.field private mJoinExistingGroup:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pListFromWifiScan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mPersistentAutoConnectInProgress:Z

.field private mPreviouslyConnectedDeviceInfo:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mTemporarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

.field private okButton:Landroid/widget/Button;

.field private startSafeChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->FORM_GROUP:Ljava/lang/Boolean;

    .line 137
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    .line 142
    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    .line 145
    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    .line 234
    sput-boolean v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsWifiP2pEnabled:Z

    .line 278
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSupportedBand:I

    .line 290
    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I

    .line 297
    sput-boolean v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisplayScreenStatus:Z

    .line 298
    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pAutoConnectSupport:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 438
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 131
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 154
    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupSendInvitationTimeoutIndex:I

    .line 226
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 236
    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->startSafeChannel:I

    .line 238
    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->endSafeChannel:I

    .line 240
    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsInvite:Z

    .line 261
    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    .line 265
    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    .line 268
    iput-byte v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    .line 275
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    .line 279
    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBTCoexdisabled:Z

    .line 280
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    .line 294
    new-instance v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPreviouslyConnectedDeviceInfo:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pListFromWifiScan:Ljava/util/List;

    .line 296
    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentAutoConnectInProgress:Z

    .line 300
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->PERSISTENT_RETRY_COUNT:I

    .line 439
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 442
    const-string v2, "p2p0"

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    .line 443
    new-instance v2, Landroid/net/NetworkInfo;

    const/16 v3, 0xd

    const-string v4, "WIFI_P2P"

    const-string v5, ""

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 445
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    .line 448
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 451
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WifiP2pService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "wifiP2pThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 453
    new-instance v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    .line 455
    new-instance v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v3, "WifiP2pService"

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 456
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->start()V

    .line 457
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisplayScreenStatus:Z

    .line 459
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 464
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 469
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisplayScreenStatus:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 118
    sput-boolean p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisplayScreenStatus:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pListFromWifiScan:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11500()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentAutoConnectInProgress:Z

    return v0
.end method

.method static synthetic access$13002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentAutoConnectInProgress:Z

    return p1
.end method

.method static synthetic access$13500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->PERSISTENT_RETRY_COUNT:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$14200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$14202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic access$16100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupSendInvitationTimeoutIndex:I

    return v0
.end method

.method static synthetic access$16104(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupSendInvitationTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupSendInvitationTimeoutIndex:I

    return v0
.end method

.method static synthetic access$16800()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->FORM_GROUP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$16900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->okButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$16902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->okButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$17000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic access$17102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 118
    sput-boolean p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pConnectedState:Z

    return p0
.end method

.method static synthetic access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$17300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$17302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # B

    .prologue
    .line 118
    iput-byte p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$17304(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$17400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->startSafeChannel:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->startSafeChannel:I

    return p1
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2204()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->endSafeChannel:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->endSafeChannel:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPreviouslyConnectedDeviceInfo:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$5100()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I

    return v0
.end method

.method static synthetic access$5102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 118
    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I

    return p0
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$5500()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pAutoConnectSupport:I

    return v0
.end method

.method static synthetic access$5502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 118
    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pAutoConnectSupport:I

    return p0
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6400()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSupportedBand:I

    return v0
.end method

.method static synthetic access$6402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 118
    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSupportedBand:I

    return p0
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBTCoexdisabled:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBTCoexdisabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->frequencyToChannel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsInvite:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsInvite:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->channelToFrequency(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9600()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$9604()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method private channelToFrequency(I)I
    .locals 1
    .param p1, "chan"    # I

    .prologue
    const/16 v0, 0xe

    .line 654
    if-ne p1, v0, :cond_0

    .line 655
    const/16 v0, 0x9b4

    .line 659
    :goto_0
    return v0

    .line 656
    :cond_0
    if-ge p1, v0, :cond_1

    .line 657
    mul-int/lit8 v0, p1, 0x5

    add-int/lit16 v0, v0, 0x967

    goto :goto_0

    .line 659
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConnectivityInternalPermission()I
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkLocationHardwarePermission()I
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method private enforceConnectivityInternalOrLocationHardwarePermission()V
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkConnectivityInternalPermission()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkLocationHardwarePermission()I

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 556
    :cond_0
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method private frequencyToChannel(I)I
    .locals 1
    .param p1, "freq"    # I

    .prologue
    const/16 v0, 0x9b4

    .line 640
    if-ne p1, v0, :cond_0

    .line 641
    const/16 v0, 0xe

    .line 647
    :goto_0
    return v0

    .line 642
    :cond_0
    if-ge p1, v0, :cond_1

    .line 643
    add-int/lit16 v0, p1, -0x967

    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 644
    :cond_1
    const/16 v0, 0x132e

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1374

    if-gt p1, v0, :cond_2

    .line 645
    add-int/lit16 v0, p1, -0xfa0

    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 647
    :cond_2
    add-int/lit16 v0, p1, -0x1388

    div-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public static getMccModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 672
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I

    if-ne v1, v0, :cond_0

    .line 675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getP2pAutoConnectSupport()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 679
    sget-boolean v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pConnectedState:Z

    if-nez v2, :cond_0

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pAutoConnectSupport:I

    if-ne v2, v1, :cond_0

    sget-boolean v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisplayScreenStatus:Z

    if-ne v2, v1, :cond_0

    .line 683
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v2

    if-ne v2, v1, :cond_1

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I

    if-nez v2, :cond_1

    .line 687
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 685
    goto :goto_0
.end method

.method public static getP2pConnectedState()Z
    .locals 1

    .prologue
    .line 665
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pConnectedState:Z

    if-eqz v0, :cond_0

    .line 666
    const/4 v0, 0x1

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 521
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 522
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    .line 523
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTemporarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public getDeviceP2pChannelList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->p2pGetChannelList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 564
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 565
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalOrLocationHardwarePermission()V

    .line 575
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 576
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 577
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWfdChannelList()Ljava/lang/String;
    .locals 6

    .prologue
    .line 601
    const-string v2, ""

    .line 602
    .local v2, "mac":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 608
    :goto_0
    return-object v3

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 604
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "WifiP2pService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 608
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiNative;->getWfdPeerChannelList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public isMacAddressStoredInGO(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientMacAddress"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->isMacAddressStoredInGo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 591
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(II)V

    .line 592
    return-void
.end method
