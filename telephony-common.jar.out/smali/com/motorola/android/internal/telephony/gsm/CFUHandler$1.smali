.class Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "CFUHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/gsm/CFUHandler;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 4

    .prologue
    .line 51
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    # getter for: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$000(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    # getter for: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mTM:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$100(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    # getter for: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$000(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 53
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    const/4 v2, 0x0

    # setter for: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1, v2}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$002(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    # getter for: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$200(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 57
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    new-instance v2, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1$1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1$1;-><init>(Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;I)V

    # setter for: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1, v2}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$002(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 66
    :cond_1
    return-void
.end method
