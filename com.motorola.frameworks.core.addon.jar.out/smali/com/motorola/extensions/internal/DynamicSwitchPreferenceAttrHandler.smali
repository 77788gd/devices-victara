.class public Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;
.source "DynamicSwitchPreferenceAttrHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "targetContext"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "checkbox_preference"

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 6
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "hostRoot"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "pref":Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 42
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/motorola/extensions/internal/PreferenceLoader;->getPreferenceInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 43
    .local v0, "customPref":Landroid/preference/Preference;
    instance-of v3, v0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    if-nez v3, :cond_0

    .line 44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not an instance of DynamicSwitchPreference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, v0

    .line 47
    check-cast v1, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    .line 56
    .end local v0    # "customPref":Landroid/preference/Preference;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->setProperties(Landroid/preference/TwoStatePreference;)V

    .line 58
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;

    move-result-object v3

    return-object v3

    .line 49
    :cond_2
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v2

    .line 50
    .local v2, "style":I
    if-eqz v2, :cond_3

    .line 51
    new-instance v1, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    .end local v1    # "pref":Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v1    # "pref":Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    goto :goto_0

    .line 53
    :cond_3
    new-instance v1, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    .end local v1    # "pref":Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    invoke-direct {v1, p1}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;-><init>(Landroid/content/Context;)V

    .restart local v1    # "pref":Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    goto :goto_0
.end method
