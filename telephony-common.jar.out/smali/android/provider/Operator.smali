.class public final Landroid/provider/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Operator$1;,
        Landroid/provider/Operator$GsmOperator;,
        Landroid/provider/Operator$CdmaOperator;,
        Landroid/provider/Operator$OperatorInfoBasic;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "operatorinfo"

.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "Operator"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/provider/Operator;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Landroid/provider/Operator;->supportCurrentLanguage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static supportCurrentLanguage(Ljava/lang/String;)Z
    .locals 8
    .param p0, "languages"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 52
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "languagelist":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "defaultLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "defaultCountry":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 58
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "language":Ljava/lang/String;
    sget-boolean v5, Landroid/provider/Operator;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "Operator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "supportCurrentLanguage: language "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultCountry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "defaultLanguage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    :cond_1
    sget-boolean v5, Landroid/provider/Operator;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "Operator"

    const-string v6, "supportCurrentLanguage return true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    const/4 v5, 0x1

    .line 69
    .end local v0    # "defaultCountry":Ljava/lang/String;
    .end local v1    # "defaultLanguage":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "languagelist":[Ljava/lang/String;
    :goto_1
    return v5

    .line 55
    .restart local v0    # "defaultCountry":Ljava/lang/String;
    .restart local v1    # "defaultLanguage":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "language":Ljava/lang/String;
    .restart local v4    # "languagelist":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "defaultCountry":Ljava/lang/String;
    .end local v1    # "defaultLanguage":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "languagelist":[Ljava/lang/String;
    :cond_4
    sget-boolean v5, Landroid/provider/Operator;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "Operator"

    const-string v6, "supportCurrentLanguage return false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method
