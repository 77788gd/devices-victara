.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyDisconnectWifiConnection(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3889
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 3891
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25011

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3892
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v1, "Disable all WiFi Nettwork"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3893
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;->val$msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    const v1, 0x2200d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 3894
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;->val$msg:Landroid/os/Message;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3895
    return-void
.end method
