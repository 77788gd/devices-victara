.class public Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;
.super Ljava/lang/Thread;
.source "MMSCheckinUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MMSErrorCheckinThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private errorCode:I

.field private errorType:Ljava/lang/String;

.field private openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private packageName:Ljava/lang/String;

.field private selection:Ljava/lang/String;

.field private selectionArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;

.field private values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .param p2, "errorType"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "openHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->this$0:Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 142
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->errorType:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->values:Landroid/content/ContentValues;

    .line 144
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->selection:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->selectionArgs:[Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->packageName:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->errorCode:I

    .line 154
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->errorType:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->values:Landroid/content/ContentValues;

    .line 156
    iput-object p4, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->selection:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->selectionArgs:[Ljava/lang/String;

    .line 158
    iput-object p6, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->packageName:Ljava/lang/String;

    .line 159
    iput-object p7, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->context:Landroid/content/Context;

    .line 160
    iput-object p8, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 163
    const-string v0, "err_code"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "err_code"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->errorCode:I

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 169
    const/4 v13, 0x0

    .line 170
    .local v13, "msgId":I
    const/16 v16, 0x0

    .line 171
    .local v16, "slotId":Ljava/lang/String;
    const/4 v15, 0x0

    .line 172
    .local v15, "simPlmn":Ljava/lang/String;
    const/4 v12, 0x0

    .line 173
    .local v12, "errorCode":I
    const/4 v14, -0x1

    .line 174
    .local v14, "protoType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 176
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    move-object v8, v15

    .end local v15    # "simPlmn":Ljava/lang/String;
    .local v8, "simPlmn":Ljava/lang/String;
    move-object/from16 v7, v16

    .line 218
    .end local v16    # "slotId":Ljava/lang/String;
    .local v7, "slotId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 179
    .end local v7    # "slotId":Ljava/lang/String;
    .end local v8    # "simPlmn":Ljava/lang/String;
    .restart local v15    # "simPlmn":Ljava/lang/String;
    .restart local v16    # "slotId":Ljava/lang/String;
    :cond_1
    const-string v2, "pending_msgs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "proto_type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "msg_id"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->selection:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->selectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 183
    .local v11, "cursor1":Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 184
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 186
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 188
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_3
    const/4 v3, 0x1

    if-ne v14, v3, :cond_7

    if-lez v13, :cond_7

    .line 191
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 193
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .end local v16    # "slotId":Ljava/lang/String;
    .restart local v7    # "slotId":Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .end local v15    # "simPlmn":Ljava/lang/String;
    .restart local v8    # "simPlmn":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->getInstance()Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;

    move-result-object v2

    .line 213
    .local v2, "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    if-eqz v2, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->context:Landroid/content/Context;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->errorType:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;->packageName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;->logAddMmsFailedItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v2    # "checkin":Lcom/motorola/android/internal/telephony/checkin/CheckinLogger;
    .end local v7    # "slotId":Ljava/lang/String;
    .end local v8    # "simPlmn":Ljava/lang/String;
    .restart local v15    # "simPlmn":Ljava/lang/String;
    .restart local v16    # "slotId":Ljava/lang/String;
    :cond_4
    const-string v2, "pdu"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sub_id"

    aput-object v5, v3, v4

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 202
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 203
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 204
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v17

    .line 205
    .local v17, "sub_id":I
    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 206
    .end local v16    # "slotId":Ljava/lang/String;
    .restart local v7    # "slotId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v8

    .line 208
    .end local v15    # "simPlmn":Ljava/lang/String;
    .end local v17    # "sub_id":I
    .restart local v8    # "simPlmn":Ljava/lang/String;
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "slotId":Ljava/lang/String;
    .end local v8    # "simPlmn":Ljava/lang/String;
    .restart local v15    # "simPlmn":Ljava/lang/String;
    .restart local v16    # "slotId":Ljava/lang/String;
    :cond_5
    move-object v8, v15

    .end local v15    # "simPlmn":Ljava/lang/String;
    .restart local v8    # "simPlmn":Ljava/lang/String;
    move-object/from16 v7, v16

    .end local v16    # "slotId":Ljava/lang/String;
    .restart local v7    # "slotId":Ljava/lang/String;
    goto :goto_2

    .end local v7    # "slotId":Ljava/lang/String;
    .end local v8    # "simPlmn":Ljava/lang/String;
    .restart local v15    # "simPlmn":Ljava/lang/String;
    .restart local v16    # "slotId":Ljava/lang/String;
    :cond_6
    move-object v8, v15

    .end local v15    # "simPlmn":Ljava/lang/String;
    .restart local v8    # "simPlmn":Ljava/lang/String;
    move-object/from16 v7, v16

    .end local v16    # "slotId":Ljava/lang/String;
    .restart local v7    # "slotId":Ljava/lang/String;
    goto :goto_1

    .end local v7    # "slotId":Ljava/lang/String;
    .end local v8    # "simPlmn":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "simPlmn":Ljava/lang/String;
    .restart local v16    # "slotId":Ljava/lang/String;
    :cond_7
    move-object v8, v15

    .end local v15    # "simPlmn":Ljava/lang/String;
    .restart local v8    # "simPlmn":Ljava/lang/String;
    move-object/from16 v7, v16

    .end local v16    # "slotId":Ljava/lang/String;
    .restart local v7    # "slotId":Ljava/lang/String;
    goto/16 :goto_0
.end method
