.class public Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;
.super Ljava/lang/Object;
.source "DynamicMenuItemDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/DynamicMenuItemDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicMenuItemData"
.end annotation


# instance fields
.field private mIconResId:I

.field private mIsVisible:Z

.field private mRemoveIds:[I

.field private mReplaceId:I

.field private mTitle:Ljava/lang/String;

.field private mTitleCondensed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mTitle:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mTitleCondensed:Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mIsVisible:Z

    .line 103
    iput v2, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mIconResId:I

    .line 105
    iput v2, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mReplaceId:I

    .line 107
    iput-object v1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mRemoveIds:[I

    .line 110
    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mIconResId:I

    return v0
.end method

.method public getRemoveIds()[I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mRemoveIds:[I

    return-object v0
.end method

.method public getReplaceId()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mReplaceId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mTitleCondensed:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mIsVisible:Z

    return v0
.end method

.method public setIconResId(I)V
    .locals 0
    .param p1, "iconResId"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mIconResId:I

    .line 142
    return-void
.end method

.method public setRemoveIds([I)V
    .locals 0
    .param p1, "removeIds"    # [I

    .prologue
    .line 157
    iput-object p1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mRemoveIds:[I

    .line 158
    return-void
.end method

.method public setReplaceId(I)V
    .locals 0
    .param p1, "replaceId"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mReplaceId:I

    .line 150
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mTitle:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTitleCondensed(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleCondensed"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mTitleCondensed:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$DynamicMenuItemData;->mIsVisible:Z

    .line 134
    return-void
.end method
