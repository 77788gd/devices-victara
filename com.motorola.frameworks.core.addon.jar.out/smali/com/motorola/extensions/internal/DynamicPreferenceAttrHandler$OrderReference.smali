.class public Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
.super Ljava/lang/Object;
.source "DynamicPreferenceAttrHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OrderReference"
.end annotation


# static fields
.field public static final ORDER_ABOVE:I = 0x1

.field public static final ORDER_BELOW:I = 0x2

.field public static final ORDER_REPLACE:I


# instance fields
.field mIndex:I

.field mOrderFlag:I

.field mParent:Landroid/preference/PreferenceGroup;

.field mPreference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 4
    .param p1, "parent"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mParent:Landroid/preference/PreferenceGroup;

    .line 637
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mPreference:Landroid/preference/Preference;

    .line 638
    const/4 v3, 0x0

    iput v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mOrderFlag:I

    .line 639
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "prefKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 641
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 642
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 643
    .local v1, "p":Landroid/preference/Preference;
    if-nez v2, :cond_1

    if-ne v1, p2, :cond_1

    .line 650
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    iput v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mIndex:I

    .line 651
    return-void

    .line 645
    .restart local v1    # "p":Landroid/preference/Preference;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V
    .locals 1
    .param p1, "parent"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "index"    # I

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mParent:Landroid/preference/PreferenceGroup;

    .line 630
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mPreference:Landroid/preference/Preference;

    .line 631
    iput p3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mIndex:I

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mOrderFlag:I

    .line 633
    return-void
.end method


# virtual methods
.method public get()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method public getOrderFlag()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mOrderFlag:I

    return v0
.end method

.method public getParent()Landroid/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mParent:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method public setOrderFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 654
    packed-switch p1, :pswitch_data_0

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mOrderFlag:I

    .line 663
    :goto_0
    return-void

    .line 658
    :pswitch_0
    iput p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mOrderFlag:I

    goto :goto_0

    .line 654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
