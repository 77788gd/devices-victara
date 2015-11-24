.class public Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils;
.super Ljava/lang/Object;
.source "SMSCheckinUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SMSCheckinUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private convertToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorCause"    # I

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 86
    const-string v0, "UNKOWN_ERROR"

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "RESULT_ERROR_GENERIC_FAILURE"

    goto :goto_0

    .line 76
    :pswitch_1
    const-string v0, "RESULT_ERROR_RADIO_OFF"

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v0, "RESULT_ERROR_NULL_PDU"

    goto :goto_0

    .line 80
    :pswitch_3
    const-string v0, "RESULT_ERROR_NO_SERVICE"

    goto :goto_0

    .line 82
    :pswitch_4
    const-string v0, "RESULT_ERROR_LIMIT_EXCEEDED"

    goto :goto_0

    .line 84
    :pswitch_5
    const-string v0, "RESULT_ERROR_FDN_CHECK_FAILURE"

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isEmail(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 157
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10406ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "emailPort":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "spaceIndex":I
    if-lez v1, :cond_2

    .line 163
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .end local v1    # "spaceIndex":I
    :cond_2
    move v2, v3

    .line 169
    goto :goto_0
.end method


# virtual methods
.method public SMSRecvCheckin(I[[BLjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 7
    .param p1, "destPort"    # I
    .param p2, "pdus"    # [[B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "subId"    # I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 147
    new-instance v0, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils$SMSRecvCheckinThread;-><init>(Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils;[[BLjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 148
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public SmsErrorCheckin(IIILjava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "errorCause"    # I
    .param p3, "errorCode"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getInstance()Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    move-result-object v0

    .line 32
    .local v0, "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "slotId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "simPlmn":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils;->convertToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logAddSmsFailedItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .end local v5    # "slotId":Ljava/lang/String;
    .end local v6    # "simPlmn":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v8

    .line 40
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "SMSCheckinUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsErrorCheckin got exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SmsSentCheckin(Ljava/lang/String;IZZILjava/lang/String;Landroid/content/Context;)V
    .locals 12
    .param p1, "msgSize"    # Ljava/lang/String;
    .param p2, "numSeg"    # I
    .param p3, "requestReport"    # Z
    .param p4, "isEmail"    # Z
    .param p5, "subId"    # I
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getInstance()Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    move-result-object v1

    .line 48
    .local v1, "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    if-eqz v1, :cond_0

    .line 50
    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "slotId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "simPlmn":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_1

    const-string v6, "true"

    :goto_0
    if-eqz p4, :cond_2

    const-string v7, "true"

    :goto_1
    move-object/from16 v2, p7

    move-object v4, p1

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logAddSmsSentItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v1    # "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .end local v8    # "slotId":Ljava/lang/String;
    .end local v9    # "simPlmn":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 52
    .restart local v1    # "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .restart local v8    # "slotId":Ljava/lang/String;
    .restart local v9    # "simPlmn":Ljava/lang/String;
    :cond_1
    const-string v6, "false"

    goto :goto_0

    :cond_2
    const-string v7, "false"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    .end local v1    # "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .end local v8    # "slotId":Ljava/lang/String;
    .end local v9    # "simPlmn":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 57
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "SMSCheckinUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmsSentCheckin got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public SmsSentCheckin(Ljava/util/ArrayList;IZZILjava/lang/String;Landroid/content/Context;)V
    .locals 13
    .param p2, "numSeg"    # I
    .param p3, "requestReport"    # Z
    .param p4, "isEmail"    # Z
    .param p5, "subId"    # I
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IZZI",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v12, "sizeStr":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 65
    .local v8, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 66
    .local v11, "part":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " part["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v9

    .line 67
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_0

    .line 68
    .end local v11    # "part":Ljava/lang/String;
    :cond_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/checkin/SMSCheckinUtils;->SmsSentCheckin(Ljava/lang/String;IZZILjava/lang/String;Landroid/content/Context;)V

    .line 69
    return-void
.end method
