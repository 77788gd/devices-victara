.class public final Lcom/motorola/android/media/MediaPlayerExt;
.super Ljava/lang/Object;
.source "MediaPlayerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/media/MediaPlayerExt$PlaybackRate;
    }
.end annotation


# static fields
.field private static final INVOKE_ID_SET_PLAYBACK_RATE:I = 0x64

.field private static final INVOKE_ID_SET_SLOWMOTION_RATE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "MediaPlayerExt"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    return-void
.end method


# virtual methods
.method public setPlaybackRate(I)Z
    .locals 5
    .param p1, "playback_rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v3, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 88
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 90
    .local v1, "reply":Landroid/os/Parcel;
    const/16 v3, 0x64

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v3, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    .line 96
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 96
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 102
    .end local v1    # "reply":Landroid/os/Parcel;
    .end local v2    # "request":Landroid/os/Parcel;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "setPlaybackRate called in an invalid state. Should be called only after MediaPlayer is playing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setSlowMotionRate(I)Z
    .locals 5
    .param p1, "playback_rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v3, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 117
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 119
    .local v1, "reply":Landroid/os/Parcel;
    const/16 v3, 0x65

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v3, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    .line 125
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 125
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 131
    .end local v1    # "reply":Landroid/os/Parcel;
    .end local v2    # "request":Landroid/os/Parcel;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "setSlowMotionRate called in an invalid state. Should be called only after MediaPlayer is playing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
