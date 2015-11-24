.class Lcom/android/internal/telephony/dataconnection/DctController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Lcom/android/internal/telephony/dataconnection/DctController;)V

    .line 93
    :cond_0
    return-void
.end method
