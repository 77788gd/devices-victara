.class final enum Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
.super Ljava/lang/Enum;
.source "DynamicMenuItemDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/DynamicMenuItemDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MenuItemParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

.field public static final enum ICON:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

.field public static final enum REMOVE_IDS:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

.field public static final enum REPLACE_ID:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

.field public static final enum TITLE:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

.field public static final enum TITLE_CONDENSED:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

.field public static final enum VISIBLE:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->TITLE:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    new-instance v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v1, "TITLE_CONDENSED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->TITLE_CONDENSED:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    new-instance v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v5}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->VISIBLE:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    new-instance v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v6}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->ICON:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    new-instance v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v1, "REPLACE_ID"

    invoke-direct {v0, v1, v7}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->REPLACE_ID:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    new-instance v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    const-string v1, "REMOVE_IDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->REMOVE_IDS:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->TITLE:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->TITLE_CONDENSED:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->VISIBLE:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->ICON:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->REPLACE_ID:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->REMOVE_IDS:Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->$VALUES:[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    return-object v0
.end method

.method public static values()[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->$VALUES:[Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    invoke-virtual {v0}, [Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/extensions/DynamicMenuItemDataProvider$MenuItemParams;

    return-object v0
.end method
