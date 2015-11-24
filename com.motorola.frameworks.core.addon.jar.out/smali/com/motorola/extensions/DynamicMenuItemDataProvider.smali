.class public abstract Lcom/motorola/extensions/DynamicMenuItemDataProvider;
.super Landroid/content/ContentProvider;
.source "DynamicMenuItemDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/extensions/DynamicMenuItemDataProvider$1;,
        Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;,
        Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    }
.end annotation


# static fields
.field private static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field private static final COLUMN_REMOVE_IDS:Ljava/lang/String; = "remove"

.field private static final COLUMN_REPLACE_ID:Ljava/lang/String; = "replace"

.field private static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field private static final COLUMN_TITLE_CONDENSED:Ljava/lang/String; = "titleCondensed"

.field private static final COLUMN_VISIBLE:Ljava/lang/String; = "visible"

.field private static final TAG:Ljava/lang/String; = "DynamicMenuItemDataProvider"

.field private static mColumnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    .line 88
    sget-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->TITLE:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->TITLE_CONDENSED:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v2, "titleCondensed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->VISIBLE:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v2, "visible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->ICON:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->REPLACE_ID:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v2, "replace"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->REMOVE_IDS:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v2, "remove"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 96
    return-void
.end method

.method public static getProviderValues(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v10, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;

    invoke-direct {v10}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;-><init>()V

    .line 311
    .local v10, "dataValues":Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;
    invoke-static/range {p1 .. p1}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 312
    .local v2, "dataUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 314
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 315
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 316
    invoke-static {}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->values()[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    move-result-object v7

    .local v7, "arr$":[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    array-length v0, v7

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_4

    aget-object v18, v7, v13

    .line 317
    .local v18, "param":Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 318
    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->mColumnMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 319
    .local v8, "column":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 320
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 321
    .local v16, "index":I
    if-ltz v16, :cond_0

    .line 322
    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$1;->$SwitchMap$com$motorola$extensions$DynamicMenuItemDataProvider$MenuItemParams:[I

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 316
    .end local v8    # "column":Ljava/lang/String;
    .end local v16    # "index":I
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 324
    .restart local v8    # "column":Ljava/lang/String;
    .restart local v16    # "index":I
    :pswitch_0
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 325
    .local v22, "title":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 367
    .end local v7    # "arr$":[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    .end local v8    # "column":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "index":I
    .end local v17    # "len$":I
    .end local v18    # "param":Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    .end local v22    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_1

    .line 368
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 328
    .restart local v7    # "arr$":[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    .restart local v8    # "column":Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v16    # "index":I
    .restart local v17    # "len$":I
    .restart local v18    # "param":Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    :pswitch_1
    :try_start_1
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 329
    .local v23, "title_condensed":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->setTitleCondensed(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    .end local v23    # "title_condensed":Ljava/lang/String;
    :pswitch_2
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v24, 0x1

    .line 333
    .local v24, "visible":Z
    :goto_2
    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->setVisible(Z)V

    goto :goto_1

    .line 332
    .end local v24    # "visible":Z
    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    .line 336
    :pswitch_3
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 337
    .local v14, "iconResId":I
    invoke-virtual {v10, v14}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->setIconResId(I)V

    goto :goto_1

    .line 340
    .end local v14    # "iconResId":I
    :pswitch_4
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 341
    .local v21, "replaceId":I
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->setReplaceId(I)V

    goto :goto_1

    .line 344
    .end local v21    # "replaceId":I
    :pswitch_5
    const/16 v19, 0x0

    .line 345
    .local v19, "removeIds":[I
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 346
    .local v20, "removeIdsStr":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 347
    const-string v1, "\\|"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 348
    .local v15, "idList":[Ljava/lang/String;
    array-length v1, v15

    new-array v0, v1, [I

    move-object/from16 v19, v0

    .line 349
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    array-length v1, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v12, v1, :cond_3

    .line 351
    :try_start_2
    aget-object v1, v15, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v19, v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 352
    :catch_0
    move-exception v11

    .line 353
    .local v11, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v1, "DynamicMenuItemDataProvider"

    const-string v3, "RemoveId list is malformed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "i":I
    .end local v15    # "idList":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->setRemoveIds([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 367
    .end local v7    # "arr$":[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    .end local v8    # "column":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "index":I
    .end local v17    # "len$":I
    .end local v18    # "param":Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    .end local v19    # "removeIds":[I
    .end local v20    # "removeIdsStr":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 368
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_5
    return-object v10

    .line 322
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

.method private getRemoveIdsAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "removeIdStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getRemoveIds()[I

    move-result-object v2

    .line 384
    .local v2, "removeIds":[I
    if-eqz v2, :cond_1

    .line 385
    const-string v1, ""

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method private static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 375
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 376
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 377
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 378
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method protected getIconResId()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected getRemoveIds()[I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getReplaceId()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleCondensed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isVisible()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/extensions/internal/SystemUtils;->isCallingSystemOrMotoApp(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    const-string v2, "DynamicMenuItemDataProvider"

    const-string v3, "Calling app is not a system/moto app. Permission denied"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v3

    const-string v5, "titleCondensed"

    aput-object v5, v4, v2

    const-string v5, "visible"

    aput-object v5, v4, v7

    const-string v5, "icon"

    aput-object v5, v4, v8

    const-string v5, "replace"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string v6, "remove"

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 177
    .local v0, "mc":Landroid/database/MatrixCursor;
    const/4 v4, 0x6

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getTitleCondensed()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getIconResId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getReplaceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getRemoveIdsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 181
    .local v1, "values":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "values":[Ljava/lang/Object;
    :cond_2
    move v2, v3

    .line 177
    goto :goto_1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method
