.class public Lcom/motorola/extensions/internal/PreferenceLoader;
.super Ljava/lang/Object;
.source "PreferenceLoader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getPreferenceInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 8
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v4, 0x0

    .line 22
    .local v4, "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    .line 24
    .local v3, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {p0, p1}, Lcom/motorola/extensions/internal/PreferenceLoader;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 26
    .local v1, "constructMethod":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 30
    instance-of v5, v3, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 31
    check-cast v4, Landroid/preference/Preference;

    .line 36
    return-object v4

    .line 27
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructMethod":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 33
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "constructMethod":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not an instance of Preference"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 44
    .local v0, "cmpName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 50
    :cond_0
    move-object v3, p0

    .line 51
    .local v3, "refContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 55
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {p1, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/ClassNotFoundException;

    const-string v5, "failed to load class : "

    invoke-direct {v4, v5, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
