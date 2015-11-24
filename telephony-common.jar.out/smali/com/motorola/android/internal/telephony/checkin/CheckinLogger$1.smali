.class Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;
.super Ljava/lang/Thread;
.source "CheckinLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$logLevel:Ljava/lang/String;

.field final synthetic val$pairArray:[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

.field final synthetic val$segName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->this$0:Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    iput-object p3, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$logLevel:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$segName:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$pairArray:[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    iput-object p6, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 130
    new-instance v0, Lcom/motorola/android/internal/telephony/checkin/CheckinEventWrapper;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/checkin/CheckinEventWrapper;-><init>()V

    .line 131
    .local v0, "event":Lcom/motorola/android/internal/telephony/checkin/CheckinEventWrapper;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 133
    .local v7, "timeStamp":Ljava/lang/Long;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$logLevel:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$segName:Ljava/lang/String;

    const-string v3, "1.2"

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/checkin/CheckinEventWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$pairArray:[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    if-eqz v1, :cond_0

    .line 136
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$pairArray:[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    array-length v1, v1

    if-ge v6, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$pairArray:[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$pairArray:[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/internal/telephony/checkin/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    .end local v6    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/checkin/CheckinEventWrapper;->publish(Landroid/content/ContentResolver;)V

    .line 142
    :cond_1
    return-void
.end method
