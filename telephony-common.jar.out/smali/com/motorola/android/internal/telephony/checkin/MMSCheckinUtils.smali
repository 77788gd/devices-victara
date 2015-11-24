.class public Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;
.super Ljava/lang/Object;
.source "MMSCheckinUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;,
        Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method


# virtual methods
.method public MMSFailedCheckin(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "openHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 224
    const/4 v9, 0x0

    .line 227
    .local v9, "error_code":I
    if-eqz p1, :cond_0

    const-string v1, "err_type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "err_type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "error_type":I
    const/16 v1, 0xa

    if-lt v2, v1, :cond_0

    .line 230
    new-instance v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSErrorCheckinThread;-><init>(Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 232
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v2    # "error_type":I
    :cond_0
    return-void
.end method

.method public MMSRecvCheckin(JLjava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "openHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 246
    new-instance v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;-><init>(Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 248
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    return-void
.end method

.method public MMSSentCheckin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 7
    .param p1, "rowId"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "openHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 238
    new-instance v0, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils$MMSCheckinThread;-><init>(Lcom/motorola/android/internal/telephony/checkin/MMSCheckinUtils;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 240
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-void
.end method
