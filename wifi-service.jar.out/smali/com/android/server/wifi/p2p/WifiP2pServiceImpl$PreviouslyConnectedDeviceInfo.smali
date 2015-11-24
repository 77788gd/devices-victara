.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviouslyConnectedDeviceInfo"
.end annotation


# instance fields
.field mAutoConnectTime:J

.field mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;->mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$PreviouslyConnectedDeviceInfo;->mAutoConnectTime:J

    .line 287
    return-void
.end method
