.class Lcom/android/server/wifi/MotWifiScanMovementListener$1;
.super Landroid/content/BroadcastReceiver;
.source "MotWifiScanMovementListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/MotWifiScanMovementListener;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
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
    .line 40
    iput-object p1, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$1;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$1;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    const-string v0, "modality"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/slpc/ModalityManager;

    # setter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;
    invoke-static {v1, v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$002(Lcom/android/server/wifi/MotWifiScanMovementListener;Lcom/motorola/slpc/ModalityManager;)Lcom/motorola/slpc/ModalityManager;

    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$1;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    # getter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;
    invoke-static {v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$000(Lcom/android/server/wifi/MotWifiScanMovementListener;)Lcom/motorola/slpc/ModalityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "MotWifiScanMovementListener mWiFiMvmtMgr = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$1;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/android/server/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1, v0}, Lcom/android/server/wifi/MotWifiScanMovementListener;->access$102(Lcom/android/server/wifi/MotWifiScanMovementListener;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/MotWifiScanMovementListener$1;->this$0:Lcom/android/server/wifi/MotWifiScanMovementListener;

    const v1, 0x249f0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/MotWifiScanMovementListener;->startMovementMonitor(I)Z

    .line 53
    return-void

    .line 47
    :cond_0
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "Got instance of modality service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
