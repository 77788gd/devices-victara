.class public final Lcom/android/internal/telephony/HbpcdUtils;
.super Ljava/lang/Object;
.source "HbpcdUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HbpcdUtils"


# instance fields
.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method


# virtual methods
.method public getIddByMcc(I)Ljava/lang/String;
    .locals 10
    .param p1, "mcc"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 160
    const-string v8, ""

    .line 162
    .local v8, "idd":Ljava/lang/String;
    const/4 v6, 0x0

    .line 164
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "IDD"

    aput-object v0, v2, v9

    .line 165
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCC="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 167
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_2
    return-object v8
.end method

.method public getMcc(IIIZ)I
    .locals 23
    .param p1, "sid"    # I
    .param p2, "tz"    # I
    .param p3, "DSTflag"    # I
    .param p4, "isNitzTimeZone"    # Z

    .prologue
    .line 46
    const/16 v22, 0x0

    .line 50
    .local v22, "tmpMcc":I
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mcc"

    aput-object v2, v3, v1

    .line 51
    .local v3, "projection1":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/HbpcdLookup$Useradd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 54
    .local v16, "c1":Landroid/database/Cursor;
    if-eqz v16, :cond_1

    .line 55
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 57
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 61
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    move/from16 v1, v22

    .line 152
    :goto_0
    return v1

    .line 64
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_1
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MCC"

    aput-object v2, v6, v1

    .line 74
    .local v6, "projection2":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 77
    .local v17, "c2":Landroid/database/Cursor;
    if-eqz v17, :cond_3

    .line 78
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 82
    .local v18, "c2Counter":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    .line 86
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 91
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    move/from16 v1, v22

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 99
    .end local v18    # "c2Counter":I
    :cond_3
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MCC"

    aput-object v2, v9, v1

    .line 100
    .local v9, "projection3":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/internal/telephony/HbpcdLookup$MccSidConflicts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SID_Conflict="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ((("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GMT_Offset_Low"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GMT_Offset_High"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")) or (("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GMT_DST_Low"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GMT_DST_High"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 107
    .local v19, "c3":Landroid/database/Cursor;
    if-eqz v19, :cond_7

    .line 108
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 109
    .local v20, "c3Counter":I
    if-lez v20, :cond_6

    .line 110
    const/4 v1, 0x1

    move/from16 v0, v20

    if-le v0, v1, :cond_4

    .line 111
    const-string v1, "HbpcdUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "something wrong, get more results for 1 conflict SID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 118
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 119
    if-eqz p4, :cond_5

    move/from16 v1, v22

    .line 120
    goto/16 :goto_0

    .line 125
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 128
    :cond_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 132
    .end local v20    # "c3Counter":I
    :cond_7
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MCC"

    aput-object v2, v12, v1

    .line 133
    .local v12, "projection5":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/internal/telephony/HbpcdLookup$MccSidRange;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SID_Range_Low<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SID_Range_High"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 137
    .local v21, "c5":Landroid/database/Cursor;
    if-eqz v21, :cond_9

    .line 138
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 140
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 143
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    move/from16 v1, v22

    .line 144
    goto/16 :goto_0

    .line 146
    :cond_8
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_9
    move/from16 v1, v22

    .line 152
    goto/16 :goto_0
.end method
