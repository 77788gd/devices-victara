.class public Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;
.super Ljava/lang/Thread;
.source "MMSCheckinUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MMSCheckinThread"
.end annotation


# static fields
.field private static final WAIT_UNTIL_ALL_TABLES_UPDATED:I = 0x1388


# instance fields
.field private checkinType:I

.field private mContext:Landroid/content/Context;

.field private msgId:Ljava/lang/String;

.field private openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p2, "checkinType"    # I
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "openHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    const/4 v1, 0x0

    .line 45
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->this$0:Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->checkinType:I

    .line 38
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->msgId:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->packageName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->msgId:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->packageName:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->checkinType:I

    .line 49
    iput-object p5, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->mContext:Landroid/content/Context;

    .line 50
    iput-object p6, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 51
    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 57
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    const/16 v26, 0x0

    .line 62
    .local v26, "msg_size":Ljava/lang/String;
    const/16 v17, 0x0

    .line 63
    .local v17, "msg_type":Ljava/lang/String;
    const/16 v16, 0x0

    .line 64
    .local v16, "numParts":Ljava/lang/String;
    const/16 v25, 0x0

    .line 65
    .local v25, "dest_count":Ljava/lang/String;
    const/4 v10, 0x0

    .line 66
    .local v10, "dest_bcc_count":Ljava/lang/String;
    const/4 v11, 0x0

    .line 67
    .local v11, "slot_id":Ljava/lang/String;
    const/4 v12, 0x0

    .line 68
    .local v12, "simPlmn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 69
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->msgId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 72
    .local v27, "strMsgId":Ljava/lang/String;
    const-string v3, "pdu"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "m_size"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "m_type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "sub_id"

    aput-object v6, v4, v5

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v27, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 77
    .local v21, "cursor1":Landroid/database/Cursor;
    if-eqz v21, :cond_1

    .line 78
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    .line 80
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 81
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 83
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 84
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 95
    :cond_0
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_1
    const-string v3, "part"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "mid= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v27, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 101
    .local v22, "cursor2":Landroid/database/Cursor;
    if-eqz v22, :cond_2

    .line 102
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 103
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->checkinType:I

    if-nez v4, :cond_4

    .line 108
    const-string v3, "addr"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "(type= 130 or type = 151) and msg_id= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v27, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 111
    .local v23, "cursor3":Landroid/database/Cursor;
    if-eqz v23, :cond_3

    .line 112
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 113
    .end local v25    # "dest_count":Ljava/lang/String;
    .local v9, "dest_count":Ljava/lang/String;
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    move-object/from16 v25, v9

    .line 117
    .end local v9    # "dest_count":Ljava/lang/String;
    .restart local v25    # "dest_count":Ljava/lang/String;
    :cond_3
    const-string v3, "addr"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "type=129 and msg_id= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v27, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 120
    .local v24, "cursor4":Landroid/database/Cursor;
    if-eqz v24, :cond_4

    .line 121
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 122
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .end local v23    # "cursor3":Landroid/database/Cursor;
    .end local v24    # "cursor4":Landroid/database/Cursor;
    :cond_4
    move-object/from16 v9, v25

    .line 126
    .end local v25    # "dest_count":Ljava/lang/String;
    .restart local v9    # "dest_count":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getInstance()Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    move-result-object v3

    .line 127
    .local v3, "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    if-eqz v3, :cond_5

    .line 128
    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->checkinType:I

    if-nez v4, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->packageName:Ljava/lang/String;

    move-object/from16 v6, v16

    move-object/from16 v7, v26

    move-object/from16 v8, v17

    invoke-virtual/range {v3 .. v13}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logAddMmsSentItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_5
    :goto_2
    return-void

    .line 88
    .end local v3    # "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .end local v9    # "dest_count":Ljava/lang/String;
    .end local v22    # "cursor2":Landroid/database/Cursor;
    .restart local v25    # "dest_count":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 91
    .local v28, "subId":I
    invoke-static/range {v28 .. v28}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 92
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 131
    .end local v25    # "dest_count":Ljava/lang/String;
    .end local v28    # "subId":I
    .restart local v3    # "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .restart local v9    # "dest_count":Ljava/lang/String;
    .restart local v22    # "cursor2":Landroid/database/Cursor;
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->checkinType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->mContext:Landroid/content/Context;

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v13, v3

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v20}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logAddMmsReceivedItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .end local v9    # "dest_count":Ljava/lang/String;
    .end local v10    # "dest_bcc_count":Ljava/lang/String;
    .end local v11    # "slot_id":Ljava/lang/String;
    .end local v12    # "simPlmn":Ljava/lang/String;
    .end local v16    # "numParts":Ljava/lang/String;
    .end local v17    # "msg_type":Ljava/lang/String;
    .end local v21    # "cursor1":Landroid/database/Cursor;
    .end local v22    # "cursor2":Landroid/database/Cursor;
    .end local v26    # "msg_size":Ljava/lang/String;
    .end local v27    # "strMsgId":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method
