.class public Lcom/motorola/android/net/MotorolaNetworkUtilsExt;
.super Ljava/lang/Object;
.source "MotorolaNetworkUtilsExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotorolaNetworkUtilsExt"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    const-string/jumbo v1, "moto_netutil"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 27
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MotorolaNetworkUtilsExt"

    const-string v2, "WARNING: Could not load libmoto_netutil.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native setAutoIp(Ljava/lang/String;I)V
.end method
