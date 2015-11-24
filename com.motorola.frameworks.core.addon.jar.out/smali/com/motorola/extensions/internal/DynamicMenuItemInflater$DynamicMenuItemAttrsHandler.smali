.class Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;
.super Ljava/lang/Object;
.source "DynamicMenuItemInflater.java"

# interfaces
.implements Lcom/motorola/extensions/internal/DynamicAttrHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/internal/DynamicMenuItemInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicMenuItemAttrsHandler"
.end annotation


# instance fields
.field private mCategory:I

.field private final mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

.field private mDataAuthority:Ljava/lang/String;

.field private mFlags:I

.field private mGroupID:I

.field private final mHostContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIntent:Landroid/content/Intent;

.field private mOrder:I

.field mReplaceId:I

.field private final mRootMenu:Landroid/view/Menu;

.field mTitle:Ljava/lang/CharSequence;

.field mTitleCondensed:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;


# direct methods
.method public constructor <init>(Lcom/motorola/extensions/internal/DynamicMenuItemInflater;Landroid/content/Context;Landroid/view/Menu;)V
    .locals 1
    .param p2, "hostContext"    # Landroid/content/Context;
    .param p3, "root"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 165
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    .line 157
    iput v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mGroupID:I

    .line 159
    iput v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mReplaceId:I

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mDataAuthority:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mHostContext:Landroid/content/Context;

    .line 167
    new-instance v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-direct {v0}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;-><init>()V

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    .line 168
    iput-object p3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mRootMenu:Landroid/view/Menu;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;)Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    return-object v0
.end method

.method private readFlags(Ljava/lang/CharSequence;)I
    .locals 8
    .param p1, "values"    # Ljava/lang/CharSequence;

    .prologue
    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, "flags":I
    if-eqz p1, :cond_3

    .line 272
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 274
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v1, v4

    .line 275
    .local v2, "flag":Ljava/lang/String;
    const-string v6, "ifRoom"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    or-int/lit8 v3, v3, 0x1

    .line 274
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const-string v6, "withText"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 278
    or-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 279
    :cond_2
    const-string v6, "always"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 285
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "flag":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    return v3
.end method

.method private updateProviderValues(Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;)V
    .locals 13
    .param p1, "providerValues"    # Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 353
    .local v8, "title":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 354
    iput-object v8, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitle:Ljava/lang/CharSequence;

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->getTitleCondensed()Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, "titleCondensed":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 360
    iput-object v9, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->getIconResId()I

    move-result v3

    .line 365
    .local v3, "iconResId":I
    if-eqz v3, :cond_2

    .line 367
    :try_start_0
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v10, v10, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->getReplaceId()I

    move-result v7

    .line 376
    .local v7, "replaceId":I
    invoke-virtual {p1}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->getRemoveIds()[I

    move-result-object v6

    .line 377
    .local v6, "removeIds":[I
    if-nez v6, :cond_3

    if-eqz v7, :cond_5

    .line 378
    :cond_3
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v10}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->getRemoveIdList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 379
    if-eqz v6, :cond_4

    .line 380
    move-object v0, v6

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_4

    aget v4, v0, v2

    .line 381
    .local v4, "id":I
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v10, v4}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->addRemoveId(I)V

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v4    # "id":I
    .end local v5    # "len$":I
    .end local v6    # "removeIds":[I
    .end local v7    # "replaceId":I
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The resource "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found in the package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v12, v12, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v6    # "removeIds":[I
    .restart local v7    # "replaceId":I
    :cond_4
    if-eqz v7, :cond_5

    .line 385
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v10, v7}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->addRemoveId(I)V

    .line 388
    :cond_5
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 295
    const/4 v3, 0x0

    .line 296
    .local v3, "item":Landroid/view/MenuItem;
    iget v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    iget v6, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    .line 300
    const/4 v0, 0x1

    .line 301
    .local v0, "addItem":Z
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mDataAuthority:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 304
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mDataAuthority:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/motorola/extensions/DynamicMenuItemDataProvider;->getProviderValues(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;

    move-result-object v4

    .line 306
    .local v4, "providerValues":Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;
    invoke-direct {p0, v4}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->updateProviderValues(Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;)V

    .line 307
    invoke-virtual {v4}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->isVisible()Z

    move-result v0

    .line 312
    .end local v4    # "providerValues":Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;
    :cond_0
    iget v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mReplaceId:I

    if-lez v5, :cond_1

    .line 313
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mRootMenu:Landroid/view/Menu;

    iget v6, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mReplaceId:I

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_1

    .line 315
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 316
    invoke-interface {v3}, Landroid/view/MenuItem;->getOrder()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    .line 317
    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    iput v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mGroupID:I

    .line 320
    :cond_1
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    if-eqz v5, :cond_3

    .line 321
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v5}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->getRemoveIdList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 322
    .local v2, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mRootMenu:Landroid/view/Menu;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_2

    .line 325
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 332
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_3
    if-nez v0, :cond_5

    .line 346
    :cond_4
    :goto_1
    return-void

    .line 335
    :cond_5
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitle:Ljava/lang/CharSequence;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    .line 336
    :cond_6
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mRootMenu:Landroid/view/Menu;

    iget v6, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mGroupID:I

    iget v7, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    iget-object v8, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v5, v6, v9, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 337
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 338
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 339
    iget v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mFlags:I

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 340
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 341
    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIntent:Landroid/content/Intent;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public readAttrs(Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v13, v13, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 175
    .local v10, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mHostContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 176
    .local v3, "hostResource":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    if-ge v4, v13, :cond_2

    .line 177
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 178
    .local v12, "value":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "name":Ljava/lang/String;
    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$200()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 176
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v6, 0x0

    .line 185
    .local v6, "id":I
    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$200()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 263
    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring the attribute "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    :pswitch_0
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "string"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v15, v15, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 189
    invoke-virtual {v10, v6, v12}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 192
    :pswitch_1
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "string"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v15, v15, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 194
    invoke-virtual {v10, v6, v12}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitleCondensed:Ljava/lang/CharSequence;

    goto :goto_1

    .line 198
    :pswitch_2
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "id"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mHostContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v13, v6}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->addRemoveId(I)V

    .line 201
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mReplaceId:I

    goto/16 :goto_1

    .line 205
    :pswitch_3
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\|"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "idList":[Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v8, :cond_0

    aget-object v11, v1, v5

    .line 207
    .local v11, "s":Ljava/lang/String;
    const-string v13, "id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mHostContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v11, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v13, v6}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->addRemoveId(I)V

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 213
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "idList":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v11    # "s":Ljava/lang/String;
    :pswitch_4
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "drawable"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v15, v15, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 216
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v13, v13, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The resource "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found in the package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v15, v15, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 226
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_5
    :try_start_1
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    .line 230
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    shl-int/lit8 v13, v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    .line 231
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    const/high16 v14, -0x10000

    and-int/2addr v13, v14

    const/high16 v14, 0x40000

    if-le v13, v14, :cond_0

    .line 233
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 235
    :catch_1
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get the category from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 244
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :pswitch_6
    :try_start_2
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const v14, 0xffff

    and-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 247
    :catch_2
    move-exception v2

    .line 248
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get the orderInCategory from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 253
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :pswitch_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->readFlags(Ljava/lang/CharSequence;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mFlags:I

    goto/16 :goto_1

    .line 258
    :pswitch_8
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mDataAuthority:Ljava/lang/String;

    goto/16 :goto_1

    .line 267
    .end local v6    # "id":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIntent:Landroid/content/Intent;

    .line 292
    return-void
.end method
