.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 86
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const-wide/16 v10, -0x1

    .line 438
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_1

    .line 439
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 447
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 449
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v0

    const-string v4, "m_id=? AND m_type=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 460
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 466
    if-eqz v7, :cond_0

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 470
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v0

    .line 440
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_2

    .line 441
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 443
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v10

    .line 445
    goto :goto_1

    .line 466
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move-wide v0, v10

    .line 470
    goto :goto_1

    .line 463
    :catch_0
    move-exception v8

    .line 464
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "Failed to query delivery or read report thread id"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    if-eqz v7, :cond_4

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 466
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 477
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    .line 478
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    .line 479
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 480
    .local v9, "location":Ljava/lang/String;
    new-array v11, v12, [Ljava/lang/String;

    aput-object v9, v11, v13

    .line 481
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 483
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v0

    const-string v4, "m_type=? AND ct_l =?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 494
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 501
    if-eqz v7, :cond_0

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 506
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    return v0

    .line 501
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    move v0, v13

    .line 506
    goto :goto_0

    .line 498
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 499
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "failed to query existing notification ind"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    if-eqz v7, :cond_2

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 501
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 338
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private writeInboxMessage(I[B)V
    .locals 23
    .param p1, "subId"    # I
    .param p2, "pushData"    # [B

    .prologue
    .line 345
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v5

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 347
    .local v3, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_0

    .line 348
    const-string v4, "WAP PUSH"

    const-string v5, "Invalid PUSH PDU"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 351
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    .line 353
    .local v22, "type":I
    sparse-switch v22, :sswitch_data_0

    .line 423
    :try_start_0
    const-string v4, "WAP PUSH"

    const-string v5, "Received unrecognized WAP Push PDU."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 356
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v20

    .line 357
    .local v20, "threadId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    .line 360
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to find delivery or read report\'s thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 425
    .end local v20    # "threadId":J
    :catch_0
    move-exception v17

    .line 426
    .local v17, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to save MMS WAP push data: type="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 363
    .end local v17    # "e":Lcom/google/android/mms/MmsException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 369
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 370
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to persist delivery or read report"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 427
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v20    # "threadId":J
    :catch_1
    move-exception v17

    .line 428
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string v4, "WAP PUSH"

    const-string v5, "Unexpected RuntimeException in persisting MMS WAP push data"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 374
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v20    # "threadId":J
    :cond_3
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 375
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "thread_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 383
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to update delivery or read report thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v18, v0

    .line 390
    .local v18, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v14

    .line 392
    .local v14, "configs":Landroid/os/Bundle;
    if-eqz v14, :cond_4

    const-string v4, "enabledTransID"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 394
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v15

    .line 395
    .local v15, "contentLocation":[B
    const/16 v4, 0x3d

    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v15, v5

    if-ne v4, v5, :cond_4

    .line 396
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v19

    .line 397
    .local v19, "transactionId":[B
    array-length v4, v15

    move-object/from16 v0, v19

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 399
    .local v16, "contentLocationWithId":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v8, v15

    move-object/from16 v0, v16

    invoke-static {v15, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 401
    const/4 v4, 0x0

    array-length v5, v15

    move-object/from16 v0, v19

    array-length v8, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 403
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 406
    .end local v15    # "contentLocation":[B
    .end local v16    # "contentLocationWithId":[B
    .end local v19    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 407
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 413
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 414
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to save MMS WAP push notification ind"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 38
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 114
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v22, 0x0

    .line 118
    .local v22, "index":I
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "index":I
    .local v23, "index":I
    :try_start_0
    aget-byte v4, p1, v22
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v0, v4, 0xff

    move/from16 v35, v0

    .line 119
    .local v35, "transactionId":I
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "index":I
    .restart local v22    # "index":I
    :try_start_1
    aget-byte v4, p1, v23

    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    .line 122
    .local v28, "pduType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v29

    .line 124
    .local v29, "phoneId":I
    const/4 v4, 0x6

    move/from16 v0, v28

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    move/from16 v0, v28

    if-eq v0, v4, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10e0079

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v22

    .line 128
    const/4 v4, -0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_0

    .line 129
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "index":I
    .restart local v23    # "index":I
    :try_start_2
    aget-byte v4, p1, v22
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 v0, v4, 0xff

    move/from16 v35, v0

    .line 130
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "index":I
    .restart local v22    # "index":I
    :try_start_3
    aget-byte v4, p1, v23

    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    .line 132
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PDU Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transactionID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v4, 0x6

    move/from16 v0, v28

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    move/from16 v0, v28

    if-eq v0, v4, :cond_1

    .line 138
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v4, 0x1

    .line 333
    .end local v28    # "pduType":I
    .end local v29    # "phoneId":I
    .end local v35    # "transactionId":I
    :goto_0
    return v4

    .line 142
    .restart local v28    # "pduType":I
    .restart local v29    # "phoneId":I
    .restart local v35    # "transactionId":I
    :cond_0
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v4, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v27, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 155
    .local v27, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    const-string v4, "WAP PUSH"

    const-string v8, "Received PDU. Header Length error."

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v4, 0x2

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v20, v0

    .line 160
    .local v20, "headerLength":I
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v22, v22, v4

    .line 162
    move/from16 v21, v22

    .line 176
    .local v21, "headerStartIndex":I
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 177
    const-string v4, "WAP PUSH"

    const-string v8, "Received PDU. Header Content-Type error."

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v4, 0x2

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v26

    .line 182
    .local v26, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v12

    .line 183
    .local v12, "binaryContentType":J
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v22, v22, v4

    .line 185
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 186
    .local v19, "header":[B
    const/4 v4, 0x0

    move-object/from16 v0, v19

    array-length v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 190
    if-eqz v26, :cond_7

    const-string v4, "application/vnd.wap.coc"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    move-object/from16 v24, p1

    .line 198
    .local v24, "intentData":[B
    :goto_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 200
    invoke-static/range {v29 .. v29}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v34

    .line 203
    .local v34, "subIds":[I
    if-eqz v34, :cond_8

    move-object/from16 v0, v34

    array-length v4, v0

    if-lez v4, :cond_8

    const/4 v4, 0x0

    aget v33, v34, v4

    .line 205
    .local v33, "subId":I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(I[B)V

    .line 208
    .end local v33    # "subId":I
    .end local v34    # "subIds":[I
    :cond_4
    const/16 v36, 0x0

    .line 216
    .local v36, "wapAppId":Ljava/lang/String;
    add-int v4, v22, v20

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 218
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v11, v8

    .line 219
    .local v11, "appIdIndex":I
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 220
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v36

    .line 222
    if-nez v36, :cond_5

    .line 223
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    .line 226
    :cond_5
    if-nez v26, :cond_9

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, "contentType":Ljava/lang/String;
    :goto_3
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appid found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    const/16 v32, 0x1

    .line 232
    .local v32, "processFurther":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v37, v0

    .line 234
    .local v37, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v37, :cond_a

    .line 235
    const-string v4, "WAP PUSH"

    const-string v8, "wap push manager not found!"

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 253
    :cond_6
    :goto_4
    if-nez v32, :cond_b

    .line 254
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 193
    .end local v11    # "appIdIndex":I
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v24    # "intentData":[B
    .end local v32    # "processFurther":Z
    .end local v36    # "wapAppId":Ljava/lang/String;
    .end local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_7
    add-int v17, v21, v20

    .line 194
    .local v17, "dataIndex":I
    :try_start_5
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v17

    new-array v0, v4, [B

    move-object/from16 v24, v0

    .line 195
    .restart local v24    # "intentData":[B
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 329
    .end local v12    # "binaryContentType":J
    .end local v17    # "dataIndex":I
    .end local v19    # "header":[B
    .end local v20    # "headerLength":I
    .end local v21    # "headerStartIndex":I
    .end local v24    # "intentData":[B
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v28    # "pduType":I
    .end local v29    # "phoneId":I
    :catch_0
    move-exception v10

    .line 332
    .end local v35    # "transactionId":I
    .local v10, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 203
    .end local v10    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v12    # "binaryContentType":J
    .restart local v19    # "header":[B
    .restart local v20    # "headerLength":I
    .restart local v21    # "headerStartIndex":I
    .restart local v24    # "intentData":[B
    .restart local v26    # "mimeType":Ljava/lang/String;
    .restart local v27    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v28    # "pduType":I
    .restart local v29    # "phoneId":I
    .restart local v34    # "subIds":[I
    .restart local v35    # "transactionId":I
    :cond_8
    :try_start_6
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v33

    goto/16 :goto_2

    .end local v34    # "subIds":[I
    .restart local v11    # "appIdIndex":I
    .restart local v36    # "wapAppId":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v26

    .line 226
    goto :goto_3

    .line 237
    .restart local v16    # "contentType":Ljava/lang/String;
    .restart local v32    # "processFurther":Z
    .restart local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_a
    :try_start_7
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v5, "intent":Landroid/content/Intent;
    const-string v4, "transactionId"

    move/from16 v0, v35

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v4, "pduType"

    move/from16 v0, v28

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v4, "header"

    move-object/from16 v0, v19

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 241
    const-string v4, "data"

    move-object/from16 v0, v24

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 242
    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    move/from16 v0, v29

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 246
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v31

    .line 247
    .local v31, "procRet":I
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "procRet:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 248
    and-int/lit8 v4, v31, 0x1

    if-lez v4, :cond_6

    const v4, 0x8000

    and-int v4, v4, v31

    if-nez v4, :cond_6

    .line 250
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 256
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v31    # "procRet":I
    .end local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v18

    .line 257
    .local v18, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v4, "WAP PUSH"

    const-string v8, "remote func failed..."

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v11    # "appIdIndex":I
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v18    # "e":Landroid/os/RemoteException;
    .end local v32    # "processFurther":Z
    :cond_b
    const-string v4, "WAP PUSH"

    const-string v8, "fall back to existing handler"

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-nez v26, :cond_c

    .line 263
    const-string v4, "WAP PUSH"

    const-string v8, "Header Content-Type error."

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 270
    :cond_c
    const-string v4, "application/vnd.wap.mms-message"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 271
    const-string v6, "android.permission.RECEIVE_MMS"

    .line 272
    .local v6, "permission":Ljava/lang/String;
    const/16 v7, 0x12

    .line 279
    .local v7, "appOp":I
    :goto_6
    const/16 v25, 0x0

    .line 281
    .local v25, "leSafeComponentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x11200da

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 283
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.LESAFE_MMS_RECEIVED"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10406fc

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 287
    .local v30, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10406fd

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 289
    .local v14, "clsName":Ljava/lang/String;
    new-instance v25, Landroid/content/ComponentName;

    .end local v25    # "leSafeComponentName":Landroid/content/ComponentName;
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v14    # "clsName":Ljava/lang/String;
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v25    # "leSafeComponentName":Landroid/content/ComponentName;
    :goto_7
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v4, "transactionId"

    move/from16 v0, v35

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v4, "pduType"

    move/from16 v0, v28

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string v4, "header"

    move-object/from16 v0, v19

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 299
    const-string v4, "data"

    move-object/from16 v0, v24

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 300
    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 301
    move/from16 v0, v29

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 304
    if-eqz v25, :cond_10

    .line 305
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 306
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering MMS to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_d
    :goto_8
    const-string v4, "appId"

    move-object/from16 v0, v36

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v4, p3

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 328
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 274
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "appOp":I
    .end local v25    # "leSafeComponentName":Landroid/content/ComponentName;
    :cond_e
    const-string v6, "android.permission.RECEIVE_WAP_PUSH"

    .line 275
    .restart local v6    # "permission":Ljava/lang/String;
    const/16 v7, 0x13

    .restart local v7    # "appOp":I
    goto/16 :goto_6

    .line 291
    .restart local v25    # "leSafeComponentName":Landroid/content/ComponentName;
    :cond_f
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5    # "intent":Landroid/content/Intent;
    goto :goto_7

    .line 311
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v15

    .line 313
    .local v15, "componentName":Landroid/content/ComponentName;
    if-eqz v15, :cond_d

    .line 315
    invoke-virtual {v5, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 316
    const-string v4, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering MMS to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_8

    .line 329
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "appOp":I
    .end local v12    # "binaryContentType":J
    .end local v15    # "componentName":Landroid/content/ComponentName;
    .end local v19    # "header":[B
    .end local v20    # "headerLength":I
    .end local v21    # "headerStartIndex":I
    .end local v22    # "index":I
    .end local v24    # "intentData":[B
    .end local v25    # "leSafeComponentName":Landroid/content/ComponentName;
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v28    # "pduType":I
    .end local v29    # "phoneId":I
    .end local v35    # "transactionId":I
    .end local v36    # "wapAppId":Ljava/lang/String;
    .restart local v23    # "index":I
    :catch_2
    move-exception v10

    move/from16 v22, v23

    .end local v23    # "index":I
    .restart local v22    # "index":I
    goto/16 :goto_5
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 72
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 73
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 79
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
