.class public abstract Lcom/motorola/extensions/DynamicPreferenceDataProvider;
.super Landroid/content/ContentProvider;
.source "DynamicPreferenceDataProvider.java"


# static fields
.field public static final CHECKBOX_PREFERENCE:Ljava/lang/String; = "checkbox_preference"

.field public static final COLUMN_ENABLED:Ljava/lang/String; = "enabled"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final COLUMN_VISIBLE:Ljava/lang/String; = "visible"

.field public static final LISTEN_FOR_CHANGE:Ljava/lang/String; = "listen"

.field public static final LIST_PREFERENCE:Ljava/lang/String; = "list_preference"

.field public static final PREFERENCE:Ljava/lang/String; = "preference"

.field private static final TAG:Ljava/lang/String; = "DynamicPreferenceDataProvider"

.field private static final TYPE_BOOLEAN:I = 0x1

.field private static final TYPE_STRING:I = 0x2

.field private static final TYPE_UNKNOWN:I

.field private static sValueTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    .line 113
    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    const-string v1, "preference"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    const-string v1, "list_preference"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    const-string v1, "checkbox_preference"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkMonitor(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    :try_start_0
    const-string v2, "listen"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 215
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 216
    .local v0, "listenForChange":Z
    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->onStartMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0    # "listenForChange":Z
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 219
    .restart local v0    # "listenForChange":Z
    .restart local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->onStopMonitor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static getBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "preferenceType"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 475
    const-string v0, "value"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid preferenceType for boolean data."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    const-string v0, "enabled"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "visible"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid column name for Boolean data."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_1
    const/4 v7, 0x0

    .line 485
    .local v7, "data":Z
    invoke-static {p1, p2, p3}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getPreferenceDataUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 487
    .local v1, "depUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 489
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 490
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    invoke-interface {v6, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 492
    .local v8, "index":I
    if-ltz v8, :cond_2

    .line 493
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    move v7, v9

    .line 497
    .end local v8    # "index":I
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 498
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_3
    return v7

    .line 493
    .restart local v8    # "index":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 497
    .end local v8    # "index":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 498
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "preferenceType"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, "value"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getPreferenceDataUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 416
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 417
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 418
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 419
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 420
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 421
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0
.end method

.method private static getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "preferenceType"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "columnName"    # Ljava/lang/String;

    .prologue
    .line 506
    const-string v0, "value"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid preferenceType for String data."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid column name for String data."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_1
    const-string v7, ""

    .line 515
    .local v7, "data":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getPreferenceDataUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 517
    .local v1, "depUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 519
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 520
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    invoke-interface {v6, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 522
    .local v8, "index":I
    if-ltz v8, :cond_2

    .line 523
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 527
    .end local v8    # "index":I
    :cond_2
    if-eqz v6, :cond_3

    .line 528
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_3
    return-object v7

    .line 527
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 528
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "preferenceType"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v0, "value"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValueType(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, "type":I
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "pathSegs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 126
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "prefType":Ljava/lang/String;
    sget-object v4, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    sget-object v4, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 132
    .end local v1    # "pathSegs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "prefType":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_0
    return v3
.end method

.method public static isEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "preferenceType"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string v0, "enabled"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "preferenceType"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 447
    const-string v0, "visible"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 325
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getDefaultBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 328
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getDefaultBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getDefaultBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v0, ""

    return-object v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getDefaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getDefaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method protected isVisible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method protected onStartMonitor(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 408
    return-void
.end method

.method protected onStopMonitor(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 413
    return-void
.end method

.method protected putBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 372
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 373
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 377
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 348
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 352
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "arg1"    # [Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/extensions/internal/SystemUtils;->isCallingSystemOrMotoApp(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    const-string v3, "DynamicPreferenceDataProvider"

    const-string v4, "Calling app is not a system/moto app. Permission denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    .line 205
    :cond_0
    :goto_0
    return-object v1

    .line 184
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v8, [Ljava/lang/String;

    const-string v6, "enabled"

    aput-object v6, v3, v5

    const-string v6, "visible"

    aput-object v6, v3, v4

    const-string v6, "value"

    aput-object v6, v3, v7

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 186
    .local v1, "mc":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .line 187
    .local v2, "values":[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getValueType(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 202
    :goto_1
    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :pswitch_0
    new-array v2, v8, [Ljava/lang/Object;

    .end local v2    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isVisible(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 192
    .restart local v2    # "values":[Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->checkMonitor(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "values":[Ljava/lang/Object;
    :cond_2
    move v3, v5

    .line 190
    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4

    .line 195
    .restart local v2    # "values":[Ljava/lang/Object;
    :pswitch_1
    new-array v2, v8, [Ljava/lang/Object;

    .end local v2    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isVisible(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v5, v4

    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 197
    .restart local v2    # "values":[Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->checkMonitor(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "values":[Ljava/lang/Object;
    :cond_6
    move v3, v5

    .line 195
    goto :goto_5

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/extensions/internal/SystemUtils;->isCallingSystemOrMotoApp(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    const-string v3, "DynamicPreferenceDataProvider"

    const-string v4, "Calling app is not a system/moto app. Permission denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    const/4 v1, 0x0

    .line 241
    .local v1, "updatedRows":I
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 243
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->checkMonitor(Landroid/net/Uri;Ljava/lang/String;)V

    move v1, v2

    .line 244
    goto :goto_0

    .line 246
    :cond_3
    invoke-direct {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getValueType(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 261
    :cond_4
    :goto_1
    if-lez v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 248
    :pswitch_0
    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->putBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    const/4 v1, 0x1

    goto :goto_1

    .line 254
    :pswitch_1
    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    const/4 v1, 0x1

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
