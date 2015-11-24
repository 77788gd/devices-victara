.class public Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;
.super Ljava/lang/Object;
.source "DynamicHeaderAttrHandler.java"

# interfaces
.implements Lcom/motorola/extensions/internal/DynamicAttrHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mIconIdName:Ljava/lang/CharSequence;

.field protected mIntent:Landroid/content/Intent;

.field protected mOrderAboveIdName:Ljava/lang/CharSequence;

.field protected mOrderBelowIdName:Ljava/lang/CharSequence;

.field protected mOrderFirst:Z

.field protected mOrderPriority:I

.field protected mRemoveIdNames:[Ljava/lang/String;

.field protected mRepalceIdName:Ljava/lang/CharSequence;

.field mRootHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field protected mSummary:Ljava/lang/CharSequence;

.field protected mTargetContext:Landroid/content/Context;

.field protected mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "targetContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    .line 45
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTargetContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    .line 47
    return-void
.end method

.method private getOrderAboveByIdName(Landroid/content/Context;Ljava/lang/CharSequence;)I
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idName"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-static {p1, v9, v10}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, "id":I
    if-eqz v3, :cond_5

    .line 191
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 192
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 193
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-wide v10, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    int-to-long v12, v3

    cmp-long v9, v10, v12

    if-nez v9, :cond_4

    .line 194
    move v6, v2

    .line 195
    .local v6, "order":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 196
    const/4 v5, 0x0

    .line 197
    .local v5, "lookNext":Z
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 198
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v9, :cond_0

    .line 199
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderRefKey"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 201
    .local v8, "refName":Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    .line 202
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 203
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderPriority"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 206
    .local v7, "orderPriority":I
    iget v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    if-ge v9, v7, :cond_2

    .line 207
    move v6, v4

    .line 208
    const/4 v5, 0x1

    .line 221
    .end local v7    # "orderPriority":I
    .end local v8    # "refName":Ljava/lang/CharSequence;
    :cond_0
    :goto_2
    if-nez v5, :cond_3

    .line 229
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "lookNext":Z
    .end local v6    # "order":I
    :cond_1
    :goto_3
    return v6

    .line 210
    .restart local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    .restart local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "lookNext":Z
    .restart local v6    # "order":I
    .restart local v7    # "orderPriority":I
    .restart local v8    # "refName":Ljava/lang/CharSequence;
    :cond_2
    iget v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    if-ne v9, v7, :cond_0

    .line 211
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    if-eqz v9, :cond_0

    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_0

    .line 213
    move v6, v4

    .line 214
    const/4 v5, 0x1

    goto :goto_2

    .line 195
    .end local v7    # "orderPriority":I
    .end local v8    # "refName":Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 191
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v4    # "j":I
    .end local v5    # "lookNext":Z
    .end local v6    # "order":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "i":I
    :cond_5
    const/4 v6, -0x1

    goto :goto_3
.end method

.method private getOrderBelowByIdName(Landroid/content/Context;Ljava/lang/CharSequence;)I
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idName"    # Ljava/lang/CharSequence;

    .prologue
    .line 236
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-static {p1, v9, v10}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, "id":I
    if-eqz v3, :cond_5

    .line 238
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 239
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 240
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-wide v10, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    int-to-long v12, v3

    cmp-long v9, v10, v12

    if-nez v9, :cond_4

    .line 241
    move v6, v2

    .line 242
    .local v6, "order":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    :goto_1
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 243
    const/4 v5, 0x0

    .line 244
    .local v5, "lookNext":Z
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 245
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v9, :cond_0

    .line 246
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderRefKey"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 248
    .local v8, "refName":Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    .line 249
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 250
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderPriority"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 253
    .local v7, "orderPriority":I
    iget v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    if-ge v9, v7, :cond_2

    .line 254
    move v6, v4

    .line 255
    const/4 v5, 0x1

    .line 267
    .end local v7    # "orderPriority":I
    .end local v8    # "refName":Ljava/lang/CharSequence;
    :cond_0
    :goto_2
    if-nez v5, :cond_3

    .line 270
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "lookNext":Z
    :cond_1
    add-int/lit8 v9, v6, 0x1

    .line 275
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "order":I
    :goto_3
    return v9

    .line 256
    .restart local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    .restart local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "lookNext":Z
    .restart local v6    # "order":I
    .restart local v7    # "orderPriority":I
    .restart local v8    # "refName":Ljava/lang/CharSequence;
    :cond_2
    iget v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    if-ne v9, v7, :cond_0

    .line 257
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    if-eqz v9, :cond_0

    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_0

    .line 259
    move v6, v4

    .line 260
    const/4 v5, 0x1

    goto :goto_2

    .line 242
    .end local v7    # "orderPriority":I
    .end local v8    # "refName":Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v4    # "j":I
    .end local v5    # "lookNext":Z
    .end local v6    # "order":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "i":I
    :cond_5
    const/4 v9, -0x1

    goto :goto_3
.end method

.method private getOrderFirstByPriority(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 282
    const/4 v4, 0x0

    .line 283
    .local v4, "order":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 284
    const/4 v3, 0x0

    .line 285
    .local v3, "lookNext":Z
    move v4, v1

    .line 286
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 287
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 288
    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v7, "orderFirst"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 290
    .local v2, "isFirst":Z
    if-eqz v2, :cond_0

    .line 291
    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v7, "orderPriority"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 294
    .local v5, "orderPriority":I
    iget v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    if-ge v6, v5, :cond_2

    .line 295
    const/4 v3, 0x1

    .line 304
    .end local v2    # "isFirst":Z
    .end local v5    # "orderPriority":I
    :cond_0
    :goto_1
    if-nez v3, :cond_3

    .line 307
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v3    # "lookNext":Z
    :cond_1
    return v4

    .line 296
    .restart local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    .restart local v2    # "isFirst":Z
    .restart local v3    # "lookNext":Z
    .restart local v5    # "orderPriority":I
    :cond_2
    iget v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    if-ne v6, v5, :cond_0

    .line 297
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    .line 299
    const/4 v3, 0x1

    goto :goto_1

    .line 283
    .end local v2    # "isFirst":Z
    .end local v5    # "orderPriority":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "id":I
    if-gtz v0, :cond_0

    .line 315
    sget-object v1, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource: @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    return v0
.end method


# virtual methods
.method public inflate(Landroid/content/Context;)V
    .locals 14
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 111
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRemoveIdNames:[Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 112
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRemoveIdNames:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v0, v4

    .line 113
    .local v7, "name":Ljava/lang/String;
    const-string v9, "id"

    invoke-static {p1, v7, v9}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 114
    .local v5, "id":I
    if-eqz v5, :cond_0

    .line 115
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 116
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 117
    .local v1, "h":Landroid/preference/PreferenceActivity$Header;
    iget-wide v10, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    int-to-long v12, v5

    cmp-long v9, v10, v12

    if-nez v9, :cond_1

    .line 118
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    .end local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    .restart local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "id":I
    .end local v6    # "len$":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    const/4 v8, -0x1

    .line 127
    .local v8, "order":I
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 128
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-static {p1, v9, v10}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 130
    .restart local v5    # "id":I
    if-eqz v5, :cond_3

    .line 131
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 132
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 133
    .restart local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    iget-wide v10, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    int-to-long v12, v5

    cmp-long v9, v10, v12

    if-nez v9, :cond_8

    .line 134
    move v8, v3

    .line 135
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    .end local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v3    # "i":I
    .end local v5    # "id":I
    :cond_3
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 142
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 143
    .local v2, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    iput-object v9, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 144
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mSummary:Ljava/lang/CharSequence;

    iput-object v9, v2, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 145
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIntent:Landroid/content/Intent;

    iput-object v9, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 146
    iget-object v9, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v9, :cond_4

    .line 147
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 150
    :cond_4
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIconIdName:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 151
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIconIdName:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    invoke-static {p1, v9, v10}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 152
    .restart local v5    # "id":I
    if-eqz v5, :cond_5

    .line 153
    iput v5, v2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 156
    .end local v5    # "id":I
    :cond_5
    if-gez v8, :cond_6

    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 157
    iget-boolean v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderFirst:Z

    if-eqz v9, :cond_9

    .line 158
    iget-object v9, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderFirst"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    iget-object v9, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderPriority"

    iget v11, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getOrderFirstByPriority(Landroid/content/Context;)I

    move-result v8

    .line 176
    :cond_6
    :goto_3
    if-ltz v8, :cond_b

    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 177
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 183
    .end local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_7
    :goto_4
    return-void

    .line 131
    .restart local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    .restart local v3    # "i":I
    .restart local v5    # "id":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 162
    .end local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v3    # "i":I
    .end local v5    # "id":I
    .restart local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_9
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 163
    iget-object v9, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderRefKey"

    iget-object v11, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    iget-object v9, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderPriority"

    iget v11, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v9}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getOrderAboveByIdName(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_3

    .line 168
    :cond_a
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 169
    iget-object v9, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderRefKey"

    iget-object v11, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 171
    iget-object v9, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v10, "orderPriority"

    iget v11, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v9}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getOrderBelowByIdName(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_3

    .line 179
    :cond_b
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public readAttrs(Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    iget-object v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 53
    .local v5, "r":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 54
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "value":Ljava/lang/CharSequence;
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v4}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->getAttrCode(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "attrCode":I
    const/4 v3, 0x0

    .line 61
    .local v3, "id":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 63
    :sswitch_0
    iget-object v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-static {v7, v8, v9}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 64
    invoke-virtual {v5, v3, v6}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 67
    :sswitch_1
    iget-object v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-static {v7, v8, v9}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 68
    invoke-virtual {v5, v3, v6}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 71
    :sswitch_2
    iput-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 74
    :sswitch_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRemoveIdNames:[Ljava/lang/String;

    goto :goto_1

    .line 77
    :sswitch_4
    iput-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 80
    :sswitch_5
    iput-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 83
    :sswitch_6
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderFirst:Z

    goto :goto_1

    .line 86
    :sswitch_7
    iput-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIconIdName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 90
    :sswitch_8
    :try_start_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    iput v7, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderPriority:I

    goto :goto_1

    .line 98
    .end local v0    # "attrCode":I
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 61
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_3
        0x9 -> :sswitch_6
        0x1f -> :sswitch_8
    .end sparse-switch
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIntent:Landroid/content/Intent;

    .line 103
    return-void
.end method
