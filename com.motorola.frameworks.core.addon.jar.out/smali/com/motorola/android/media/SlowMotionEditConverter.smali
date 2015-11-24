.class public Lcom/motorola/android/media/SlowMotionEditConverter;
.super Ljava/lang/Object;
.source "SlowMotionEditConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlowMotionEditConverter"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    const-string v1, "SlowMotionEditConverter"

    const-string v2, "Trying to load libslowmotionconverter.so"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v1, "slowmotionconverter"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 29
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 30
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "SlowMotionEditConverter"

    const-string v2, "WARNING: Could not load libslowmotionconverter.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convertToSlowMotion(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;I[I[II)Z
.end method
