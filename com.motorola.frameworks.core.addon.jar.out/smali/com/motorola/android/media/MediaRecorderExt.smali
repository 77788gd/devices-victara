.class public final Lcom/motorola/android/media/MediaRecorderExt;
.super Ljava/lang/Object;
.source "MediaRecorderExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRecorderExt"


# instance fields
.field private mMediaRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 2
    .param p1, "recorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaRecorderExt should be called withvalid MediaRecorder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/media/MediaRecorderExt;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 38
    return-void
.end method


# virtual methods
.method public getMotParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 54
    .local v0, "reply":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/motorola/android/media/MediaRecorderExt;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaRecorder;->getMotParameter(Ljava/lang/String;Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setMotParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "nameValuePair"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/android/media/MediaRecorderExt;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMotParameter(Ljava/lang/String;)V

    .line 66
    return-void
.end method
