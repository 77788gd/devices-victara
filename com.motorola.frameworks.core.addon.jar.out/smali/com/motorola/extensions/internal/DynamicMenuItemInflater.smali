.class public Lcom/motorola/extensions/internal/DynamicMenuItemInflater;
.super Ljava/lang/Object;
.source "DynamicMenuItemInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;,
        Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final XML_ATTR_AUTHORITY:I = 0x9

.field private static final XML_ATTR_CATEGORY:I = 0x5

.field private static final XML_ATTR_ICON:I = 0x3

.field private static final XML_ATTR_ORDER:I = 0x4

.field private static final XML_ATTR_REMOVE:I = 0x8

.field private static final XML_ATTR_REPLACE:I = 0x7

.field private static final XML_ATTR_SHOW_AS_ACTION:I = 0x6

.field private static final XML_ATTR_TITLE:I = 0x1

.field private static final XML_ATTR_TITLE_CONDENSED:I = 0x2

.field private static final XML_DYNAMIC_MENU_ITEM_TAG:Ljava/lang/String; = "dynamic-menu-item"

.field private static sAttributeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mAttrs:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

.field mTargetContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    .line 58
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "title"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "titleCondensed"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "icon"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "orderInCategory"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "menuCategory"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "showAsAction"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "replace"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "remove"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "dataAuthority"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "targetContext"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 79
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->sAttributeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private getDefaultIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "in":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    return-object v0
.end method


# virtual methods
.method public getMetaData()Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mAttrs:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mAttrs:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

    # getter for: Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;
    invoke-static {v0}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->access$000(Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;)Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V
    .locals 5
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-nez p2, :cond_0

    .line 96
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Host preference screen is needed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 102
    new-instance v3, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

    invoke-direct {v3, p0, p1, p2}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;-><init>(Lcom/motorola/extensions/internal/DynamicMenuItemInflater;Landroid/content/Context;Landroid/view/Menu;)V

    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mAttrs:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

    .line 104
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mAttrs:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

    invoke-direct {p0}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->getDefaultIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->setIntent(Landroid/content/Intent;)V

    .line 105
    new-instance v2, Lcom/motorola/extensions/internal/GenericTagParser;

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/motorola/extensions/internal/GenericTagParser;-><init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 107
    .local v2, "xmlParser":Lcom/motorola/extensions/internal/GenericTagParser;
    const-string v3, "dynamic-menu-item"

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mAttrs:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

    invoke-virtual {v2, v3, v4}, Lcom/motorola/extensions/internal/GenericTagParser;->parse(Ljava/lang/String;Lcom/motorola/extensions/internal/DynamicAttrHandler;)Lcom/motorola/extensions/internal/DynamicAttrHandler;

    .line 108
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mAttrs:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;

    invoke-virtual {v3, p1}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->inflate(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 120
    :cond_1
    return-void

    .line 110
    .end local v2    # "xmlParser":Lcom/motorola/extensions/internal/GenericTagParser;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating DynamicPreference XML"

    invoke-direct {v3, v4, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 118
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v3

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating DynamicPreference XML"

    invoke-direct {v3, v4, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
