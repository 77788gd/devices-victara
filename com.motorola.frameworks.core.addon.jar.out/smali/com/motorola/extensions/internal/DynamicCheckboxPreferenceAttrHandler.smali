.class public Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;
.source "DynamicCheckboxPreferenceAttrHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "targetContext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "checkbox_preference"

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 6
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "hostRoot"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "pref":Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/motorola/extensions/internal/PreferenceLoader;->getPreferenceInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 41
    .local v0, "customPref":Landroid/preference/Preference;
    instance-of v3, v0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;

    if-nez v3, :cond_0

    .line 42
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not an instance of DynamicCheckboxPreference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, v0

    .line 45
    check-cast v1, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;

    .line 54
    .end local v0    # "customPref":Landroid/preference/Preference;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->setProperties(Landroid/preference/TwoStatePreference;)V

    .line 56
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;

    move-result-object v3

    return-object v3

    .line 47
    :cond_2
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v2

    .line 48
    .local v2, "style":I
    if-eqz v2, :cond_3

    .line 49
    new-instance v1, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;

    .end local v1    # "pref":Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v1    # "pref":Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    goto :goto_0

    .line 51
    :cond_3
    new-instance v1, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;

    .end local v1    # "pref":Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    invoke-direct {v1, p1}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;-><init>(Landroid/content/Context;)V

    .restart local v1    # "pref":Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    goto :goto_0
.end method
