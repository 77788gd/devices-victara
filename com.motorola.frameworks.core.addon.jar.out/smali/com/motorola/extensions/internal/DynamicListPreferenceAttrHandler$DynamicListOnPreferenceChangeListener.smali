.class Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;
.super Ljava/lang/Object;
.source "DynamicListPreferenceAttrHandler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicListOnPreferenceChangeListener"
.end annotation


# instance fields
.field private final mDataUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;->mDataUri:Landroid/net/Uri;

    .line 190
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 197
    .local v8, "startTime":J
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 198
    .local v11, "value":Ljava/lang/String;
    move-object/from16 v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v6, v0

    .line 199
    .local v6, "listPreference":Landroid/preference/ListPreference;
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 200
    .local v4, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 201
    .local v2, "b":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 202
    .local v7, "summaryEntries":[Ljava/lang/CharSequence;
    const-string v13, "summaryEntries"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 203
    const-string v13, "summaryEntries"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 205
    if-eqz v7, :cond_0

    array-length v13, v7

    array-length v14, v4

    if-eq v13, v14, :cond_1

    .line 207
    :cond_0
    move-object v7, v4

    .line 212
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 213
    .local v10, "updatedRows":I
    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 214
    .local v5, "index":I
    if-ltz v5, :cond_2

    array-length v13, v4

    if-ge v5, v13, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;->mDataUri:Landroid/net/Uri;

    if-eqz v13, :cond_4

    .line 216
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "value"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;->mDataUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 233
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-lez v10, :cond_5

    .line 234
    aget-object v13, v7, v5

    invoke-virtual {v6, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const/4 v13, 0x1

    .line 240
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v4    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "index":I
    .end local v6    # "listPreference":Landroid/preference/ListPreference;
    .end local v7    # "summaryEntries":[Ljava/lang/CharSequence;
    .end local v8    # "startTime":J
    .end local v10    # "updatedRows":I
    .end local v11    # "value":Ljava/lang/String;
    :goto_2
    return v13

    .line 210
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v4    # "entries":[Ljava/lang/CharSequence;
    .restart local v6    # "listPreference":Landroid/preference/ListPreference;
    .restart local v7    # "summaryEntries":[Ljava/lang/CharSequence;
    .restart local v8    # "startTime":J
    .restart local v11    # "value":Ljava/lang/String;
    :cond_3
    move-object v7, v4

    goto :goto_0

    .line 224
    .restart local v5    # "index":I
    .restart local v10    # "updatedRows":I
    :cond_4
    const/4 v10, 0x1

    goto :goto_1

    .line 237
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v4    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "index":I
    .end local v6    # "listPreference":Landroid/preference/ListPreference;
    .end local v7    # "summaryEntries":[Ljava/lang/CharSequence;
    .end local v8    # "startTime":J
    .end local v10    # "updatedRows":I
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Throwable;
    # getter for: Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Error on update"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2
.end method
