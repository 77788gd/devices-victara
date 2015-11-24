.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserAuthorizingNegotiationRequestState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2065
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$10300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 2066
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 2093
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2070
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2071
    const/4 v0, 0x1

    .line 2072
    .local v0, "ret":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2085
    const/4 v0, 0x0

    .line 2087
    .end local v0    # "ret":Z
    :goto_0
    return v0

    .line 2074
    .restart local v0    # "ret":Z
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    .line 2075
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$6900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$10400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 2076
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$6900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2077
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 2078
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$7400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$10500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2081
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User rejected negotiation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$6900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2082
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$10600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2072
    nop

    :pswitch_data_0
    .packed-switch 0x23002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
