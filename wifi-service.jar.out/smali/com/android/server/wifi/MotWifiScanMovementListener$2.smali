.class Lcom/android/server/wifi/MotWifiScanMovementListener$2;
.super Ljava/lang/Object;
.source "MotWifiScanMovementListener.java"

# interfaces
.implements Lcom/motorola/slpc/ModalityManager$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/MotWifiScanMovementListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/MotWifiScanMovementListener;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # getter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->DBG:Z
    invoke-static {v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$200(Lcom/android/server/wifi/MotWifiScanMovementListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "MovementListener onEndMovement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # getter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$100(Lcom/android/server/wifi/MotWifiScanMovementListener;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "Wifi is not enabled! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    iget-object v0, v0, Lcom/android/server/wifi/MotWifiScanMovementListener;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # setter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$302(Lcom/android/server/wifi/MotWifiScanMovementListener;Z)Z

    goto :goto_0
.end method

.method public onStartMovement()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # getter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->DBG:Z
    invoke-static {v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$200(Lcom/android/server/wifi/MotWifiScanMovementListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "MovementListener onStartMovement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # getter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$100(Lcom/android/server/wifi/MotWifiScanMovementListener;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "Wifi is not enabled! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # getter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$300(Lcom/android/server/wifi/MotWifiScanMovementListener;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # getter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->DBG:Z
    invoke-static {v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$200(Lcom/android/server/wifi/MotWifiScanMovementListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MotWifiScanMovementListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanIntervalSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # getter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v2}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$300(Lcom/android/server/wifi/MotWifiScanMovementListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    iget-object v0, v0, Lcom/android/server/wifi/MotWifiScanMovementListener;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$2;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # setter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$302(Lcom/android/server/wifi/MotWifiScanMovementListener;Z)Z

    goto :goto_0
.end method
