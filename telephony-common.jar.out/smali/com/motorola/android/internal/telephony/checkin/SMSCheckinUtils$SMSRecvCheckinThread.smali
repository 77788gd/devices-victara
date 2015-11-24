.class public Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;
.super Ljava/lang/Thread;
.source "SMSCheckinUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSRecvCheckinThread"
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private isReplace:Z

.field private mContext:Landroid/content/Context;

.field private msgFrom:Ljava/lang/String;

.field private msgLength:I

.field private pdus:[[B

.field private pkgName:Ljava/lang/String;

.field private subId:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils;[[BLjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 8
    .param p2, "pdus"    # [[B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "subId"    # I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 103
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->this$0:Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    move-object v5, v6

    .line 93
    check-cast v5, [[B

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->pdus:[[B

    .line 94
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->format:Ljava/lang/String;

    .line 95
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->pkgName:Ljava/lang/String;

    .line 96
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->msgFrom:Ljava/lang/String;

    .line 97
    iput v7, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->msgLength:I

    .line 98
    iput-boolean v7, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->isReplace:Z

    .line 99
    iput v7, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->subId:I

    .line 104
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->format:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->pkgName:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->mContext:Landroid/content/Context;

    .line 107
    iput p5, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->subId:I

    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "sms":Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .line 111
    .local v1, "msgBody":Ljava/lang/String;
    array-length v3, p2

    .line 112
    .local v3, "pduCount":I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 114
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 116
    aget-object v5, p2, v0

    invoke-static {v5, p3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v2, v0

    .line 119
    aget-object v5, v2, v0

    if-eqz v5, :cond_0

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 120
    iget v5, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->msgLength:I

    aget-object v6, v2, v0

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->msgLength:I

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    aget-object v5, v2, v7

    if-eqz v5, :cond_2

    .line 126
    aget-object v5, v2, v7

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->msgFrom:Ljava/lang/String;

    .line 127
    aget-object v5, v2, v7

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->isReplace:Z

    .line 129
    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 131
    invoke-static {}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getInstance()Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    move-result-object v0

    .line 132
    .local v0, "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    if-eqz v0, :cond_0

    .line 134
    iget v1, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->subId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "slotId":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->msgFrom:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "true"

    :goto_0
    iget v4, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->msgLength:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->subId:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->pkgName:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;->isReplace:Z

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logAddSmsReceivedItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    .end local v5    # "slotId":Ljava/lang/String;
    :cond_0
    return-void

    .line 135
    .restart local v5    # "slotId":Ljava/lang/String;
    :cond_1
    const-string v3, "false"

    goto :goto_0
.end method
