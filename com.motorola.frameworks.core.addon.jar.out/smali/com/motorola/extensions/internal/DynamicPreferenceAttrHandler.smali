.class public Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
.super Ljava/lang/Object;
.source "DynamicPreferenceAttrHandler.java"

# interfaces
.implements Lcom/motorola/extensions/internal/DynamicAttrHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field private static final RESOURCE_STRING_REFERENCE_PATTERN:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAutoRefresh:Z

.field protected mClassName:Ljava/lang/CharSequence;

.field protected mDataAuthority:Ljava/lang/CharSequence;

.field protected mDependecyKey:Ljava/lang/CharSequence;

.field protected mEnabled:Z

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIntent:Landroid/content/Intent;

.field protected mKey:Ljava/lang/CharSequence;

.field protected mOrderAboveKey:Ljava/lang/CharSequence;

.field protected mOrderBelowKey:Ljava/lang/CharSequence;

.field protected mOrderFirst:Z

.field protected mOrderPriority:I

.field protected mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

.field protected mRedirectLinkages:[Ljava/lang/String;

.field protected mRemoveKeys:[Ljava/lang/String;

.field protected mReplaceKey:Ljava/lang/CharSequence;

.field protected mSelectable:Z

.field protected mStyle:Ljava/lang/CharSequence;

.field protected mSummary:Ljava/lang/CharSequence;

.field protected final mTargetContext:Landroid/content/Context;

.field protected mTitle:Ljava/lang/CharSequence;

.field protected mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->TAG:Ljava/lang/String;

    .line 69
    const-string v0, "^[$].+:.+/.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->RESOURCE_STRING_REFERENCE_PATTERN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "targetContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    .line 73
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    .line 74
    iput-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mVisible:Z

    .line 76
    iput-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSelectable:Z

    .line 77
    return-void
.end method

.method protected static findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .locals 5
    .param p0, "root"    # Landroid/preference/PreferenceGroup;
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 601
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 602
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 603
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    new-instance v3, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    invoke-direct {v3, p0, v2, v1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;-><init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    .line 616
    .end local v0    # "curKey":Ljava/lang/String;
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_1
    return-object v3

    .line 608
    .restart local v0    # "curKey":Ljava/lang/String;
    .restart local v2    # "preference":Landroid/preference/Preference;
    :cond_1
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 609
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-static {v2, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v3

    .line 611
    .local v3, "retPref":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-nez v3, :cond_0

    .line 601
    .end local v3    # "retPref":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static getOrderWithRearrangement(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)I
    .locals 7
    .param p0, "orderReference"    # Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .prologue
    .line 576
    if-nez p0, :cond_1

    .line 577
    const/4 v1, -0x1

    .line 596
    :cond_0
    return v1

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v4

    .line 580
    .local v4, "parent":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->get()Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 581
    .local v1, "order":I
    iget v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mIndex:I

    .line 582
    .local v5, "startIndex":I
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getOrderFlag()I

    move-result v2

    .line 583
    .local v2, "orderFlag":I
    if-eqz v2, :cond_0

    .line 587
    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    .line 588
    add-int/lit8 v5, v5, 0x1

    .line 589
    add-int/lit8 v1, v1, 0x1

    .line 592
    :cond_2
    move v0, v5

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 593
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 594
    .local v3, "p":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleResName"    # Ljava/lang/CharSequence;

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "style":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 425
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "styleName":Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 432
    .end local v1    # "styleName":Ljava/lang/String;
    :cond_2
    return v0
.end method


# virtual methods
.method protected getDrawableFromResource(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 209
    .local v1, "r":Landroid/content/res/Resources;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 218
    :goto_0
    return-object v2

    .line 214
    :catch_0
    move-exception v2

    .line 218
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getDynamicValuesUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 393
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 395
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 396
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 397
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTypeForPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 398
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 399
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 401
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getOrderReference(Landroid/preference/PreferenceGroup;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .locals 12
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v11, 0x0

    .line 472
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    if-nez v10, :cond_1

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 473
    const/4 v7, 0x0

    .line 474
    .local v7, "orderReference":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    const/4 v5, 0x1

    .line 475
    .local v5, "orderFlag":I
    iget-boolean v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderFirst:Z

    if-eqz v10, :cond_2

    .line 476
    new-instance v7, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .end local v7    # "orderReference":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    invoke-virtual {p1, v11}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {v7, p1, v10, v11}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;-><init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    .line 478
    .restart local v7    # "orderReference":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-eqz v7, :cond_0

    iget-object v10, v7, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mPreference:Landroid/preference/Preference;

    if-eqz v10, :cond_0

    .line 479
    iget-object v10, v7, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v10}, Landroid/preference/Preference;->peekExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 480
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 481
    const-string v10, "orderFirst"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 483
    .local v2, "isFirst":Z
    if-eqz v2, :cond_0

    .line 484
    const-string v10, "orderPriority"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 487
    .local v6, "orderPriority":I
    iget v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    if-ge v10, v6, :cond_0

    .line 488
    iget-object v10, v7, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v7

    .line 490
    const/4 v5, 0x2

    .line 567
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "isFirst":Z
    .end local v6    # "orderPriority":I
    :cond_0
    if-eqz v7, :cond_1

    .line 568
    invoke-virtual {v7, v5}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->setOrderFlag(I)V

    .line 569
    iput-object v7, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .line 572
    .end local v5    # "orderFlag":I
    .end local v7    # "orderReference":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_1
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    return-object v10

    .line 498
    .restart local v5    # "orderFlag":I
    .restart local v7    # "orderReference":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_2
    if-nez v7, :cond_4

    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 500
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    invoke-static {p1, v10}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v7

    .line 502
    if-eqz v7, :cond_4

    .line 503
    iget v10, v7, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mIndex:I

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 504
    const/4 v3, 0x0

    .line 505
    .local v3, "lookNext":Z
    new-instance v4, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {v4, p1, v10, v1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;-><init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    .line 507
    .local v4, "oRef":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    iget-object v9, v4, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mPreference:Landroid/preference/Preference;

    .line 508
    .local v9, "tempPref":Landroid/preference/Preference;
    if-eqz v9, :cond_3

    .line 509
    invoke-virtual {v9}, Landroid/preference/Preference;->peekExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 510
    .restart local v0    # "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 511
    const-string v10, "orderRefKey"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 513
    .local v8, "refKey":Ljava/lang/CharSequence;
    if-eqz v8, :cond_3

    .line 514
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 515
    const-string v10, "orderPriority"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 518
    .restart local v6    # "orderPriority":I
    iget v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    if-ge v10, v6, :cond_3

    .line 519
    move-object v7, v4

    .line 520
    const/4 v3, 0x1

    .line 526
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v6    # "orderPriority":I
    .end local v8    # "refKey":Ljava/lang/CharSequence;
    :cond_3
    if-nez v3, :cond_6

    .line 531
    .end local v1    # "i":I
    .end local v3    # "lookNext":Z
    .end local v4    # "oRef":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .end local v9    # "tempPref":Landroid/preference/Preference;
    :cond_4
    if-nez v7, :cond_0

    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 533
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    invoke-static {p1, v10}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v7

    .line 535
    if-eqz v7, :cond_0

    .line 536
    const/4 v5, 0x2

    .line 537
    iget v10, v7, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mIndex:I

    add-int/lit8 v1, v10, 0x1

    .line 538
    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 539
    const/4 v3, 0x0

    .line 540
    .restart local v3    # "lookNext":Z
    new-instance v4, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {v4, p1, v10, v1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;-><init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    .line 542
    .restart local v4    # "oRef":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    iget-object v9, v4, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mPreference:Landroid/preference/Preference;

    .line 543
    .restart local v9    # "tempPref":Landroid/preference/Preference;
    if-eqz v9, :cond_5

    .line 544
    invoke-virtual {v9}, Landroid/preference/Preference;->peekExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 545
    .restart local v0    # "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 546
    const-string v10, "orderRefKey"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 548
    .restart local v8    # "refKey":Ljava/lang/CharSequence;
    if-eqz v8, :cond_5

    .line 549
    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 550
    const-string v10, "orderPriority"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 553
    .restart local v6    # "orderPriority":I
    iget v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    if-ge v10, v6, :cond_5

    .line 554
    move-object v7, v4

    .line 555
    const/4 v3, 0x1

    .line 561
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v6    # "orderPriority":I
    .end local v8    # "refKey":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v3, :cond_0

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0
.end method

.method protected getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 182
    .local v4, "r":Landroid/content/res/Resources;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "string"

    iget-object v11, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "id":I
    if-nez v1, :cond_0

    .line 186
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "strValue":Ljava/lang/String;
    sget-object v9, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->RESOURCE_STRING_REFERENCE_PATTERN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 188
    const-string v9, ":"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "packageSplit":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "refPackageName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v3, v9

    const-string v10, "/"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "identiSplit":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "fullString":Ljava/lang/String;
    move-object p1, v0

    .line 194
    :try_start_0
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 196
    .local v5, "refContext":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 197
    .local v7, "refRes":Landroid/content/res/Resources;
    move-object v4, v7

    .line 198
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v7, v0, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    .end local v0    # "fullString":Ljava/lang/String;
    .end local v2    # "identiSplit":[Ljava/lang/String;
    .end local v3    # "packageSplit":[Ljava/lang/String;
    .end local v5    # "refContext":Landroid/content/Context;
    .end local v6    # "refPackageName":Ljava/lang/String;
    .end local v7    # "refRes":Landroid/content/res/Resources;
    .end local v8    # "strValue":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v4, v1, p1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    return-object v9

    .line 200
    .restart local v0    # "fullString":Ljava/lang/String;
    .restart local v2    # "identiSplit":[Ljava/lang/String;
    .restart local v3    # "packageSplit":[Ljava/lang/String;
    .restart local v6    # "refPackageName":Ljava/lang/String;
    .restart local v8    # "strValue":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const-string v0, "preference"

    return-object v0
.end method

.method protected handleAttribute(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "attrCode"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 178
    return-void
.end method

.method protected handleRedirectLinkages(Landroid/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 248
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 249
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRedirectLinkages:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 250
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRedirectLinkages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 251
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 252
    .local v5, "pref":Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 250
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "keyfullname":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyfullname":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method protected handleRemove(Landroid/preference/PreferenceGroup;)V
    .locals 7
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 228
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mVisible:Z

    if-eqz v6, :cond_0

    .line 229
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    invoke-static {p1, v6}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v4

    .line 231
    .local v4, "orderPref":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-eqz v4, :cond_0

    .line 232
    invoke-virtual {p0, p1, v4}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->removePreference(Landroid/preference/PreferenceGroup;Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V

    .line 233
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .line 236
    .end local v4    # "orderPref":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_0
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRemoveKeys:[Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 237
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRemoveKeys:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 238
    .local v2, "key":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v5

    .line 239
    .local v5, "p":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-eqz v5, :cond_1

    .line 240
    invoke-virtual {p0, p1, v5}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->removePreference(Landroid/preference/PreferenceGroup;Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v5    # "p":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_2
    return-void
.end method

.method public inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 3
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "hostRoot"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "pref":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 439
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/PreferenceLoader;->getPreferenceInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 448
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setProperties(Landroid/preference/Preference;)V

    .line 450
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;

    move-result-object v2

    return-object v2

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v1

    .line 442
    .local v1, "style":I
    if-eqz v1, :cond_2

    .line 443
    new-instance v0, Lcom/motorola/extensions/preference/DynamicPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/motorola/extensions/preference/DynamicPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v0    # "pref":Landroid/preference/Preference;
    goto :goto_0

    .line 445
    :cond_2
    new-instance v0, Lcom/motorola/extensions/preference/DynamicPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    invoke-direct {v0, p1}, Lcom/motorola/extensions/preference/DynamicPreference;-><init>(Landroid/content/Context;)V

    .restart local v0    # "pref":Landroid/preference/Preference;
    goto :goto_0
.end method

.method protected inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 9
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceGroup;
    .param p3, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 356
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->handleRemove(Landroid/preference/PreferenceGroup;)V

    .line 357
    if-eqz p3, :cond_0

    iget-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mVisible:Z

    if-nez v6, :cond_1

    :cond_0
    move-object p3, v5

    .line 385
    .end local p3    # "pref":Landroid/preference/Preference;
    :goto_0
    return-object p3

    .line 360
    .restart local p3    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getOrderReference(Landroid/preference/PreferenceGroup;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v2

    .line 361
    .local v2, "orderPref":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-eqz v2, :cond_2

    .line 362
    invoke-virtual {v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object p2

    .line 363
    invoke-static {v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getOrderWithRearrangement(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)I

    move-result v1

    .line 364
    .local v1, "order":I
    if-ltz v1, :cond_2

    .line 365
    invoke-virtual {p3, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 368
    .end local v1    # "order":I
    :cond_2
    invoke-virtual {p2, p3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 369
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDependecyKey:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 370
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDependecyKey:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDynamicValuesUri()Landroid/net/Uri;

    move-result-object v4

    .line 373
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_4

    iget-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mAutoRefresh:Z

    if-eqz v6, :cond_4

    instance-of v6, p3, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    if-eqz v6, :cond_4

    move-object v3, p3

    .line 375
    check-cast v3, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    .line 377
    .local v3, "p":Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;
    iget-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mAutoRefresh:Z

    invoke-interface {v3, v4, v6}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;->setAutoRefresh(Landroid/net/Uri;Z)V

    .line 378
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 379
    .local v0, "b":Landroid/net/Uri$Builder;
    const-string v6, "listen"

    const-string v7, "true"

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v7, v8, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    .end local v0    # "b":Landroid/net/Uri$Builder;
    .end local v3    # "p":Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->handleRedirectLinkages(Landroid/preference/PreferenceGroup;)V

    goto :goto_0
.end method

.method public prepareChild(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    .locals 1
    .param p1, "orderFirst"    # Z
    .param p2, "orderAbove"    # Ljava/lang/CharSequence;
    .param p3, "orderBelow"    # Ljava/lang/CharSequence;
    .param p4, "orderPriority"    # I

    .prologue
    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRemoveKeys:[Ljava/lang/String;

    .line 456
    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    .line 457
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    .line 458
    iput-object p3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    .line 459
    iput-boolean p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderFirst:Z

    .line 460
    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .line 461
    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRedirectLinkages:[Ljava/lang/String;

    .line 462
    iput p4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    .line 463
    return-object p0
.end method

.method public final readAttrs(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 83
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "value":Ljava/lang/CharSequence;
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v3}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->getAttrCode(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "attrCode":I
    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_2
    :pswitch_0
    invoke-virtual {p0, v0, v4}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->handleAttribute(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 95
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 98
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 102
    :pswitch_3
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 105
    :pswitch_4
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mEnabled:Z

    goto :goto_1

    .line 108
    :pswitch_5
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDependecyKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 111
    :pswitch_6
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    goto :goto_1

    .line 114
    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDrawableFromResource(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 117
    :pswitch_8
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 120
    :pswitch_9
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRemoveKeys:[Ljava/lang/String;

    goto :goto_1

    .line 123
    :pswitch_a
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 126
    :pswitch_b
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 129
    :pswitch_c
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderFirst:Z

    goto :goto_1

    .line 132
    :pswitch_d
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 135
    :pswitch_e
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mAutoRefresh:Z

    goto :goto_1

    .line 138
    :pswitch_f
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSelectable:Z

    goto :goto_1

    .line 141
    :pswitch_10
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 145
    :pswitch_11
    :try_start_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    goto/16 :goto_1

    .line 151
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_12
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRedirectLinkages:[Ljava/lang/String;

    goto/16 :goto_2

    .line 173
    .end local v0    # "attrCode":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_9
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method protected removePreference(Landroid/preference/PreferenceGroup;Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceGroup;
    .param p2, "orderPref"    # Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .prologue
    const/4 v5, 0x0

    .line 263
    invoke-virtual {p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->get()Landroid/preference/Preference;

    move-result-object v0

    .line 264
    .local v0, "curPref":Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/Preference;->hasKey()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 266
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 267
    .local v2, "pref":Landroid/preference/Preference;
    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v2}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "prefDepKey":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 274
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    goto :goto_1

    .line 280
    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/preference/Preference;
    .end local v3    # "prefDepKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    .line 225
    return-void
.end method

.method public setOrderReference(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V
    .locals 0
    .param p1, "orderReference"    # Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .line 468
    return-void
.end method

.method protected setProperties(Landroid/preference/Preference;)V
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 284
    invoke-virtual {p1, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 285
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    iget-boolean v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderFirst:Z

    if-eqz v3, :cond_8

    .line 288
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 289
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v3, "orderFirst"

    invoke-virtual {v6, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string v3, "orderPriority"

    iget v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 307
    :goto_1
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 311
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 314
    :cond_2
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :cond_3
    iget-boolean v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mEnabled:Z

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 319
    iget-boolean v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSelectable:Z

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 320
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDynamicValuesUri()Landroid/net/Uri;

    move-result-object v1

    .line 321
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_7

    .line 322
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 323
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 325
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_d

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 326
    const-string v2, "visible"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 328
    .local v8, "index":I
    if-ltz v8, :cond_4

    .line 329
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b

    move v2, v9

    :goto_2
    iput-boolean v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mVisible:Z

    .line 331
    :cond_4
    const-string v2, "enabled"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 333
    if-ltz v8, :cond_5

    .line 334
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c

    move v2, v9

    :goto_3
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 336
    :cond_5
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 338
    if-ltz v8, :cond_6

    .line 339
    invoke-virtual {p0, p1, v7, v8}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setValueFromCursor(Landroid/preference/Preference;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_6
    if-eqz v7, :cond_7

    .line 347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 351
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "index":I
    :cond_7
    return-void

    .line 291
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_8
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 292
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 293
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string v3, "orderRefKey"

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 294
    const-string v3, "orderPriority"

    iget v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 295
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_9
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 297
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string v3, "orderRefKey"

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 298
    const-string v3, "orderPriority"

    iget v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderPriority:I

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 305
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_a
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "index":I
    :cond_b
    move v2, v10

    .line 329
    goto :goto_2

    :cond_c
    move v2, v10

    .line 334
    goto :goto_3

    .line 342
    .end local v8    # "index":I
    :cond_d
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is invalid for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_e

    .line 347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
.end method

.method protected setValueFromCursor(Landroid/preference/Preference;Landroid/database/Cursor;I)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "valueIndex"    # I

    .prologue
    .line 413
    if-ltz p3, :cond_0

    .line 414
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method
