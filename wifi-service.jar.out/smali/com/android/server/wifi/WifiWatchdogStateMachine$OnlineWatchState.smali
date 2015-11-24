.class Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineWatchState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleRssiChange()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 729
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 714
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 733
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_0
    return v0

    .line 735
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$402(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 736
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    .line 741
    const/4 v0, 0x1

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x21003
        :pswitch_0
    .end packed-switch
.end method
