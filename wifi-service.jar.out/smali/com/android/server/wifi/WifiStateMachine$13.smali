.class Lcom/android/server/wifi/WifiStateMachine$13;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->notifyDisconnectP2pConnection(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 9590
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 9592
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "Remove p2p connection"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9593
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22010

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 9594
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$13;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$13;->val$msg:Landroid/os/Message;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 9595
    return-void
.end method
