.class public Lcom/motorola/extensions/internal/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static final DEFAULT_MOTO_PKG_REFERENCE:Ljava/lang/String; = "com.motorola.motosignature.app"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCallingSystemOrMotoApp(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 66
    .local v1, "pid":I
    new-instance v2, Lcom/motorola/android/internal/util/ApplicationInfoUtils;

    invoke-direct {v2, p0}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;-><init>(Landroid/content/Context;)V

    .line 67
    .local v2, "utils":Lcom/motorola/android/internal/util/ApplicationInfoUtils;
    invoke-virtual {v2, v1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getFirstPackageNamefromPID(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "callingPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 69
    const/4 v3, 0x0

    .line 71
    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public static isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 41
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 54
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 45
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v3, "com.motorola.motosignature.app"

    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    move v1, v2

    .line 54
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    goto :goto_1
.end method
