.class public Lcom/motorola/extensions/internal/DynamicPreferenceInflater;
.super Ljava/lang/Object;
.source "DynamicPreferenceInflater.java"


# static fields
.field public static final DEFAULT_PRIORITY:I = 0x0

.field public static final EXTRA_ORDER_FIRST:Ljava/lang/String; = "orderFirst"

.field public static final EXTRA_ORDER_PRIORITY:Ljava/lang/String; = "orderPriority"

.field public static final EXTRA_ORDER_REF_KEY:Ljava/lang/String; = "orderRefKey"

.field public static final XML_ATTR_AUTO_REFRESH:I = 0x17

.field public static final XML_ATTR_CLASS_NAME:I = 0x1c

.field public static final XML_ATTR_DATA_AUTHORITY:I = 0xc

.field public static final XML_ATTR_DEPENDENCY:I = 0xe

.field public static final XML_ATTR_DIALOG_ICON:I = 0x12

.field public static final XML_ATTR_DIALOG_TITLE:I = 0x11

.field public static final XML_ATTR_ENABLED:I = 0xd

.field public static final XML_ATTR_ENTRIES:I = 0xf

.field public static final XML_ATTR_ENTRY_VALUES:I = 0x10

.field public static final XML_ATTR_ICON:I = 0x7

.field public static final XML_ATTR_INTERCEPT:I = 0x18

.field public static final XML_ATTR_KEY:I = 0x3

.field public static final XML_ATTR_NEGATIVE_BUTTON_TEXT:I = 0x14

.field public static final XML_ATTR_OFF_INTERCEPT:I = 0x1a

.field public static final XML_ATTR_ON_INTERCEPT:I = 0x19

.field public static final XML_ATTR_ORDER_ABOVE:I = 0x5

.field public static final XML_ATTR_ORDER_BELOW:I = 0x6

.field public static final XML_ATTR_ORDER_FIRST:I = 0x9

.field public static final XML_ATTR_ORDER_PRIORITY:I = 0x1f

.field public static final XML_ATTR_POSITIVE_BUTTON_TEXT:I = 0x13

.field public static final XML_ATTR_REDIRECT_DEPENDENCY:I = 0x1d

.field public static final XML_ATTR_REMOVE:I = 0x8

.field public static final XML_ATTR_REPLACE:I = 0x4

.field public static final XML_ATTR_SELECTABLE:I = 0x1b

.field public static final XML_ATTR_STYLE:I = 0x16

.field public static final XML_ATTR_SUMMARY:I = 0x2

.field public static final XML_ATTR_SUMMARY_ENTRIES:I = 0x15

.field public static final XML_ATTR_SUMMARY_OFF:I = 0xb

.field public static final XML_ATTR_SUMMARY_ON:I = 0xa

.field public static final XML_ATTR_TITLE:I = 0x1

.field public static final XML_ATTR_TWO_STATE_PREF_TITLE_MAX_LINES:I = 0x1e

.field private static final XML_DYNAMIC_HEADER_TAG:Ljava/lang/String; = "dynamic-header"

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

.field mTargetContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    .line 73
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "title"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "summary"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "key"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "replace"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "orderAbove"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "orderBelow"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "icon"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "remove"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "orderFirst"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "summaryOn"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "summaryOff"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "dataAuthority"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "enabled"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "dependency"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "entries"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "entryValues"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "dialogTitle"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "dialogIcon"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "positiveButtonText"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "negativeButtonText"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "summaryEntries"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "style"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "autoRefresh"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "intercept"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "onIntercept"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "offIntercept"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "selectable"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "class"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "redirectDependencyLinkage"

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "titleMaxlines"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "orderPriority"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "targetContext"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mTargetContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 113
    return-void
.end method

.method public static getAttrCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "attrName"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v1, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getDefaultIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "in":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    return-object v0
.end method

.method public static supportsAttr(Ljava/lang/String;)Z
    .locals 1
    .param p0, "attrName"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->sAttributeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public inflate(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v2, 0x0

    .line 166
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 168
    new-instance v0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mTargetContext:Landroid/content/Context;

    invoke-direct {v0, v4, p3}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 170
    .local v0, "dynamicHeader":Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;
    invoke-direct {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->getDefaultIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->setIntent(Landroid/content/Intent;)V

    .line 171
    new-instance v3, Lcom/motorola/extensions/internal/GenericTagParser;

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/motorola/extensions/internal/GenericTagParser;-><init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 173
    .local v3, "xmlParser":Lcom/motorola/extensions/internal/GenericTagParser;
    const-string v4, "dynamic-header"

    invoke-virtual {v3, v4, v0}, Lcom/motorola/extensions/internal/GenericTagParser;->parse(Ljava/lang/String;Lcom/motorola/extensions/internal/DynamicAttrHandler;)Lcom/motorola/extensions/internal/DynamicAttrHandler;

    .line 174
    invoke-virtual {v0, p1}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->inflate(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v2, :cond_0

    .line 184
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 187
    :cond_0
    return-void

    .line 176
    .end local v0    # "dynamicHeader":Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;
    .end local v3    # "xmlParser":Lcom/motorola/extensions/internal/GenericTagParser;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Landroid/view/InflateException;

    const-string v5, "Error inflating DynamicHeader XML"

    invoke-direct {v4, v5, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 184
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v4

    .line 179
    :catch_1
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Landroid/view/InflateException;

    const-string v5, "Error inflating DynamicHeader XML"

    invoke-direct {v4, v5, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public inflate(Ljava/lang/String;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rootPreference"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 137
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-nez p2, :cond_0

    .line 138
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Host preference screen is needed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 144
    if-nez v2, :cond_2

    .line 145
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "XML resource could not be found"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating DynamicPreference XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 159
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 147
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->mTargetContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/motorola/extensions/internal/DynamicPreferenceParser;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    move-result-object v0

    .line 149
    .local v0, "dynamicPref":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    if-eqz v2, :cond_3

    .line 159
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    :cond_3
    return-void

    .line 154
    .end local v0    # "dynamicPref":Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating DynamicPreference XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
