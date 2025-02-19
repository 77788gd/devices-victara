.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$MzRebootThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "google.com"

    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "MasterClear"

    const-string v2, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/MasterClearReceiver;->mzRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_flyme_0

    return-void

    :cond_flyme_0

    const-string v1, "shutdown"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 41
    .local v6, "shutdown":Z
    const-string v1, "android.intent.extra.REASON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "reason":Ljava/lang/String;
    const-string v1, "wipeDataCacheOnly"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 48
    .local v3, "wipeDataCacheOnly":Z
    const-string v1, "bp"

    const-string v2, "partition"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 51
    .local v4, "wipeBp":Z
    const-string v1, "MasterClear"

    const-string v2, "!!! FACTORY RESET !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v2, "Reboot"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;ZZLandroid/content/Context;ZLjava/lang/String;)V

    .line 77
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private mzRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Lcom/android/server/MasterClearReceiver$MzRebootThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/MasterClearReceiver$MzRebootThread;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .local v0, "mzRebootThread":Lcom/android/server/MasterClearReceiver$MzRebootThread;
    invoke-virtual {v0}, Lcom/android/server/MasterClearReceiver$MzRebootThread;->start()V

    const/4 v1, 0x1

    return v1
.end method
