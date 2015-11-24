.class Lcom/android/server/wifi/WifiStateMachine$UntetheringState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UntetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 9317
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    .line 9321
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x2001e

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$29004(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 9325
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9332
    :goto_0
    return-void

    .line 9326
    :catch_0
    move-exception v1

    .line 9327
    .local v1, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to disable IPv6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 9328
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 9329
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to disable IPv6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 9335
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9337
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 9366
    const/4 v1, 0x0

    .line 9368
    :goto_0
    return v1

    .line 9339
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 9342
    .local v0, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29100(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9368
    .end local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 9344
    .restart local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 9347
    .end local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 9348
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Failed to get tether update, force stop access point"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9349
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 9363
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$30300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 9337
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_1
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
    .end sparse-switch
.end method
