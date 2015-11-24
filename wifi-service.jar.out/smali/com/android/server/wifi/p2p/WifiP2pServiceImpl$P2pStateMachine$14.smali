.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$14;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyP2pDisconnect(Landroid/os/Message;)V
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
    .line 3919
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$14;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$14;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3921
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$14;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x22010

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 3922
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$14;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$14;->val$msg:Landroid/os/Message;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3923
    return-void
.end method
