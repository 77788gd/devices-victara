.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

.field final synthetic val$pin:Landroid/widget/EditText;

.field final synthetic val$wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 3525
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->val$wps:Landroid/net/wifi/WpsInfo;

    iput-object p3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->val$pin:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v4, 0x23002

    .line 3527
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->val$wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3528
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$6900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->val$pin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 3530
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accept invitation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$6900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3532
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100()I

    move-result v0

    if-nez v0, :cond_2

    .line 3533
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3534
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25011

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3535
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessageDelayed(IJ)V

    .line 3543
    :goto_0
    return-void

    .line 3537
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3540
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
