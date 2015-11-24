.class Lcom/android/internal/telephony/SubscriptionController$2;
.super Landroid/database/ContentObserver;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionController;->registerForNwModeChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    const-string v1, "network mode changed in settings, sync"

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->syncPhonePrefNwModeFromSim(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->access$100(Lcom/android/internal/telephony/SubscriptionController;Z)V

    .line 1785
    return-void
.end method
