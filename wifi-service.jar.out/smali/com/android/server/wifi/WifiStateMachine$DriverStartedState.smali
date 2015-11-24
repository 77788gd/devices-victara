.class Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5987
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5991
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10900()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5992
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "DriverStartedState enter"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5994
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5995
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5996
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11208(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 5997
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 6003
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$2200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 6005
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11300(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6007
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6009
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$11500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 6012
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6013
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 6019
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV6Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6020
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    .line 6026
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6028
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11900(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6032
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiBestChannel:Lcom/motorola/android/wifi/WifiBestChannel;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$12000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiBestChannel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/android/wifi/WifiBestChannel;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6038
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    if-eq v5, v4, :cond_6

    .line 6039
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6040
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 6041
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 6042
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6044
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6058
    :goto_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_7

    .line 6059
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 6061
    .local v2, "powerManager":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(ZZ)V
    invoke-static {v5, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;ZZ)V

    .line 6068
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 6070
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6071
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 6072
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x20083

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6081
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x200cc

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 6084
    new-instance v1, Landroid/content/Intent;

    const-string v3, "wifi_scan_available"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6085
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6086
    const-string v3, "scan_enabled"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6087
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6089
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10900()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6090
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "Driverstarted State enter done"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6092
    :cond_3
    return-void

    .line 6015
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    .line 6017
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringBroadcastPackets()Z

    goto/16 :goto_0

    .line 6022
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6033
    :catch_0
    move-exception v0

    .line 6034
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to mWifiBestChannel.initialize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6052
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    .line 6054
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 6065
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {v5, v3}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_4
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6348
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6349
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 6350
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$14602(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 6352
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6355
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6356
    const-string v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6357
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6358
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6359
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 6361
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$13002(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6362
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6098
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 6342
    const/16 v18, 0x0

    .line 6344
    :goto_0
    return v18

    .line 6100
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12700(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    .line 6344
    :cond_0
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    .line 6103
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 6105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$12800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/BatchedScanSettings;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 6106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$11900(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 6108
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 6113
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 6114
    .local v8, "country":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    .line 6115
    .local v13, "persist":Z
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 6116
    .local v16, "sequence":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 6117
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const-string v19, "set country code ignored due to sequnce num"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6114
    .end local v13    # "persist":Z
    .end local v16    # "sequence":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 6120
    .restart local v13    # "persist":Z
    .restart local v16    # "sequence":I
    :cond_3
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set country code "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6121
    :cond_4
    if-eqz v13, :cond_5

    .line 6122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$2702(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "wifi_country_code"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6127
    :cond_5
    sget-object v18, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 6128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$13000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$13000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 6130
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 6131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13002(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    const v20, 0x20096

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->access$13100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v22

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 6140
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    const v19, 0x23010

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6137
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to set country code "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 6143
    .end local v8    # "country":Ljava/lang/String;
    .end local v13    # "persist":Z
    .end local v16    # "sequence":I
    :sswitch_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 6144
    .local v4, "band":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set frequency band "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6145
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 6147
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10900()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "did set frequency band "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6149
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$13100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    .line 6153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;)Z
    invoke-static/range {v18 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$13200(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;)Z

    .line 6155
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10900()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "done set frequency band "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6158
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to set frequency band "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6162
    .end local v4    # "band":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$2200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_1

    .line 6162
    :cond_c
    const/16 v18, 0x0

    goto :goto_4

    .line 6167
    :sswitch_5
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 6170
    .local v12, "mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$11100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 6171
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const-string v19, "Already in delayed stop"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6175
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 6177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$11102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$11208(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6179
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Delayed stop message "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$11200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6182
    :cond_e
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6183
    .local v10, "driverStopIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6184
    const-string v18, "DelayedStopCounter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$11200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$13302(Lcom/android/server/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 6189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$13500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->access$13400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->access$13300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v22

    invoke-virtual/range {v18 .. v22}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 6193
    .end local v10    # "driverStopIntent":Landroid/content/Intent;
    .end local v12    # "mode":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$11100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 6194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$11102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$11208(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$13500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$13300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6197
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const-string v19, "Delayed stop ignored due to start"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6198
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 6199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto/16 :goto_1

    .line 6204
    :sswitch_7
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "delayed stop "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$11200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6205
    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$11200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 6206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$13600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_11

    .line 6207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$8500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6210
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->stopDriver()Z

    .line 6212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$5200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 6214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$13700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6216
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$13800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$13900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6220
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 6221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6222
    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 6223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 6225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpFilterInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    if-nez v18, :cond_0

    .line 6226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->startFilteringBroadcastPackets()Z

    goto/16 :goto_1

    .line 6230
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const-string v19, "Illegal arugments to CMD_START_PACKET_FILTERING"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6234
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 6235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6236
    :cond_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-nez v18, :cond_16

    .line 6237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    .line 6239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->stopFilteringBroadcastPackets()Z

    goto/16 :goto_1

    .line 6242
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const-string v19, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6246
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 6247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v18 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 6248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 6250
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v18 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6254
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 6255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v18 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6257
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v18 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6261
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 6262
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 6263
    .local v14, "remoteAddress":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    const/4 v11, 0x1

    .line 6264
    .local v11, "enable":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v11}, Lcom/android/server/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 6263
    .end local v11    # "enable":Z
    :cond_19
    const/4 v11, 0x0

    goto :goto_5

    .line 6269
    .end local v14    # "remoteAddress":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Boolean;

    move-object/from16 v9, v18

    check-cast v9, Ljava/lang/Boolean;

    .line 6270
    .local v9, "doAutoConnect":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 6271
    .local v6, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v7, 0x0

    .local v7, "count":I
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_1c

    .line 6272
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 6273
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->preloaded_ssid:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1a

    .line 6274
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_1b

    const/16 v18, 0x0

    :goto_7
    move/from16 v0, v18

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->skip_auto_connect:I

    .line 6275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 6271
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 6274
    :cond_1b
    const/16 v18, 0x1

    goto :goto_7

    .line 6279
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "wifi_auto_connect_preloaded_nw"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v15

    .line 6281
    .local v15, "rr":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_0

    if-eqz v15, :cond_0

    .line 6282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SharedPreferences is changed to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$14200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6287
    .end local v6    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v7    # "count":I
    .end local v9    # "doAutoConnect":Ljava/lang/Boolean;
    .end local v15    # "rr":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v17

    .line 6288
    .local v17, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v7, 0x0

    .restart local v7    # "count":I
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_1d

    .line 6289
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 6291
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->preloaded_ssid:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    .line 6292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v19, v0

    const-string v20, "wifi_auto_connect_preloaded_nw"

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->skip_auto_connect:I

    move/from16 v18, v0

    if-nez v18, :cond_1e

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v15

    .line 6294
    .restart local v15    # "rr":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_1d

    if-eqz v15, :cond_1d

    .line 6295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    const-string v19, "SharedPreferences is changed for skip_auto_connect"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$14300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6300
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "rr":Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "wifi_auto_connect_preloaded_nw"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 6301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "wifi_auto_connect_preloaded_nw"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 6292
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1e
    const/16 v18, 0x0

    goto :goto_9

    .line 6288
    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 6308
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "count":I
    .end local v17    # "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    sget-object v19, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Init:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$14502(Lcom/android/server/wifi/WifiStateMachine;Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;)Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 6310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Lcom/motorola/android/wifi/WifiMetrics;->reportLFRmetrics(Landroid/net/wifi/WifiInfo;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;Ljava/lang/String;)V

    .line 6311
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LFR Init: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6314
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    sget-object v19, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$14502(Lcom/android/server/wifi/WifiStateMachine;Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;)Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 6316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Lcom/motorola/android/wifi/WifiMetrics;->reportLFRmetrics(Landroid/net/wifi/WifiInfo;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;Ljava/lang/String;)V

    .line 6317
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LFR Status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6320
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    sget-object v19, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$14502(Lcom/android/server/wifi/WifiStateMachine;Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;)Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 6322
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LFR Handover Started: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6329
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wifi/WifiNative;->setDriverLoggingParams(II)Z

    goto/16 :goto_1

    .line 6332
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->dumpDriverDxeSnapShot()Z

    goto/16 :goto_1

    .line 6337
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_20

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->calcalateAndApplyScanInterval(Z)V

    goto/16 :goto_1

    :cond_20
    const/16 v18, 0x0

    goto :goto_a

    .line 6098
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_6
        0x2000e -> :sswitch_5
        0x20012 -> :sswitch_7
        0x2001f -> :sswitch_4
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_b
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_8
        0x20055 -> :sswitch_9
        0x20056 -> :sswitch_a
        0x2005a -> :sswitch_3
        0x2005c -> :sswitch_c
        0x20087 -> :sswitch_1
        0x20097 -> :sswitch_12
        0x20098 -> :sswitch_13
        0x20099 -> :sswitch_14
        0x200cb -> :sswitch_d
        0x200cc -> :sswitch_e
        0x2402e -> :sswitch_f
        0x2402f -> :sswitch_10
        0x24030 -> :sswitch_11
    .end sparse-switch
.end method
