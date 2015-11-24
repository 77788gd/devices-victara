.class public Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
.source "DynamicTwoStatePreferenceAttrHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIntercept:Z

.field protected mMaxLines:I

.field private mOffIntercept:Z

.field private mOnIntercept:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "targetContext"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mMaxLines:I

    .line 39
    return-void
.end method


# virtual methods
.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "checkbox_preference"

    return-object v0
.end method

.method protected handleAttribute(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "attrCode"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 45
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 48
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 51
    :sswitch_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mIntercept:Z

    goto :goto_0

    .line 54
    :sswitch_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mOnIntercept:Z

    goto :goto_0

    .line 57
    :sswitch_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mOffIntercept:Z

    goto :goto_0

    .line 60
    :sswitch_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mMaxLines:I

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_4
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method protected setProperties(Landroid/preference/TwoStatePreference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/TwoStatePreference;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataAuthority attribute is required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 93
    :cond_2
    instance-of v1, p1, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$DelegatorHelper;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 94
    check-cast v1, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$DelegatorHelper;

    invoke-interface {v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$DelegatorHelper;->getDelegator()Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    move-result-object v0

    .line 96
    .local v0, "delegator":Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;
    if-eqz v0, :cond_3

    .line 97
    iget-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mIntercept:Z

    invoke-virtual {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setInterceptor(Z)V

    .line 98
    iget-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mOnIntercept:Z

    invoke-virtual {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setOnInterceptor(Z)V

    .line 99
    iget-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mOffIntercept:Z

    invoke-virtual {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setOffInterceptor(Z)V

    .line 100
    iget v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mMaxLines:I

    invoke-virtual {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setMaxLines(I)V

    .line 101
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->getDynamicValuesUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setPreferenceDataUri(Landroid/net/Uri;)V

    .line 104
    .end local v0    # "delegator":Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;
    :cond_3
    invoke-super {p0, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setProperties(Landroid/preference/Preference;)V

    .line 105
    return-void
.end method

.method protected setValueFromCursor(Landroid/preference/Preference;Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "valueIndex"    # I

    .prologue
    .line 75
    if-ltz p3, :cond_0

    move-object v0, p1

    .line 76
    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 77
    .local v0, "pref":Landroid/preference/TwoStatePreference;
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 78
    .local v1, "value":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 80
    .end local v0    # "pref":Landroid/preference/TwoStatePreference;
    .end local v1    # "value":I
    :cond_0
    return-void

    .line 78
    .restart local v0    # "pref":Landroid/preference/TwoStatePreference;
    .restart local v1    # "value":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
