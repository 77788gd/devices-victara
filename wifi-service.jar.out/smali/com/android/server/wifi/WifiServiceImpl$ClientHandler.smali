.class Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 160
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    return-void
.end method

.method private replyFailed(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "why"    # I

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "reply":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 278
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 280
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x25005

    const v8, 0x25001

    const/16 v5, 0x9

    const/16 v7, 0x8

    const/4 v6, -0x1

    .line 165
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 269
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientHandler.handleMessage ignoring msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 167
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 168
    const-string v3, "WifiService"

    const-string v4, "New client listening to asynchronous messages"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiTrafficPoller;->addClient(Landroid/os/Messenger;)V

    goto :goto_0

    .line 173
    :cond_0
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client connection failure, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 179
    const-string v3, "WifiService"

    const-string v4, "Send failed, client connection lost"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiTrafficPoller;->removeClient(Landroid/os/Messenger;)V

    goto :goto_0

    .line 181
    :cond_1
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client connection lost with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 188
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3, p0, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    .line 194
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 195
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 196
    .local v2, "networkId":I
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x25007

    if-ne v3, v4, :cond_3

    .line 197
    if-eqz v1, :cond_2

    .line 198
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v6, :cond_6

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 204
    :cond_2
    :goto_2
    const-string v3, "WiFiServiceImpl "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAVE nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v8, :cond_5

    .line 210
    if-eqz v1, :cond_4

    .line 211
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v6, :cond_7

    .line 212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 217
    :cond_4
    :goto_3
    const-string v3, "WiFiServiceImpl "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECT  nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect with config"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 201
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_2

    .line 214
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto :goto_3

    .line 224
    :cond_8
    if-nez v1, :cond_9

    if-eq v2, v6, :cond_9

    .line 226
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect with networkId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 229
    :cond_9
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientHandler.handleMessage ignoring invalid msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v8, :cond_a

    .line 231
    const v3, 0x25002

    invoke-direct {p0, p1, v3, v7}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 234
    :cond_a
    const v3, 0x25008

    invoke-direct {p0, p1, v3, v7}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 241
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networkId":I
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v4, p1, Landroid/os/Message;->sendingUid:I

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$300(Lcom/android/server/wifi/WifiServiceImpl;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 242
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 244
    :cond_b
    const-string v3, "WifiService"

    const-string v4, "Forget is not authorized for user"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, p1, v9, v5}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 251
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v4, p1, Landroid/os/Message;->sendingUid:I

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$300(Lcom/android/server/wifi/WifiServiceImpl;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 252
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->enforceDeletePreLoadedPermission()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$400(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 253
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 255
    :cond_c
    const-string v3, "WifiService"

    const-string v4, "Forgetting PreLoaded is not authorized for user"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0, p1, v9, v5}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 265
    :sswitch_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
        0x25001 -> :sswitch_3
        0x25004 -> :sswitch_4
        0x25007 -> :sswitch_3
        0x2500a -> :sswitch_6
        0x2500e -> :sswitch_6
        0x25011 -> :sswitch_6
        0x25014 -> :sswitch_6
        0x25017 -> :sswitch_5
    .end sparse-switch
.end method
