.class Lcom/android/server/wifi/WifiStateMachine$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 6
    .param p1, "country"    # Landroid/location/Country;

    .prologue
    const v5, 0x200cd

    .line 1008
    if-nez p1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->flushCountryCodeIfTimedOut()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1036
    :goto_0
    return-void

    .line 1012
    :cond_0
    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, "newCountry":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country detected via CountryDetector - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1014
    :cond_1
    invoke-virtual {p1}, Landroid/location/Country;->getSource()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1034
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->flushCountryCodeIfTimedOut()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_0

    .line 1018
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeProgrammed:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeProgrammed:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeProgrammed:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeProgrammed:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1021
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country Code is the same - ignoring - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeProgrammed:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1026
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNextCountryFlushAt:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$302(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 1029
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1023
    :cond_3
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country code changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeProgrammed:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1024
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1026
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
