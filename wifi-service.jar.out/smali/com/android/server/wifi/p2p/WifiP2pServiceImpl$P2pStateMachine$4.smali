.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/WpsInfo;)V
    .locals 0

    .prologue
    .line 3503
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;->val$wps:Landroid/net/wifi/WpsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->okButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$16900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;->val$wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3507
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->okButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$16900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3509
    :cond_0
    return-void

    .line 3507
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 3517
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 3513
    return-void
.end method
