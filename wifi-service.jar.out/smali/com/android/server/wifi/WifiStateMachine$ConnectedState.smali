.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8459
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8463
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0x3e8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateDefaultRouteMacAddress(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$24200(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    .line 8464
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8465
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState Enter  mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scanperiod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8470
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    if-eqz v0, :cond_1

    .line 8473
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    invoke-static {v0, v1, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$24300(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 8475
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    .line 8476
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8477
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$16702(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8479
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$16102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8482
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$17202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8484
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$24400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8485
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$24508(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 8486
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState Enter start disconnect test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$24500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8488
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20059

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$24500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 8493
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 8495
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$24602(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8496
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 8706
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "WifiStateMachine: Leaving Connected state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8707
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$16500(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 8708
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$24602(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8709
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8499
    const/4 v3, 0x0

    .line 8500
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v9, p1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 8502
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 8699
    const/4 v9, 0x0

    .line 8701
    :goto_0
    return v9

    .line 8504
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Watchdog reports poor link"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8505
    :cond_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/motorola/android/wifi/WifiMetrics;->reportPERIssue(Lcom/motorola/android/wifi/WifiMetrics$WifiStats;)V

    .line 8506
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$24700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$24800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8701
    :cond_1
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 8509
    :sswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_3

    .line 8510
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiConfigStore;->handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V

    .line 8511
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8512
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$24900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8520
    :cond_2
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .line 8513
    :cond_3
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 8514
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 8515
    if-eqz v3, :cond_2

    .line 8517
    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    goto :goto_2

    .line 8522
    :sswitch_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 8523
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 8524
    if-eqz v3, :cond_4

    .line 8526
    const/4 v9, 0x0

    iput v9, v3, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 8527
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 8530
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 8533
    :sswitch_3
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$24500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 8534
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto :goto_1

    .line 8540
    :sswitch_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$24602(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8541
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 8542
    .local v8, "toBSSID":Ljava/lang/String;
    if-eqz v8, :cond_5

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 8543
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V

    .line 8545
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 8547
    .end local v8    # "toBSSID":Ljava/lang/String;
    :sswitch_5
    const-wide/16 v4, 0x0

    .line 8548
    .local v4, "lastRoam":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$24600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_6

    .line 8550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$24600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 8551
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$24602(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8553
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 8554
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_b

    if-eqz v3, :cond_b

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-nez v9, :cond_b

    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_b

    const-wide/16 v10, 0x7d0

    cmp-long v9, v4, v10

    if-gez v9, :cond_b

    :cond_7
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    sget v10, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    if-gt v9, v10, :cond_9

    :cond_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    sget v10, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    if-le v9, v10, :cond_b

    .line 8573
    :cond_9
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 8574
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$16102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8576
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v11, 0x20057

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x1b58

    invoke-virtual {v9, v10, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 8578
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 8579
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RSSI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " freq="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> debounce"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8586
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 8588
    :cond_b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8589
    const/4 v0, -0x1

    .line 8590
    .local v0, "ajst":I
    if-eqz v3, :cond_c

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 8591
    :cond_c
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RSSI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " freq="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was debouncing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$16100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ajst="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8603
    .end local v0    # "ajst":I
    .end local v4    # "lastRoam":J
    :sswitch_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$24602(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8606
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 8607
    .local v2, "candidate":Landroid/net/wifi/ScanResult;
    const-string v1, "any"

    .line 8608
    .local v1, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 8610
    iget-object v1, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 8612
    :cond_d
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    .line 8613
    .local v6, "netId":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 8616
    if-nez v3, :cond_e

    .line 8617
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "AUTO_ROAM and no config, bail out..."

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8621
    :cond_e
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMD_AUTO_ROAM sup state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " my state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$25000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " nid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " config "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " roam="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " targetRoamBSSID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8631
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9, v3, v1}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 8632
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "AUTO_ROAM nothing to do"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8634
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3500()I

    move-result v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 8639
    :cond_f
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 8641
    const/4 v7, 0x0

    .line 8642
    .local v7, "ret":Z
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    if-eq v9, v6, :cond_11

    .line 8643
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 8645
    const/4 v7, 0x1

    .line 8650
    :cond_10
    :goto_3
    if-eqz v7, :cond_12

    .line 8651
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8652
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$16702(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8655
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8656
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8648
    :cond_11
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    move-result v7

    goto :goto_3

    .line 8659
    :cond_12
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to connect config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " netId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8660
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v10, 0x25002

    const/4 v11, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8662
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()I

    move-result v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 8669
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "candidate":Landroid/net/wifi/ScanResult;
    .end local v6    # "netId":I
    .end local v7    # "ret":Z
    :sswitch_7
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$20100()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8670
    const-string v9, "WifiStateMachine"

    const-string v10, "WISPR_LOGIN_SUCCESSFUL"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8671
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$25300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiWisprClient;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNotificationShown:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$25200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiWisprClient;->setHotSpotNotification(IZ)V

    .line 8673
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNotificationShown:Z
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8674
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x15f90

    add-long/2addr v10, v12

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNotificationRepeatTime:J
    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$25402(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 8679
    :sswitch_8
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$20100()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8680
    const-string v9, "WifiStateMachine"

    const-string v10, "WISPR_LOGIN_FAILED_NETWORK"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8681
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleWISPRLoginFailed(I)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 8685
    :sswitch_9
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$20100()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8686
    const-string v9, "WifiStateMachine"

    const-string v10, "WISPR_LOGIN_FAILED_AUTHENTICATION"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8687
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleWISPRLoginFailed(I)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 8692
    :sswitch_a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$20100()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8693
    const-string v9, "WifiStateMachine"

    const-string v10, "WISPR_LOGIN_FAILED_NOSIM"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8694
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleWISPRLoginFailed(I)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 8502
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_7
        0x1f5 -> :sswitch_8
        0x1f6 -> :sswitch_9
        0x1f7 -> :sswitch_a
        0x20059 -> :sswitch_3
        0x20090 -> :sswitch_1
        0x20091 -> :sswitch_6
        0x20093 -> :sswitch_4
        0x20094 -> :sswitch_2
        0x21015 -> :sswitch_0
        0x24004 -> :sswitch_5
    .end sparse-switch
.end method
