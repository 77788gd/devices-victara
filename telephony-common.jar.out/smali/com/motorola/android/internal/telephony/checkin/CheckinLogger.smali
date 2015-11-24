.class public Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
.super Ljava/lang/Object;
.source "CheckinLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    }
.end annotation


# static fields
.field public static final CHECKIN_VER:Ljava/lang/String; = "1.2"

.field public static final MMS_RECEIVED:Ljava/lang/String; = "MMS_rcvd"

.field public static final MMS_RECV_CHECKIN:I = 0x1

.field public static final MMS_SENT:Ljava/lang/String; = "MMS_sent"

.field public static final MMS_SENT_CHECKIN:I = 0x0

.field public static final MMS_TRANSACTION:Ljava/lang/String; = "MMS_transaction"

.field public static final SMS_FAILED:Ljava/lang/String; = "SMS_failed"

.field public static final SMS_RECEIVED:Ljava/lang/String; = "SMS_rcvd"

.field public static final SMS_SENT:Ljava/lang/String; = "SMS_sent"

.field private static final TAG:Ljava/lang/String; = "CheckinLogger"

.field private static final VDBG:Z = true

.field private static mInstance:Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->mInstance:Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->mInstance:Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    .line 42
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->mInstance:Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    return-object v0
.end method

.method private getLogLevel(I)Ljava/lang/String;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "logLevel":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal level argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :pswitch_0
    const-string v0, "MOT_MSG_STATS_L1"

    .line 112
    :goto_0
    return-object v0

    .line 101
    :pswitch_1
    const-string v0, "MOT_MSG_STATS_L2"

    .line 102
    goto :goto_0

    .line 104
    :pswitch_2
    const-string v0, "MOT_MSG_STATS_L3"

    .line 105
    goto :goto_0

    .line 107
    :pswitch_3
    const-string v0, "MOT_MSG_STATS_L4"

    .line 108
    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # Ljava/lang/String;
    .param p3, "segName"    # Ljava/lang/String;
    .param p4, "pairArray"    # [Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    .prologue
    .line 127
    invoke-static {}, Lcom/motorola/android/internal/telephony/checkin/CheckinEventWrapper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;

    const-string v2, "logEventThread"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;Landroid/content/Context;)V

    .line 144
    .local v0, "logThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    .end local v0    # "logThread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method public logAddMmsFailedItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "errCode"    # Ljava/lang/String;
    .param p5, "slotNum"    # Ljava/lang/String;
    .param p6, "simPlmn"    # Ljava/lang/String;
    .param p7, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const-string v8, "CheckinLogger"

    const-string v9, "bad context, aborting checkin"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v2, "MMS_transaction"

    .line 304
    .local v2, "header":Ljava/lang/String;
    new-instance v7, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "type"

    const/4 v9, 0x0

    invoke-direct {v7, p0, v8, p3, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 305
    .local v7, "typePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v1, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "errorCode"

    const/4 v9, 0x0

    invoke-direct {v1, p0, v8, p4, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 306
    .local v1, "errorCodePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v6, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "slot_no"

    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-direct {v6, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 307
    .local v6, "slotNumPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v5, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "sim_plmn"

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-direct {v5, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 308
    .local v5, "simPlmnPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v4, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "pkg_name"

    const/4 v9, 0x0

    move-object/from16 v0, p7

    invoke-direct {v4, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 309
    .local v4, "pkgNamePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    const/4 v8, 0x5

    new-array v3, v8, [Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const/4 v8, 0x0

    aput-object v7, v3, v8

    const/4 v8, 0x1

    aput-object v1, v3, v8

    const/4 v8, 0x2

    aput-object v6, v3, v8

    const/4 v8, 0x3

    aput-object v5, v3, v8

    const/4 v8, 0x4

    aput-object v4, v3, v8

    .line 311
    .local v3, "pairArray":[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v2, v3}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;)V

    .line 313
    const-string v8, "CheckinLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CheckIn: Mms Error info: error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", errorCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slot_no = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sim_plmn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logAddMmsReceivedItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "numParts"    # Ljava/lang/String;
    .param p4, "msgType"    # Ljava/lang/String;
    .param p5, "slotNum"    # Ljava/lang/String;
    .param p6, "simPlmn"    # Ljava/lang/String;
    .param p7, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const-string v8, "CheckinLogger"

    const-string v9, "bad context, aborting checkin"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v1, "MMS_rcvd"

    .line 253
    .local v1, "header":Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "numParts"

    const/4 v9, 0x0

    invoke-direct {v3, p0, v8, p3, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 254
    .local v3, "numPartsPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v2, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "msgType"

    const/4 v9, 0x0

    invoke-direct {v2, p0, v8, p4, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 255
    .local v2, "msgTypePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v7, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "slot_no"

    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-direct {v7, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 256
    .local v7, "slotNumPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v6, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "sim_plmn"

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-direct {v6, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 257
    .local v6, "simPlmnPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v5, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "pkg_name"

    const/4 v9, 0x0

    move-object/from16 v0, p7

    invoke-direct {v5, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 258
    .local v5, "pkgNamePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    const/4 v8, 0x5

    new-array v4, v8, [Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const/4 v8, 0x0

    aput-object v3, v4, v8

    const/4 v8, 0x1

    aput-object v2, v4, v8

    const/4 v8, 0x2

    aput-object v7, v4, v8

    const/4 v8, 0x3

    aput-object v6, v4, v8

    const/4 v8, 0x4

    aput-object v5, v4, v8

    .line 260
    .local v4, "pairArray":[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v1, v4}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;)V

    .line 262
    const-string v8, "CheckinLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CheckIn: MMS Recv: msg_type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", numParts = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slot_no = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sim_plmn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logAddMmsSentItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "numParts"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "msgType"    # Ljava/lang/String;
    .param p6, "destCnt"    # Ljava/lang/String;
    .param p7, "destBccCnt"    # Ljava/lang/String;
    .param p8, "slotNum"    # Ljava/lang/String;
    .param p9, "simPlmn"    # Ljava/lang/String;
    .param p10, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    const-string v11, "CheckinLogger"

    const-string v12, "bad context, aborting checkin"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v3, "MMS_sent"

    .line 189
    .local v3, "header":Ljava/lang/String;
    new-instance v5, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "numParts"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-direct {v5, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 190
    .local v5, "numPartsPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v9, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "size"

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-direct {v9, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 191
    .local v9, "sizePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v4, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "msgType"

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-direct {v4, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 192
    .local v4, "msgTypePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v2, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "dest_cnt"

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-direct {v2, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 193
    .local v2, "destCntPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v1, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "dest_bcc_cnt"

    const/4 v12, 0x0

    move-object/from16 v0, p7

    invoke-direct {v1, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 194
    .local v1, "destBccCntPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v10, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "slot_no"

    const/4 v12, 0x0

    move-object/from16 v0, p8

    invoke-direct {v10, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 195
    .local v10, "slotNumPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v8, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "sim_plmn"

    const/4 v12, 0x0

    move-object/from16 v0, p9

    invoke-direct {v8, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 196
    .local v8, "simPlmnPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v7, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "pkg_name"

    const/4 v12, 0x0

    move-object/from16 v0, p10

    invoke-direct {v7, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 197
    .local v7, "pkgNamePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    const/16 v11, 0x8

    new-array v6, v11, [Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const/4 v11, 0x0

    aput-object v5, v6, v11

    const/4 v11, 0x1

    aput-object v9, v6, v11

    const/4 v11, 0x2

    aput-object v4, v6, v11

    const/4 v11, 0x3

    aput-object v2, v6, v11

    const/4 v11, 0x4

    aput-object v1, v6, v11

    const/4 v11, 0x5

    aput-object v10, v6, v11

    const/4 v11, 0x6

    aput-object v8, v6, v11

    const/4 v11, 0x7

    aput-object v7, v6, v11

    .line 199
    .local v6, "pairArray":[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11, v3, v6}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;)V

    .line 201
    const-string v11, "CheckinLogger"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CheckIn: MMS Sent: msg_size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", msg_type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", numParts = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dest_count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dest_bcc_count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", slot_no = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sim_plmn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", package name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p10

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logAddSmsFailedItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "errCode"    # Ljava/lang/String;
    .param p5, "slotNum"    # Ljava/lang/String;
    .param p6, "simPlmn"    # Ljava/lang/String;
    .param p7, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    const-string v8, "CheckinLogger"

    const-string v9, "bad context, aborting checkin"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v2, "SMS_failed"

    .line 279
    .local v2, "header":Ljava/lang/String;
    new-instance v7, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "error"

    const/4 v9, 0x0

    invoke-direct {v7, p0, v8, p3, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 280
    .local v7, "typePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v1, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "errorCode"

    const/4 v9, 0x0

    invoke-direct {v1, p0, v8, p4, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 281
    .local v1, "errorCodePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v6, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "slot_no"

    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-direct {v6, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 282
    .local v6, "slotNumPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v5, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "sim_plmn"

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-direct {v5, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 283
    .local v5, "simPlmnPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v4, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v8, "pkg_name"

    const/4 v9, 0x0

    move-object/from16 v0, p7

    invoke-direct {v4, p0, v8, v0, v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 284
    .local v4, "pkgNamePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    const/4 v8, 0x5

    new-array v3, v8, [Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const/4 v8, 0x0

    aput-object v7, v3, v8

    const/4 v8, 0x1

    aput-object v1, v3, v8

    const/4 v8, 0x2

    aput-object v6, v3, v8

    const/4 v8, 0x3

    aput-object v5, v3, v8

    const/4 v8, 0x4

    aput-object v4, v3, v8

    .line 286
    .local v3, "pairArray":[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v2, v3}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;)V

    .line 288
    const-string v8, "CheckinLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CheckIn: Sms Error info: error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", errorCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slot_no = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sim_plmn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logAddSmsReceivedItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "isEmail"    # Ljava/lang/String;
    .param p4, "msgSize"    # Ljava/lang/String;
    .param p5, "slotNum"    # Ljava/lang/String;
    .param p6, "simPlmn"    # Ljava/lang/String;
    .param p7, "pkgName"    # Ljava/lang/String;
    .param p8, "isReplace"    # Z

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string v9, "CheckinLogger"

    const-string v10, "bad context, aborting checkin"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v2, "SMS_rcvd"

    .line 217
    .local v2, "header":Ljava/lang/String;
    if-eqz p8, :cond_1

    .line 218
    new-instance v1, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v9, "action"

    const-string v10, "replaceMsg"

    const/4 v11, 0x0

    invoke-direct {v1, p0, v9, v10, v11}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 219
    .local v1, "actionPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    const/4 v9, 0x1

    new-array v5, v9, [Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const/4 v9, 0x0

    aput-object v1, v5, v9

    .line 229
    .end local v1    # "actionPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    .local v5, "pairArray":[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    :goto_1
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9, v2, v5}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;)V

    .line 232
    if-eqz p8, :cond_2

    .line 233
    const-string v9, "CheckinLogger"

    const-string v10, "CheckIn: SMS Recv Action: it\'s Replace Msg"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v5    # "pairArray":[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    :cond_1
    new-instance v3, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v9, "isEmail"

    const/4 v10, 0x0

    invoke-direct {v3, p0, v9, p3, v10}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 222
    .local v3, "isEmailPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v4, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v9, "msgSize"

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-direct {v4, p0, v9, v0, v10}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 223
    .local v4, "msgSizePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v8, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v9, "slot_no"

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-direct {v8, p0, v9, v0, v10}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 224
    .local v8, "slotNumPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v7, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v9, "sim_plmn"

    const/4 v10, 0x0

    move-object/from16 v0, p6

    invoke-direct {v7, p0, v9, v0, v10}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 225
    .local v7, "simPlmnPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v6, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v9, "pkg_name"

    const/4 v10, 0x0

    move-object/from16 v0, p7

    invoke-direct {v6, p0, v9, v0, v10}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 226
    .local v6, "pkgNamePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    const/4 v9, 0x5

    new-array v5, v9, [Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const/4 v9, 0x0

    aput-object v3, v5, v9

    const/4 v9, 0x1

    aput-object v4, v5, v9

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const/4 v9, 0x3

    aput-object v7, v5, v9

    const/4 v9, 0x4

    aput-object v6, v5, v9

    .restart local v5    # "pairArray":[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    goto :goto_1

    .line 235
    .end local v3    # "isEmailPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    .end local v4    # "msgSizePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    .end local v6    # "pkgNamePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    .end local v7    # "simPlmnPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    .end local v8    # "slotNumPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    :cond_2
    const-string v9, "CheckinLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CheckIn: SMS Recv: msg_size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isEmail = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", slot_no = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sim_plmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", package name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logAddSmsSentItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "msgSize"    # Ljava/lang/String;
    .param p4, "numSeg"    # Ljava/lang/String;
    .param p5, "requestReport"    # Ljava/lang/String;
    .param p6, "isEmail"    # Ljava/lang/String;
    .param p7, "slotNum"    # Ljava/lang/String;
    .param p8, "simPlmn"    # Ljava/lang/String;
    .param p9, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string v11, "CheckinLogger"

    const-string v12, "bad context, aborting checkin"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v1, "SMS_sent"

    .line 159
    .local v1, "header":Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "msgSize"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-direct {v3, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 160
    .local v3, "msgSizePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v4, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "numDests"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v4, p0, v11, v12, v13}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 161
    .local v4, "numDestsPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v5, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "numSeg"

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-direct {v5, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 162
    .local v5, "numSegPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v8, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "requestReport"

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-direct {v8, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 163
    .local v8, "requestReportPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v2, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "isEmail"

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-direct {v2, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 164
    .local v2, "isEmailPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v10, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "slot_no"

    const/4 v12, 0x0

    move-object/from16 v0, p7

    invoke-direct {v10, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 165
    .local v10, "slotNumPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v9, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "sim_plmn"

    const/4 v12, 0x0

    move-object/from16 v0, p8

    invoke-direct {v9, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 166
    .local v9, "simPlmnPair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    new-instance v6, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const-string v11, "pkg_name"

    const/4 v12, 0x0

    move-object/from16 v0, p9

    invoke-direct {v6, p0, v11, v0, v12}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;-><init>(Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$1;)V

    .line 167
    .local v6, "packageNamePair":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    const/16 v11, 0x8

    new-array v7, v11, [Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;

    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    aput-object v4, v7, v11

    const/4 v11, 0x2

    aput-object v5, v7, v11

    const/4 v11, 0x3

    aput-object v8, v7, v11

    const/4 v11, 0x4

    aput-object v2, v7, v11

    const/4 v11, 0x5

    aput-object v10, v7, v11

    const/4 v11, 0x6

    aput-object v9, v7, v11

    const/4 v11, 0x7

    aput-object v6, v7, v11

    .line 169
    .local v7, "pairArray":[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11, v1, v7}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/motorola/android/internal/telephony/checkin/CheckinLogger$EventPair;)V

    .line 171
    const-string v11, "CheckinLogger"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CheckIn: SMS Sent: msg_size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", numSeg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", requestReport = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isEmail ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", slotNo= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", simPlmn= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", pkg= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
