.class Lcom/android/server/wifi/WifiStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5514
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 5517
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->unloadDriver()Z

    .line 5519
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5520
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2102(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 5521
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5525
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5526
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5102(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 5527
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    .line 5529
    .local v0, "wifiApConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 5530
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 5533
    .end local v0    # "wifiApConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 5536
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v5, p1, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 5537
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 5607
    :goto_0
    const/4 v4, 0x0

    .line 5609
    :goto_1
    return v4

    .line 5539
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5541
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "STA"

    invoke-interface {v5, v6, v7}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5553
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 5554
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 5557
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 5563
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5574
    :goto_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 5576
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_country_code"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5578
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "^\\s*$"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5580
    :cond_0
    const-string v0, "US"

    .line 5583
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiNative;->startSupplicant(ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5585
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5586
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "Supplicant start successful"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5587
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMonitor;->startMonitoring()V

    .line 5588
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5542
    .end local v0    # "countryCode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5543
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reload STA firmware "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5564
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 5565
    .local v3, "re":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change interface settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5566
    .end local v3    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 5567
    .local v2, "ie":Ljava/lang/IllegalStateException;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change interface settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5590
    .end local v2    # "ie":Ljava/lang/IllegalStateException;
    .restart local v0    # "countryCode":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "Failed to start supplicant!"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5593
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "Failed to load driver"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5595
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 5600
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5601
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v5, 0xc

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5602
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5604
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "Failed to load driver for softap"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5537
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x20015 -> :sswitch_1
    .end sparse-switch
.end method
