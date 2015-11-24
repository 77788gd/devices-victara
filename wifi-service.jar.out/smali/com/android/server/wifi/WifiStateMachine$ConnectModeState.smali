.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6969
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 45
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6981
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    sparse-switch v40, :sswitch_data_0

    .line 7647
    const/16 v40, 0x0

    .line 7649
    :goto_0
    return v40

    .line 6987
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Handling WAPI_EVENT, msg ["

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "]"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$15600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6988
    const-string v36, "wapi_string"

    .line 6989
    .local v36, "wapiEventName":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v40, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v40

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6991
    .local v14, "intent":Landroid/content/Intent;
    const/16 v40, 0x10

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v40

    const v41, 0x24011

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 7649
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v36    # "wapiEventName":Ljava/lang/String;
    :cond_0
    :goto_1
    const/16 v40, 0x1

    goto :goto_0

    .line 6999
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Handling WAPI_EVENT, msg ["

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "]"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$15700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7000
    const-string v36, "wapi_string"

    .line 7001
    .restart local v36    # "wapiEventName":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v40, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v40

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7003
    .restart local v14    # "intent":Landroid/content/Intent;
    const/16 v40, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 7009
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v36    # "wapiEventName":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$15802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7010
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 7011
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 7013
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 7015
    :cond_2
    if-eqz v6, :cond_3

    .line 7017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v41

    monitor-enter v41

    .line 7018
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v42

    move-object/from16 v0, v40

    move/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7020
    monitor-exit v41
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7022
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v40

    const v41, 0x2402b

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto/16 :goto_1

    .line 7020
    :catchall_0
    move-exception v40

    :try_start_1
    monitor-exit v41
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v40

    .line 7025
    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v40

    const v41, 0x24007

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto/16 :goto_1

    .line 7029
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 7030
    .local v29, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    const v41, 0x2400d

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_4

    const-string v11, "temp-disabled"

    .line 7032
    .local v11, "en":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ConnectModeState SSID state="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " nid="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ["

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "]"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v41

    monitor-enter v41

    .line 7035
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    const v44, 0x2400e

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_5

    const/16 v40, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v40

    move-object/from16 v3, v29

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7037
    monitor-exit v41

    goto/16 :goto_1

    :catchall_1
    move-exception v40

    monitor-exit v41
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v40

    .line 7030
    .end local v11    # "en":Ljava/lang/String;
    :cond_4
    const-string v11, "re-enabled"

    goto/16 :goto_2

    .line 7035
    .restart local v11    # "en":Ljava/lang/String;
    :cond_5
    const/16 v40, 0x0

    goto :goto_3

    .line 7040
    .end local v11    # "en":Ljava/lang/String;
    .end local v29    # "substr":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$10300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v28

    .line 7043
    .local v28, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v28 .. v28}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 7044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v40

    sget-object v41, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_6

    .line 7045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$8500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7047
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Detected an interface down, restart driver"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$16000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x2000d

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7058
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$16100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v40

    if-nez v40, :cond_0

    sget-object v40, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v40

    sget-object v41, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_0

    .line 7062
    new-instance v30, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v40

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    .line 7063
    .local v30, "tempInfo":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastRssi:I
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v40

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 7064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->logWifiDisConnection(Landroid/net/wifi/WifiInfo;)V

    .line 7066
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v40

    if-eqz v40, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7067
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$8500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$16300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7072
    .end local v28    # "state":Landroid/net/wifi/SupplicantState;
    .end local v30    # "tempInfo":Landroid/net/wifi/WifiInfo;
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_9

    .line 7073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$4302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7076
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 7077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$4302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7081
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7082
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v23

    .line 7083
    .local v23, "res":I
    if-gez v23, :cond_b

    .line 7084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()I

    move-result v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7105
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x20034

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v23

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7086
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 7087
    .local v9, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_a

    if-eqz v7, :cond_a

    .line 7088
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v40, v0

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_a

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v40, v0

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_a

    .line 7093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const/16 v41, -0x3

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v40 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_4

    .line 7108
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v23    # "res":I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v19

    .line 7109
    .local v19, "ok":Z
    if-nez v19, :cond_c

    .line 7110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()I

    move-result v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7112
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    if-eqz v19, :cond_d

    const/16 v40, 0x1

    :goto_5
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v42

    move/from16 v3, v40

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_d
    const/16 v40, -0x1

    goto :goto_5

    .line 7115
    .end local v19    # "ok":Z
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_11

    const/16 v20, 0x1

    .line 7118
    .local v20, "others":Z
    :goto_6
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getMccModeEnabled()Z

    move-result v40

    if-nez v40, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v40, v0

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    .line 7122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrameworkAutoJoin:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$16500(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 7124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Enable auto join ..."

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7133
    :cond_e
    if-eqz v20, :cond_f

    .line 7134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x0

    invoke-virtual/range {v40 .. v43}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 7138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7146
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    const-string v42, "any"

    invoke-virtual/range {v40 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v41

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v40, v0

    const/16 v43, 0x1

    move/from16 v0, v40

    move/from16 v1, v43

    if-ne v0, v1, :cond_13

    const/16 v40, 0x1

    :goto_7
    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v19

    .line 7149
    .restart local v19    # "ok":Z
    if-nez v19, :cond_10

    .line 7150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()I

    move-result v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7152
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    if-eqz v19, :cond_14

    const/16 v40, 0x1

    :goto_8
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v42

    move/from16 v3, v40

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7115
    .end local v19    # "ok":Z
    .end local v20    # "others":Z
    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 7125
    .restart local v20    # "others":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrameworkAutoJoin:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-nez v40, :cond_e

    .line 7126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Don\'t enable network, Auto join is disabled"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7148
    :cond_13
    const/16 v40, 0x0

    goto :goto_7

    .line 7152
    .restart local v19    # "ok":Z
    :cond_14
    const/16 v40, -0x1

    goto :goto_8

    .line 7156
    .end local v19    # "ok":Z
    .end local v20    # "others":Z
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrameworkAutoJoin:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-nez v40, :cond_15

    .line 7157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Don\'t enable network, Auto join is disabled"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7161
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 7162
    .local v32, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$16600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v40

    sub-long v40, v32, v40

    const-wide/32 v42, 0x927c0

    cmp-long v40, v40, v42

    if-lez v40, :cond_0

    .line 7163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 7164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v32

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16602(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 7169
    .end local v32    # "time":J
    :sswitch_b
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getMccModeEnabled()Z

    move-result v40

    if-nez v40, :cond_16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_16

    .line 7173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrameworkAutoJoin:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Disable auto join ..."

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7177
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    const/16 v42, 0x5

    invoke-virtual/range {v40 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_17

    .line 7179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25013

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 7181
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()I

    move-result v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25012

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7187
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v41

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7188
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_0

    .line 7189
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 7191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x20049

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7196
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v41

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 7199
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    .line 7202
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v19

    .line 7204
    .restart local v19    # "ok":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v40

    if-eqz v40, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "wifistatemachine did save config "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7205
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    const v42, 0x2003a

    if-eqz v19, :cond_19

    const/16 v40, 0x1

    :goto_9
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v42

    move/from16 v3, v40

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 7208
    const-string v40, "backup"

    invoke-static/range {v40 .. v40}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v13

    .line 7210
    .local v13, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v13, :cond_0

    .line 7212
    :try_start_3
    const-string v40, "com.android.providers.settings"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 7213
    :catch_0
    move-exception v40

    goto/16 :goto_1

    .line 7205
    .end local v13    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_19
    const/16 v40, -0x1

    goto :goto_9

    .line 7219
    .end local v19    # "ok":Z
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move-object/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7224
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    .line 7226
    .local v27, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$16700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v40

    if-eqz v40, :cond_1a

    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$16700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$16700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "\""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "\""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 7229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$16700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v41, v0

    const/16 v42, 0x0

    const-string v43, "AUTH_FAILED no identity"

    const/16 v44, 0x0

    invoke-virtual/range {v40 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7233
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    const/16 v41, -0x1

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7238
    .end local v27    # "ssid":Ljava/lang/String;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Received SUP_REQUEST_SIM_AUTH"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$16800(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7239
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 7240
    .local v22, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v22, :cond_1c

    .line 7241
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v40, v0

    const/16 v41, 0x4

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_1b

    .line 7242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 7243
    :cond_1b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v40, v0

    const/16 v41, 0x5

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 7244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 7247
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Invalid sim auth request"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7251
    .end local v22    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move-object/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7256
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    const/16 v41, -0x1

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7261
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    goto/16 :goto_1

    .line 7264
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 7268
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v40

    if-eqz v40, :cond_0

    .line 7269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Reconnecting to give a chance to un-connected TLS networks"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$16900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 7276
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3500()I

    move-result v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7277
    const/16 v40, 0x1

    goto/16 :goto_0

    .line 7287
    :sswitch_19
    const/4 v10, 0x0

    .line 7288
    .local v10, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$17000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_1d

    .line 7292
    const/4 v10, 0x1

    .line 7293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7297
    :cond_1d
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7298
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 7299
    .local v17, "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .line 7300
    .local v25, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " my state "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$17100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " nid="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " roam="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7305
    if-nez v7, :cond_1e

    .line 7306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7311
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v17

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " nid="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    const/16 v41, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v24

    .line 7317
    .local v24, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v17

    .line 7318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v17

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 7324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v40

    if-eqz v40, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v40

    if-eqz v40, :cond_22

    .line 7326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$16702(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7329
    if-eqz v7, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v40

    if-nez v40, :cond_1f

    .line 7343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    const/16 v41, -0x1

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7346
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$17202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v40

    if-nez v40, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$16100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v40

    if-eqz v40, :cond_21

    .line 7348
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$17300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$17400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7349
    :cond_21
    if-eqz v10, :cond_0

    .line 7350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$17500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$17600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7355
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Failed to connect config: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " netId: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25002

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7363
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "didDisconnect":Z
    .end local v17    # "netId":I
    .end local v24    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v25    # "roam":I
    :sswitch_1a
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getMccModeEnabled()Z

    move-result v40

    if-nez v40, :cond_24

    .line 7364
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getP2pConnectedState()Z

    move-result v15

    .line 7365
    .local v15, "mP2pState":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v40

    if-eqz v40, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "P2p connection detected "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7366
    :cond_23
    if-eqz v15, :cond_24

    .line 7367
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v16

    .line 7368
    .local v16, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 7369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyDisconnectP2pConnection(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 7370
    const/16 v40, 0x1

    goto/16 :goto_0

    .line 7381
    .end local v15    # "mP2pState":Z
    .end local v16    # "msg":Landroid/os/Message;
    :cond_24
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 7382
    .restart local v17    # "netId":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7383
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7384
    const/16 v34, 0x0

    .line 7387
    .local v34, "updatedExisting":Z
    if-eqz v7, :cond_26

    .line 7388
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    .line 7389
    .local v8, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 7391
    .local v26, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v26, :cond_25

    .line 7395
    move-object/from16 v7, v26

    .line 7396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " configKey="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7398
    const/16 v40, 0x0

    move/from16 v0, v40

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 7399
    const/16 v40, 0x0

    move/from16 v0, v40

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 7400
    const/16 v34, 0x1

    .line 7403
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v24

    .line 7404
    .restart local v24    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v17

    .line 7406
    .end local v8    # "configKey":Ljava/lang/String;
    .end local v24    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v26    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7408
    if-nez v7, :cond_2a

    .line 7409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "CONNECT_NETWORK id="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " my state "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$17800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7423
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "any"

    move-object/from16 v0, v40

    move/from16 v1, v17

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7425
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v40, v0

    const/16 v41, 0x3f2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v40, v0

    const/16 v41, 0x3e8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_28

    .line 7433
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "CONNECT_NETWORK"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 7436
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$17202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v40

    const/16 v41, 0x1

    const/16 v42, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 7441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7443
    const/4 v10, 0x0

    .line 7444
    .restart local v10    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v40

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v40

    move/from16 v0, v40

    move/from16 v1, v17

    if-eq v0, v1, :cond_29

    .line 7449
    const/4 v10, 0x1

    .line 7450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7454
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v17

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 7456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v40

    if-eqz v40, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v40

    if-eqz v40, :cond_2e

    .line 7458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$16702(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v40

    const v41, 0x25001

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 7463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25003

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 7464
    if-eqz v10, :cond_2c

    .line 7466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$17500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7413
    .end local v10    # "didDisconnect":Z
    :cond_2a
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v40, v0

    if-eqz v40, :cond_2b

    const-string v37, " skipped"

    .line 7414
    .local v37, "wasSkipped":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "CONNECT_NETWORK id="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " config="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " cnid="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " supstate="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " my state "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$17900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " uid = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 7413
    .end local v37    # "wasSkipped":Ljava/lang/String;
    :cond_2b
    const-string v37, ""

    goto/16 :goto_b

    .line 7467
    .restart local v10    # "didDisconnect":Z
    :cond_2c
    if-eqz v34, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$18100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v17

    if-ne v0, v1, :cond_2d

    .line 7471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 7477
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7480
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Failed to connect config: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " netId: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25002

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7487
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "didDisconnect":Z
    .end local v17    # "netId":I
    .end local v34    # "updatedExisting":Z
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7490
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$18502(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7491
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7492
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_2f

    .line 7493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " my state "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()I

    move-result v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25008

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7501
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v41

    invoke-direct {v0, v7}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$18502(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7502
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    .line 7503
    .local v18, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "SAVE_NETWORK id="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " config="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " nid="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " supstate="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " my state "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$18700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    const/16 v41, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v24

    .line 7510
    .restart local v24    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v40

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_34

    .line 7511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v40

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_31

    .line 7512
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v40

    if-eqz v40, :cond_30

    .line 7516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Reconfiguring IP on connection"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7521
    :cond_30
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v40

    if-eqz v40, :cond_31

    .line 7522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Reconfiguring proxy on connection"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 7526
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25009

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 7527
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$700()Z

    move-result v40

    if-eqz v40, :cond_32

    .line 7528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Success save network nid="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7532
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v41

    monitor-enter v41

    .line 7538
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    const v42, 0x25007

    move/from16 v0, v40

    move/from16 v1, v42

    if-ne v0, v1, :cond_33

    const/16 v35, 0x1

    .line 7539
    .local v35, "user":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v40

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v42

    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v42

    move/from16 v2, v35

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 7541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 7542
    monitor-exit v41

    goto/16 :goto_1

    .end local v35    # "user":Z
    :catchall_2
    move-exception v40

    monitor-exit v41
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v40

    .line 7538
    :cond_33
    const/16 v35, 0x0

    goto :goto_c

    .line 7544
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Failed to save network"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()I

    move-result v41

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25008

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7553
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "nid":I
    .end local v24    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 7556
    .local v31, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v31, :cond_35

    .line 7557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7562
    :goto_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    const v41, 0x25004

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_36

    .line 7563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v12

    .line 7567
    .local v12, "forgetResult":Z
    :goto_e
    if-eqz v12, :cond_37

    .line 7569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25006

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 7559
    .end local v12    # "forgetResult":Z
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto :goto_d

    .line 7565
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->forgetPreLoadedNetwork(I)Z

    move-result v12

    .restart local v12    # "forgetResult":Z
    goto :goto_e

    .line 7571
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Failed to forget network"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x25005

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7577
    .end local v12    # "forgetResult":Z
    .end local v31    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/net/wifi/WpsInfo;

    .line 7579
    .local v38, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v40, v0

    packed-switch v40, :pswitch_data_0

    .line 7590
    new-instance v39, Landroid/net/wifi/WpsResult;

    sget-object v40, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v39 .. v40}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 7591
    .local v39, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Invalid setup for WPS"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7594
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    const/16 v41, -0x1

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7596
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v40, v0

    sget-object v41, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_38

    .line 7597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x2500b

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move-object/from16 v3, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 7598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$19200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7581
    .end local v39    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v39

    .line 7582
    .restart local v39    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 7584
    .end local v39    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v39

    .line 7585
    .restart local v39    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 7587
    .end local v39    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v39

    .line 7588
    .restart local v39    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 7600
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Failed to start WPS with config "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const v41, 0x2500c

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7605
    .end local v38    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v39    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_1f
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v40

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "Network connection established"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7606
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6302(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 7609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 7610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 7612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v40

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->setReasonCode(I)V

    .line 7613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v40

    new-instance v41, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual/range {v40 .. v41}, Lcom/motorola/android/wifi/WifiMetrics;->logWifiConnection(Landroid/net/wifi/WifiInfo;)V

    .line 7617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    sget-object v41, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$11500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 7618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$19400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7631
    :sswitch_20
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v40

    if-eqz v40, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    const-string v41, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7634
    :cond_3a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    .line 7636
    .local v21, "reasoncode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->setReasonCode(I)V

    .line 7639
    new-instance v30, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v40

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    .line 7640
    .restart local v30    # "tempInfo":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastRssi:I
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v40

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 7641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->logWifiDisConnection(Landroid/net/wifi/WifiInfo;)V

    .line 7643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v40 .. v40}, Lcom/android/server/wifi/WifiStateMachine;->access$8500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v41 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v40 .. v41}, Lcom/android/server/wifi/WifiStateMachine;->access$19500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6981
    nop

    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_7
        0x20035 -> :sswitch_8
        0x20036 -> :sswitch_9
        0x20037 -> :sswitch_a
        0x20038 -> :sswitch_d
        0x20039 -> :sswitch_e
        0x2003a -> :sswitch_f
        0x2003b -> :sswitch_10
        0x2003e -> :sswitch_13
        0x20049 -> :sswitch_14
        0x2004a -> :sswitch_15
        0x2004b -> :sswitch_16
        0x20062 -> :sswitch_c
        0x2008e -> :sswitch_17
        0x2008f -> :sswitch_19
        0x20091 -> :sswitch_18
        0x20092 -> :sswitch_1c
        0x2300c -> :sswitch_6
        0x24003 -> :sswitch_1f
        0x24004 -> :sswitch_20
        0x24006 -> :sswitch_5
        0x24007 -> :sswitch_3
        0x2400d -> :sswitch_4
        0x2400e -> :sswitch_4
        0x2400f -> :sswitch_11
        0x24010 -> :sswitch_12
        0x24011 -> :sswitch_0
        0x24012 -> :sswitch_1
        0x2402b -> :sswitch_2
        0x25001 -> :sswitch_1a
        0x25004 -> :sswitch_1d
        0x25007 -> :sswitch_1b
        0x2500a -> :sswitch_1e
        0x25011 -> :sswitch_b
        0x25017 -> :sswitch_1d
    .end sparse-switch

    .line 7579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
