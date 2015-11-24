.class Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1$1;
.super Landroid/telephony/PhoneStateListener;
.source "CFUHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->onSubscriptionsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 58
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1$1;->this$1:Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1$1;->this$1:Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    # invokes: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->checkCFU(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$300(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/ServiceState;)V

    .line 62
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1$1;->this$1:Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    # setter for: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$402(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 63
    return-void
.end method
